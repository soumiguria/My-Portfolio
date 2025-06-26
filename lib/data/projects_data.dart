class ProjectsData {
  final String imagePath;
  final String title;
  final String link;

  ProjectsData(
      {required this.imagePath, required this.title, required this.link});
}

const imagePath = "assets/images/projects/";

List<ProjectsData> threeDProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}ThreeD-1.jpg",
    title: "San Andreas Opening Scene",
    link: "https://www.artstation.com",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-2.jpg",
    title: "Lamborghini Aventador Design",
    link: "https://www.artstation.com",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-3.jpg",
    title: "Living Room Interior Design",
    link: "https://www.artstation.com",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-4.jpg",
    title: "Botanic Heaven",
    link: "https://www.artstation.com",
  ),
  ProjectsData(
    imagePath: "${imagePath}ThreeD-5.jpg",
    title: "Scandinavian Bedroom Scene",
    link: "https://www.artstation.com",
  ),
];

List<ProjectsData> programmingData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}UX-4.jpeg",
    title: "Hospital-Management-System",
    link: "https://github.com/soumiguria/hospital",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-3.jpeg",
    title: "ChatChat Assistant",
    link:
        "https://drive.google.com/file/d/1eG0ZhhnKSD6O8bD9lV__lj65gCcdxlOA/view?usp=sharing",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-2.jpg",
    title: "Bhakti",
    link: "https://github.com/soumiguria/Bhakti",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-1.jpg",
    title: "Innerbhakti",
    link: "https://github.com/soumiguria/innerBhakti_frontend",
  ),
];

List<ProjectsData> uxProjectData = <ProjectsData>[
  ProjectsData(
    imagePath: "${imagePath}UX-1.png",
    title: "Portfolio Website",
    link: "https://www.behance.net/gallery/123456789/Portfolio-Website",
  ),
  ProjectsData(
    imagePath: "${imagePath}UX-2.png",
    title: "E-commerce App",
    link: "https://www.behance.net/gallery/987654321/E-commerce-App",
  ),
];
