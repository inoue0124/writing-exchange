/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 40 (20 per locale)
///
/// Built on 2022-12-16 at 17:43 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	ja(languageCode: 'ja', build: _StringsJa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get correction => 'Correction';
	String get writing => 'Writing';
	String get question => 'Question';
	String get profile => 'Profile';
	String get correctionCount => 'Correction Count';
	String get reviewPoint => 'Your Rating';
	String get correctionCredit => 'Correction Credit';
	String get waitingCorrection => 'Waiting correction';
	String get alredyCorrected => 'Already corrected';
	String get correct => 'Correct';
	String get updateCorrection => 'Update correction';
	String get save => 'Save';
	String get yourComment => 'Your comment';
	String get walkthroughTitle1 => 'Write essays\n in foreign languages!';
	String get walkthroughTitle2 => 'Correct essays written in your native language!';
	String get walkthroughTitle3 => 'Ask native speakers!';
	String get walkthroughSubitle1 => 'Improve your writing skills by writing essays on various topics such as daily events, future dreams and goals, work and lifestyle.';
	String get walkthroughSubitle2 => 'Every time you correct someone else\'s essay once, your essay will be corrected once by a native speaker.';
	String get walkthroughSubitle3 => 'You can ask native speakers as many questions as you have answered other learners\' questions.';
	String questionType1({required Object phraseA, required Object phraseB}) => 'Whats the difference between ${phraseA} and ${phraseB}?';
}

// Path: <root>
class _StringsJa implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override String get correction => '??????';
	@override String get writing => '??????';
	@override String get question => '??????';
	@override String get profile => '??????????????????';
	@override String get correctionCount => '????????????';
	@override String get reviewPoint => '??????????????????';
	@override String get correctionCredit => '???????????????';
	@override String get waitingCorrection => '?????????????????????';
	@override String get alredyCorrected => '??????????????????';
	@override String get correct => '????????????';
	@override String get updateCorrection => '?????????????????????';
	@override String get save => '??????';
	@override String get yourComment => '????????????????????????';
	@override String get walkthroughTitle1 => '?????????????????????????????????';
	@override String get walkthroughTitle2 => '?????????????????????????????????????????????????????????????????????';
	@override String get walkthroughTitle3 => '????????????????????????????????????';
	@override String get walkthroughSubitle1 => '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????';
	@override String get walkthroughSubitle2 => '?????????????????????1???????????????????????????????????????????????????????????????1??????????????????????????????';
	@override String get walkthroughSubitle3 => '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????';
	@override String questionType1({required Object phraseA, required Object phraseB}) => '${phraseA}???${phraseB}???????????????????????????';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'correction': return 'Correction';
			case 'writing': return 'Writing';
			case 'question': return 'Question';
			case 'profile': return 'Profile';
			case 'correctionCount': return 'Correction Count';
			case 'reviewPoint': return 'Your Rating';
			case 'correctionCredit': return 'Correction Credit';
			case 'waitingCorrection': return 'Waiting correction';
			case 'alredyCorrected': return 'Already corrected';
			case 'correct': return 'Correct';
			case 'updateCorrection': return 'Update correction';
			case 'save': return 'Save';
			case 'yourComment': return 'Your comment';
			case 'walkthroughTitle1': return 'Write essays\n in foreign languages!';
			case 'walkthroughTitle2': return 'Correct essays written in your native language!';
			case 'walkthroughTitle3': return 'Ask native speakers!';
			case 'walkthroughSubitle1': return 'Improve your writing skills by writing essays on various topics such as daily events, future dreams and goals, work and lifestyle.';
			case 'walkthroughSubitle2': return 'Every time you correct someone else\'s essay once, your essay will be corrected once by a native speaker.';
			case 'walkthroughSubitle3': return 'You can ask native speakers as many questions as you have answered other learners\' questions.';
			case 'questionType1': return ({required Object phraseA, required Object phraseB}) => 'Whats the difference between ${phraseA} and ${phraseB}?';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'correction': return '??????';
			case 'writing': return '??????';
			case 'question': return '??????';
			case 'profile': return '??????????????????';
			case 'correctionCount': return '????????????';
			case 'reviewPoint': return '??????????????????';
			case 'correctionCredit': return '???????????????';
			case 'waitingCorrection': return '?????????????????????';
			case 'alredyCorrected': return '??????????????????';
			case 'correct': return '????????????';
			case 'updateCorrection': return '?????????????????????';
			case 'save': return '??????';
			case 'yourComment': return '????????????????????????';
			case 'walkthroughTitle1': return '?????????????????????????????????';
			case 'walkthroughTitle2': return '?????????????????????????????????????????????????????????????????????';
			case 'walkthroughTitle3': return '????????????????????????????????????';
			case 'walkthroughSubitle1': return '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????';
			case 'walkthroughSubitle2': return '?????????????????????1???????????????????????????????????????????????????????????????1??????????????????????????????';
			case 'walkthroughSubitle3': return '?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????';
			case 'questionType1': return ({required Object phraseA, required Object phraseB}) => '${phraseA}???${phraseB}???????????????????????????';
			default: return null;
		}
	}
}
