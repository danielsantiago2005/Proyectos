Generador de Contraseñas en Bash
Este proyecto es un generador de contraseñas interactivo en Bash, diseñado para crear contraseñas seguras según las preferencias del usuario. Permite elegir la longitud, incluir mayúsculas, números y caracteres especiales, y genera una contraseña aleatoria basada en esos criterios.

🚀 Características
Menú interactivo en terminal

Longitud configurable (entre 8 y 32 caracteres)

Opciones para incluir:

✔️ Mayúsculas

✔️ Números

✔️ Caracteres especiales

Validación de entradas del usuario

Generación aleatoria de contraseñas

Opción de guardar la contraseña en un archivo (contraseñas.txt)

Código simple, claro y fácil de modificar

📦 Requisitos
Este script funciona en cualquier sistema basado en Unix que tenga:

Bash

Permisos para ejecutar scripts

▶️ Cómo usarlo
Clona el repositorio:

bash
git clone https://github.com/tuusuario/tu-repo.git
Entra en el directorio:

bash
cd tu-repo
Da permisos de ejecución al script:

bash
chmod +x generador_contraseñas.sh
Ejecuta el programa:

bash
./generador_contraseñas.sh
📄 Funcionamiento
El programa muestra un menú con dos opciones:

1. Generar una contraseña
Solicita la longitud (8–32)

Pregunta si deseas incluir:

Mayúsculas

Números

Caracteres especiales

Valida que al menos un tipo de carácter esté seleccionado

Genera la contraseña aleatoria

La muestra en pantalla

La guarda en contraseñas.txt

2. Salir
Finaliza el programa.

🧩 Ejemplo de uso
Código
====Generador de Contraseñas====
 1. Generar una contraseña
 2. Salir
Elige una opción: 1
Introduzca la longitud de la contraseña (8-32): 12
¿Incluir mayúsculas? (s/n): s
¿Incluir números? (s/n): s
¿Incluir caracteres especiales? (s/n): n

🔐 Tu contraseña generada es: aB9kLmT2qWzP
📁 Archivo de salida
Las contraseñas generadas se guardan automáticamente en:

Código
contraseñas.txt
🛠️ Mejoras futuras (ideas)
Añadir opción para generar múltiples contraseñas

Mostrar nivel de seguridad de la contraseña

Permitir copiar al portapapeles automáticamente

Añadir colores al menú

📜 Licencia
Este proyecto es de uso libre. Puedes modificarlo y adaptarlo según tus necesidades.
