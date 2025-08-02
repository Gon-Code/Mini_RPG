# Mini_RPG

Mini_RPG es un pequeño proyecto por consola escrito en Ruby para practicar programación orientada a objetos (POO) y tipado estático con [Sorbet](https://sorbet.org). El juego simula un combate por turnos entre dos personajes hasta que uno es derrotado.

## Requisitos

- Ruby >= 3.2
- Bundler (`gem install bundler`)
- rbenv (opcional pero recomendado)
- Git

## Instalación

1. Clona el repositorio:

```bash
git clone git@github.com:Gon-Code/Mini_RPG.git
cd Mini_RPG
```

2. Instala las gemas:

```bash
bundle install
```

3. (Opcional) Ejecuta el chequeo de tipos con Sorbet:

```bash
bundle exec srb tc
```

## Ejecución

Para ejecutar el combate entre personajes, usa el siguiente script:

```bash
ruby bin/test_battle.rb
```

Este script simula turnos entre dos personajes (`Legolas` y `Gonzalo`) y muestra el daño causado en cada ronda. Gana el personaje cuya salud no llegue a 0.

## Objetivo del proyecto

Este proyecto busca reforzar conceptos de:

- Programación orientada a objetos
- Diseño de clases
- Tipado estático con Sorbet
- Uso de Ruby puro y entorno de desarrollo con Bundler y rbenv

Es ideal para practicar lógica de combate básica y estructuración de código Ruby limpio y tipado.

## Licencia

MIT