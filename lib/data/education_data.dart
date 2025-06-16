class EducationData {
  final String title;
  final String institution;
  final String time;
  final String description;

  EducationData(
      {required this.title,
      required this.institution,
      required this.time,
      required this.description});
}

List<EducationData> educationData = <EducationData>[
  EducationData(
    title: "B.Tech in Computer Science & Engineering",
    institution: "Netaji Subhash Engineering College, Kolkata",
    time: "Sep 2022 - present",
    description: "CGPA : 8.3 /10",
  ),
  EducationData(
    title: "Higher Secondary",
    institution: "Gokhale Memorial Girls' School, Kolkata",
    time: "Jan 2008 - Apr 2022",
    description: "Percentage : 94.4%",
  ),
];
