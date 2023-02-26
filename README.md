# devops-netology

После подготовки файла merge.sh и изменения main:
![](img/02-git-03-branching-1.png)

После добавления ветки git-rebase:
![](img/02-git-03-branching-2.png)

Во время выполнения merge была использована стратегия ort, а не recursive, как в курсе. Почему-то не работает git push. Приходится выполнять git push origin main. Результат:
![](img/02-git-03-branching-3.png)

Картинка немного поменялась. Из-за ошибки во время rebase пришлось пересоздать ветку:
![](img/02-git-03-branching-4.png)

После выполнения rebase получился следующий результат. Есть подозрение, что должно быть не так. Поэтому повторю все действия по новой.
![](img/02-git-03-branching-5.png)

Начал выполнять по новой:
![](img/02-git-03-branching-6.png)
![](img/02-git-03-branching-7.png)
![](img/02-git-03-branching-8.png)
После выполнения rebase:
![](img/02-git-03-branching-9.png)
После выполнения merge:
![](img/02-git-03-branching-10.png)