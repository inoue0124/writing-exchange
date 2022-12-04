import 'package:flutter/material.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({
    super.key,
    required this.title,
    required this.body,
    required this.imageUrls,
    required this.correctedCount,
    required this.editButtonTitle,
    required this.onPressEdit,
  });

  final String title;
  final String body;
  final List<String> imageUrls;
  final int correctedCount;
  final String editButtonTitle;
  final Function() onPressEdit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          imageUrls.isNotEmpty
              ? imageUrls.length == 1
                  ? SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Image.network(imageUrls[0], fit: BoxFit.cover),
                    )
                  : SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageUrls.length,
                        itemBuilder: (context, index) {
                          return Image.network(
                            imageUrls[index],
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    body,
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Theme.of(context).primaryColor,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Text(
                          correctedCount.toString(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: onPressEdit,
                      child: Text(editButtonTitle),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
