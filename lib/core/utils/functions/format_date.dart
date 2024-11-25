String formatDate(DateTime date) {
  final String formatedDate =
      date.toString().split(' ')[0].replaceAll('-', ' | ');
  return formatedDate;
}
