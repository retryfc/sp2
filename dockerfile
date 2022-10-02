FROM ubuntu
COPY pdv1.asm pdv1.asm
RUN apt-get update -y
RUN apt-get install -y nasm
RUN apt-get install -y gcc-multilib
RUN nasm -g -f elf64 -F dwarf pdv1.asm
RUN ld pdv1.o -o pdv1
CMD ./pdv1