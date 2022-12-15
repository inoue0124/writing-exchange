import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:writing_exchange/app/service/auth_service.dart';
import 'package:writing_exchange/app/utils/app_exception.dart';
import 'package:writing_exchange/app/utils/providers.dart';
import 'package:writing_exchange/data/model/correction_ticket.dart';
import 'package:writing_exchange/data/repository/firestore_refs.dart';

abstract class CorrectionTicketRepositoryInterface {
  Future<CorrectionTicket> getMine();
  Future<void> createNew();
}

class CorrectionTicketRepository
    implements CorrectionTicketRepositoryInterface {
  final Ref _ref;
  const CorrectionTicketRepository(
    this._ref, {
    required AuthServiceInterface authService,
  }) : _authService = authService;
  final AuthServiceInterface _authService;

  @override
  Future<CorrectionTicket> getMine() async {
    try {
      final userId = await _authService.getUserId();
      final snaps = await _ref
          .read(firebaseFirestoreProvider)
          .correctionTicketsRef()
          .where('userId', isEqualTo: userId)
          .limit(1)
          .get();
      if (snaps.docs.isEmpty) throw NotFoundCorrectionTicketsException();
      return CorrectionTicket.fromJson(snaps.docs[0].data());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createNew() async {
    try {
      final userId = await _authService.getUserId();
      final correctionTicket = CorrectionTicket(userId: userId);
      await _ref
          .read(firebaseFirestoreProvider)
          .correctionTicketsRef()
          .doc()
          .set(
        {
          ...correctionTicket.toJson(),
          'updatedAt': FieldValue.serverTimestamp(),
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}

final correctionTicketRepositoryProvider =
    Provider<CorrectionTicketRepositoryInterface>(
  (ref) => CorrectionTicketRepository(
    ref,
    authService: ref.read(authServiceProvider),
  ),
);
