# Домашнее задание к занятию "7.2"

### Вывод команды terraform workspace list

![](./img/20.jpg)

### Вывод команды terraform plan для воркспейса prod

![](./img/21.jpg)
![](./img/22.jpg)
![](./img/23.jpg)
![](./img/24.jpg)
![](./img/25.jpg)
![](./img/26.jpg)
![](./img/27.jpg)


### [Ссылка на содержимое фалов terraform](./terraform_project)

### Созданные машины

![](./img/19.jpg)

### Зависимость инстанса от воркспейса

Раздел locals:

![](./img/39.jpg)

Ресурс виртуальной машины:

![](./img/40.jpg)

![](./img/41.jpg)

### Указание количества экземпляров

Раздел locals:

![](./img/33.jpg)

Указание количества в ресурсе виртуальной машины:

![](./img/34.jpg)

### Подсети

Описание сети в ресурсе ВМ:

![](./img/35.jpg)

Ресурс сети с указанием диапазона адресов в зависимости от инстанса:

![](./img/36.jpg)

Маска подсети не указана, но распределение адресов соблюдено.

Раздел locals:

![](./img/37.jpg)

Список сетей в VMware Cloud Director:

![](./img/38.jpg)

Не получается выполнить terraform apply за один раз. Первое выполнение завершается ошибкой, но вторая попытка 
удается. Та же история с terraform destroy.

![](./img/29.jpg)

### Увеличение диска

Скрипт, увеличивающий объем диска:

![](./img/31.jpg)

Указание нового объема диска:

![](./img/32.jpg)

Если оставить у stage объем неизменным, то, вероятно, скрипт завершается с ошибкой, потому что в таком 
случае не удается авторизоваться в системе. Правильнее было бы добавить два разных скрипта, которые выполнялись бы
в зависимости от воркспейса, а не менять размер диска у stage.


### Добавление пользователя

Так и не удалось добавить пользователя через код. 

Пользователи после создания ВМ:

![](./img/48.jpg)

Хотя данные отображаются в плане:

![](./img/42.jpg)

И до них можно добраться из самой машины:

![](./img/43.jpg)

Были использованы различные варианты конфига, но ни один не привел к созданию пользователя, например:

Вариант 1:

![](./img/44.jpg)

Вариант 2:

![](./img/45.jpg)

Вариант 3:

![](./img/46.jpg)

Вариант 4:

![](./img/47.jpg)


### Outputs

![](./img/28.jpg)

Вывод:

![](./img/30.jpg)

### SSH

Не удавалось создать виртуальную машину в созданной сети. Ни из терраформа, ни через vmware cloud director.

Поэтому создал новую сеть:

![](./img/57.jpg)

Изменил конфигурацию сети:

![](./img/58.jpg)

Создал машину:

![](./img/50.jpg)

Изменил конфигурацию NAT:

![](./img/51.jpg)

Изменил конфигурацию ssh на созданной машине:

![](./img/52.jpg)

Перезапустил сервис ssh:

![](./img/53.jpg)

Проверил доступность выделенного ip адреса с хоста:

![](./img/56.jpg)

Подключился по ssh с хоста:

![](./img/54.jpg)

Причем нужно указать расположение приватного ключа, иначе просит пароль:

![](./img/55.jpg)




