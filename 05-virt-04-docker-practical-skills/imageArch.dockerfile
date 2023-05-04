FROM archlinux:latest

RUN pacman -Suy #update packages and OS

RUN pacman -S --noconfirm ponysay #install ponysay 

ENTRYPOINT ["ponysay"]

CMD ["Hey, netology”]