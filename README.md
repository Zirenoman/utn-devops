# UTN DevOps - Unidad 2: Docker


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

Este comando crea la VM, instala Docker y levanta los contenedores que le definimos en `docker-compose.yml`.

3. Acceder a la aplicación desde el navegador del host:

```
http://localhost:8080
```

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
