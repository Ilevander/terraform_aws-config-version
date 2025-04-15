!! NB: !!
=========
Il se peut que vous allez rencontrer un problème lier au push de votre IaC au SCM après avoir appliquer init , plan , applay , cela genère un fichier .terraform/ qui est très volumineu , chose qui pourra empécher la push d'IaC à notre branch même après le destroy des resource à l'aide de terraform.

La solution est très simple , essayer de créer manuellement un fichier .gitignore , ajouter l'à-dessus en écrivant .terraform/ commiter l'changet pusher le en --force , si ça persiste àa pourra être lié aussi au .env qu'on doit vider son cache après m'authentification sur AWS via terraform , commiter cela aussi et pusher cette commit au branch , et ça va marcher ;)

C'est bien! Non ? :)

![1](https://github.com/user-attachments/assets/a1ef6778-345d-435c-a605-e85ae14029f1)

![2](https://github.com/user-attachments/assets/632559eb-be03-4d86-99fc-88a8d4907b2f)

![3](https://github.com/user-attachments/assets/110902d1-3478-46b1-bebb-fd8c4bf14148)

![4](https://github.com/user-attachments/assets/d9c8a233-4712-4d5d-825e-dd141df5dcfe)

![5](https://github.com/user-attachments/assets/979edb45-0973-4011-af2a-dd47d8614f0f)

![6](https://github.com/user-attachments/assets/4a7da17d-c256-462f-8f10-f3ae2d7ce2b3)

![7](https://github.com/user-attachments/assets/849ff72d-545d-49bd-846c-3c61edfbe06a)
