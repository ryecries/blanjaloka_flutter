class NotifikasiData {
  final String titleMsg;
  final String subtitleMsg;
  final String date;

  NotifikasiData({
    required this.titleMsg,
    required this.subtitleMsg,
    required this.date,
  });
}

List<NotifikasiData> notifikasiData = [
  NotifikasiData(
    titleMsg: '1 Pesan Baru ✉',
    subtitleMsg:
        'Anda mendapatkan pesan baru dari Customer Ahmad Rian, klik di sini untuk melihat pesan',
    date: '14 Sep',
  ),
  NotifikasiData(
    titleMsg: 'Pesanan Baru Dibatalkan 😢',
    subtitleMsg: 'Sayang sekali pesanan baru dibatalkan oleh Customer',
    date: '16 Sep',
  ),
  NotifikasiData(
    titleMsg: 'Pesanan Selesai ✔',
    subtitleMsg:
        'Pesanan Customer dengan ID # 1234567 telah diterima oleh Customer',
    date: '20 Sep',
  ),
  NotifikasiData(
    titleMsg: 'Pesanan Selesai ✔',
    subtitleMsg:
        'Pesanan Customer dengan ID # 1234567 telah diterima oleh Customer',
    date: '20 Sep',
  )
];
