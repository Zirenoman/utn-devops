# UTN DevOps - Unidad 2: Docker

Este proyecto forma parte de la materia DevOps de UTN y corresponde a la Unidad 2, donde se busca desplegar una aplicación web y una base de datos en contenedores Docker, corriendo sobre una VM provisionada con Vagrant.

## Objetivo

El objetivo de esta práctica es:
- Crear dos contenedores: uno con un servidor web y otro con una base de datos.
- Visualizar datos almacenados en la base de datos desde la aplicación web.
- Hacer accesible la aplicación desde el navegador del host usando el puerto 8080.

## Estructura del Proyecto

```
utn-devops/
├── unidad-2-docker/
│   ├── Dockerfile
│   ├── docker-compose.yml
│   ├── .env
│   ├── app/ (código de la aplicación web)
│   └── Vagrant.bootstrap.sh
├── Vagrantfile
└── README.md
```

## Requisitos

- Vagrant
- VirtualBox
- Git

## Instalación

1. Clonar el repositorio y cambiar al branch correcto:

```bash
git clone https://github.com/Zirenoman/utn-devops.git
cd utn-devops
git checkout unidad-2-docker
```

2. Levantar la máquina virtual con Vagrant:

```bash
vagrant up
```

Este comando creará la VM, instalará Docker y levantará los contenedores definidos en `docker-compose.yml`.

3. Acceder a la aplicación desde el navegador del host:

```
http://localhost:8080
```

## Contenido que muestra la app

La aplicación web hace una consulta a la base de datos `devops_app` y lista usuarios con su correo electrónico. Los usuarios precargados son:

- juan@utn.com
- lionel@utn.com
- francis@utn.com

## Captura esperada

La siguiente imagen muestra el resultado esperado al acceder a la app desde el navegador:

![Captura](./unidad-2-docker/captura-navegador.png)

## Comandos útiles

```bash
# Dentro de la VM
vagrant ssh

# Ver contenedores Docker
docker ps

# Reconstruir los contenedores
cd /vagrant/unidad-2-docker
docker compose down
docker compose up -d --build
```

## Repositorio

- Proyecto: https://github.com/Zirenoman/utn-devops.git
- Branch: `unidad-2-docker`
- Aplicación web: muestra una lista de usuarios cargados en MySQL desde un contenedor PHP Apache

---

Realizado para la cátedra DevOps - UTN