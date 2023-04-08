part of cloud;

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _title(),
        const SizedBox(width: 10),
        _emoji(),
        const Spacer(),
        SearchButton(onPressed: () {})
      ],
    );
  }

  Widget _title() {
    return const Text('My Cloud', style: TextStyle(fontSize: 20));
  }

  Widget _emoji() {
    return SizedBox(
      width: 20,
      child: Image.asset(ImageRaster.wavingHandEmoji),
    );
  }
}
