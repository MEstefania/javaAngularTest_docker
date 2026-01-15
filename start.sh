#!/bin/bash

# Iniciar el backend de Java en segundo plano
cd /srv/aplicaciones/backend
java -jar Backend.jar &

# Esperar un poco para que el backend inicie
sleep 5

# Iniciar Nginx en primer plano
nginx -g 'daemon off;'