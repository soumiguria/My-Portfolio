class ExperienceData {
  final String title;
  final String time;
  final String description;

  ExperienceData(
      {required this.title, required this.time, required this.description});
}

List<ExperienceData> experienceData = <ExperienceData>[
  ExperienceData(
    title: "Software Developer Intern| Crewbella Ecosystems Pvt. Ltd. ",
    time: "Jan 2025 - Present",
    description:
        "Developed and maintained scalable APIs and backend logic using Express.js and Node.js.\nCollaborated in debugging and optimizing real-time features across distributed systems.\nSuggested architectural improvements for data synchronization between client and server.",
  ),
  ExperienceData(
    title: "Flutter Developer Intern | Pyramid Developers",
    time: "Jan 2024 - May 2024",
    description:
        "Implemented backend connectivity features and optimized data flows using AWS Amplify and RESTful APIs.\nWorked on Bluetooth integrations and real-time data handling in mobile systems\nImproved application performance and usability, increasing engagement by 40%.",
  ),
];
