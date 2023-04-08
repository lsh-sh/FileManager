part of home;

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.user}) : super(key: key);

  final _User user;

  final double _maxWidthForUsername = 200;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(),
            const SizedBox(height: 5),
            Row(
              children: [_subtitle(), const SizedBox(width: 10), _emoji()],
            )
          ],
        )),
        const SizedBox(width: kDefaultSpacing),
        SearchButton(onPressed: () {})
      ],
    );
  }

  Widget _title() {
    return const Text('Good Morning', style: TextStyle(fontSize: 20));
  }

  Widget _subtitle() {
    return Container(
      constraints: BoxConstraints(maxWidth: _maxWidthForUsername),
      child: Text(user.name.capitalizeFirst ?? 'Testing',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20)),
    );
  }

  Widget _emoji() {
    return SizedBox(
      width: 20,
      child: Image.asset(ImageRaster.wavingHandEmoji),
    );
  }
}
