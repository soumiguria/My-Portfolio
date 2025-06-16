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
    certificateGiver: "nptel.png", 
    certificateTopic: "ml.png", 
    title: "Introduction to Machine Learning", 
    certificateAuthority: "NPTEL", 
    validityDate: "September 2023",
    link: "https://drive.google.com/file/d/1jq07wHPQRGWOyLd0gBExyfhit1_leWYO/view?usp=drivesdk"
  ),
  CertificateData(
    certificateGiver: "nptel.png", 
    certificateTopic: "dbms.png", 
    title: "Introduction to DBMS", 
    certificateAuthority: "NPTEL", 
    validityDate: "March 2024",
    link: "https://drive.google.com/file/d/1jrYcfN2mQWI21oU0Dm1Rt9M8L9sVvIiI/view?usp=drivesdk"
  ),
  CertificateData(
    certificateGiver: "coincent.png", 
    certificateTopic: "ml.png", 
    title: "Introduction to AI with Python", 
    certificateAuthority: "Coincent AI", 
    validityDate: "July 2022",
    link: "https://drive.google.com/file/d/12Ixc8DnALwKf6ZBeWi9C7ZEE7cs7mRPk/view?usp=drivesdk"
  ),
  CertificateData(
    certificateGiver: "udemy.png", 
    certificateTopic: "python.png", 
    title: "Introduction to Python Programming", 
    certificateAuthority: "Udemy", 
    validityDate: "September 2023",
    link: "https://drive.google.com/file/d/1kmVxHLMYstTKQErSNdWgRJ5tF4geI9fj/view?usp=drivesdk"
  ),
  CertificateData(
    certificateGiver: "hackerrank.png", 
    certificateTopic: "python.png", 
    title: "Python (Basic)", 
    certificateAuthority: "HackerRank", 
    validityDate: "October 2024",
    link: "https://www.hackerrank.com/certificates/b51806d7087d"
  ),
  CertificateData(
    certificateGiver: "hackerrank.png", 
    certificateTopic: "mysql.png", 
    title: "MySQL (Basic)", 
    certificateAuthority: "HackerRank", 
    validityDate: "October 2024",
    link: "https://www.hackerrank.com/certificates/1cc594b71081"
  )
];
