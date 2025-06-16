class CertificateData {
  final String certificateGiver;
  final String certificateTopic;
  final String title;
  final String certificateAuthority;
  final String validityDate;
  final String link;

  CertificateData({
    required this.certificateGiver,
    required this.certificateTopic,
    required this.title,
    required this.certificateAuthority,
    required this.validityDate,
    required this.link,
  });
}

List<CertificateData> certificateData = <CertificateData>[
  CertificateData(
      certificateGiver: "udemy.png",
      certificateTopic: "python.png",
      title: "Introduction to Python Programming",
      certificateAuthority: "Udemy",
      validityDate: "September 2023",
      link:
          "https://www.udemy.com/certificate/UC-b79c9c19-6468-41b2-b35f-d94fa4625799/"),
];
