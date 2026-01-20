#!/bin/bash

archivo="contraseñas.txt"

while true; do
    echo "====Generador de Contraseñas===="
    echo " 1. Generar una contraseña"
    echo " 2. Salir" 
    read -p "Elige una opción: " opcion

    case $opcion in 
        1)
        # Pedir al usuario la longitud de su contraseña 
            read -p "Introduzca la longitud de la contraseña (8-32): " longitud
            if [[ ! $longitud =~ ^[0-9]+$ ]] || [[  $longitud -lt 8 ]] || [[ $longitud -gt 32 ]]; then
                echo "Error, introduzca un número válido (8-32)"
                continue
            fi
# Preguntar al usuario los caracteres que quiere meter en su contraseña
            read -rp "¿Incluir mayúsculas? (s/n): " mayusculas
            read -rp "¿Incluir números? (s/n): " numeros
            read -rp "¿Incluir caracteres especiales? (s/n): " especiales

# Validar la selección de al menos un tipo de caracter

        if [[ $mayusculas != "s" && $numeros != "s" && $especiales != "s"  ]]; then
            echo "Error. Debes incluir al menos un tipo de caracter"

            continue
        fi

        # Generar conjuntos de contraseñas 

        minusculas="abcdefghijklmnñopqrstuvwxyz"
        caracteres=$minusculas

        if [[ $mayusculas == "s" ]]; then
            caracteres+="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
        fi

        if [[ $numeros == "s" ]]; then
            caracteres+="0123456789"
        fi

        if [[ $especiales == "s" ]]; then
            caracteres+="!@#$%&/()-_;:.,^*[]{}¿?'¡"
        fi

    # Generar la contraseña

        password=""
        for (( i =0 ; i < $longitud; i++ )); do
    # Seleccionar un caracter aleatorio

         rand=$((RANDOM % ${#caracteres}))
         password+="${caracteres:$rand:1}"
         done
    
        echo "🔐 Tu contraseña generada es: $password"

        echo "$password >> $archivo"
        sleep 3
        ;;

        2)
        echo "Saliendo del Generador de contraseñas..."
        exit 0 
        ;;

        *)
        echo "Opción no válida, porfavor introduzca una opción del 1 al 2"
        ;;
    esac 
done
