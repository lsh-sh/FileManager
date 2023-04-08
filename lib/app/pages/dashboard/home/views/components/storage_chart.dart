part of home;

class _StorageChart extends StatelessWidget {
  const _StorageChart({Key? key, required this.usage, this.radius = 200})
      : super(key: key);

  final double radius;
  final _Usage usage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
            percent: getUsedPercent() / 100,
            animation: true,
            lineWidth: 25,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_percentText(), _subtitle('used')],
            ),
            backgroundColor: Colors.grey[300]!,
            progressColor: Theme.of(context).primaryColor,
            circularStrokeCap: CircularStrokeCap.round,
            radius: radius),
        const SizedBox(height: kDefaultSpacing),
        Row(
          children: [
            const Spacer(),
            Flexible(
                child: _indicatorUsage(
                    color: Colors.grey[300]!,
                    title: filesize(usage.totalFree, 0),
                    subtitle: 'free')),
            Flexible(
                child: _indicatorUsage(
                    color: Theme.of(context).primaryColor,
                    title: filesize(usage.totalUsed, 0),
                    subtitle: 'used')),
            const Spacer(),
          ],
        )
      ],
    );
  }

  Widget _indicatorUsage(
      {required Color color, required String title, required String subtitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 8,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(subtitle, style: Theme.of(Get.context!).textTheme.bodySmall),
          ],
        )
      ],
    );
  }

  Widget _percentText() {
    return Text('${getUsedPercent().toInt()}%',
        style: TextStyle(
            fontSize: 25, color: Theme.of(Get.context!).primaryColor));
  }

  Widget _subtitle(String text) {
    return Text(text,
        style:
            Theme.of(Get.context!).textTheme.bodySmall?.copyWith(fontSize: 14));
  }

  // 获取已使用空间占总空间的比例
  double getUsedPercent() {
    int _maxStorage = usage.totalUsed + usage.totalFree;
    return (usage.totalUsed / _maxStorage) * 100;
  }
}
