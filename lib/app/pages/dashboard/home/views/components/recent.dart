part of home;

class _Rect extends StatelessWidget {
  const _Rect({Key? key, required this.data}) : super(key: key);

  final List<FileDetail> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderText('Recent'),
          const SizedBox(height: kDefaultSpacing),
          ...data.map((e) => FileListButton(data: e, onPressed: () {})).toList()
        ],
      ),
    );
  }
}
