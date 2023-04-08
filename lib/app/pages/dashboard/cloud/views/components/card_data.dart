part of cloud;

class _CardData extends StatelessWidget {
  const _CardData({Key? key, required this.folderData}) : super(key: key);

  final List<_FolderData> folderData;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: folderData
            .map((e) => Padding(
                padding: const EdgeInsets.all(10),
                child: CardFolder(
                    label: e.label,
                    totalItem: e.totalItem,
                    fileType: e.fileType)))
            .toList());
  }
}
