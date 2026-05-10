class NapisNotifModel {
  final String judul;
  final int id;
  final String pesan;
  final String sender;
  bool isRead = false;

  NapisNotifModel({
    required this.judul,
    required this.id,
    required this.pesan,
    required this.sender,
    required this.isRead,
  });
}
