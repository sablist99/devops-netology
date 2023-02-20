# devops-netology
В каталоге Terraform будем игнорировать файлы:
- состояний
- логов падений
- с конфиденциальными данными
- переопределения (?)
- конфигурации CLI

Будем игнорировать содержимое каталога ".terraform", где бы он не находился:
**/.terraform/*

В текущем каталоге будем игнорировать:
- файлы с расширением ".tfstate" (или если расширение начинается на ".tfstate"):
*.tfstate
*.tfstate.*

- файл "crash.log" и файлы, которые начинаются на "crash." и заканчиваются на ".log":
crash.log
crash.*.log

- файлы с расширением ".tfvars" и ".tfvars.json"
*.tfvars
*.tfvars.json

- файлы "override.tf", "override.tf.json" и файлы, заканчивающиеся на "_override.tf" и "_override.tf.json":
override.tf
override.tf.json
*_override.tf
*_override.tf.json

- файлы ".terraformrc" и "terraform.rc":
.terraformrc
terraform.rc