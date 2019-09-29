alias ProjectManagementApi.Repo
alias ProjectManagementApi.Management.Project

Repo.insert! %Project{
  title: "Super cool project",
  description: "This project is the best project ever"
}

Repo.insert! %Project{
  title: "Kinda cool project",
  description: "This project is the best known for being moderately cool and not at all awesopme"
}

Repo.insert! %Project{
  title: "Lamest project",
  description: "This project is the worst. If you are on this project, you did something wrong"
}