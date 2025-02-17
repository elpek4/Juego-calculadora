#!/bin/bash
clear
echo "𝓯𝓻𝓮𝓪𝓴𝔂 𝓪𝓱𝓱 𝓬𝓪𝓵𝓬𝓾𝓵𝓪𝓭𝓸𝓻𝓪 𝓳𝓾𝓮𝓰𝓸"
echo "1) dificil"
echo "2) normal"
echo "3) facil"
echo
read -p "Elije la dificultad: " tu
read -p "Escribe tu nombre: " nombre
echo
arma="+"
dinero="0"
otro=""

if [[ "$tu" = [1-4] ]]; then
   echo "personaje elegido, este de abajo serás tú:"
   echo "$tu$arma $nombre"
   echo "$dinero monedas"
   sleep 2
   if [ "$tu" = "4" ]; then
      clear
      echo "bro eligió el 4"
      sleep 2
      echo "elpek4 easter egg"
      sleep 2
   fi
   if [ "$nombre" = "nyako" ]; then
      clear
      echo "que? no, ese nombre está ocupado"
      sleep 3
      nombre="tonto"
   fi
else
   echo "no has elegido la dificultad"
   sleep 2
   exit
fi

if [ -z "$nombre" ]; then
   echo "tu nombre está vacio"
   exit
fi

if [[ "$nombre" == *" "* ]]; then
   echo "tu nombre tiene mas de una palabra"
   exit
fi

clear
#----------------opciones----------------#
cofre() {
    clear
    objetorandom=$(( RANDOM % 20 + 1 ))
    if [ "$objetorandom" = "1" ]; then
       echo "encontraste una mierda"
       if [ "$tu" = "3" ]; then
         echo "tu personaje es un culo así que"
         echo "3 + mierda = 100"
         tu="100"
       fi
    elif [ "$objetorandom" = "2" ]; then
       echo "encontraste un palo con caca y pegamento"
       arma="/"
    elif [ "$objetorandom" = "3" ]; then
       echo "encontraste una moneda"
       dinero=$((dinero+1))
    elif [ "$objetorandom" = "4" ]; then
       echo "encontraste dos monedas"
       dinero=$((dinero+2))
    elif [ "$objetorandom" = "5" ]; then
       echo "encontraste tres monedas"
       dinero=$((dinero+3))
    elif [ "$objetorandom" = "6" ]; then
       echo "encontraste una moneda (falsa)"
    elif [ "$objetorandom" = "7" ]; then
       echo "encontraste una pelusa"
    elif [ "$objetorandom" = "8" ]; then
       echo "encontraste una poción magica"
       echo "tus puntos se duplican"
       tu=$(($tu * "2"))
    elif [ "$objetorandom" = "9" ]; then
       echo "encontraste una patata muy rica"
       echo "se te suman 5 puntos"
       tu=$(($tu + "5"))
    elif [ "$objetorandom" = "10" ]; then
       echo "encontraste una rata"
       echo "te ha mordido! 5 puntos menos :("
       tu=$(($tu - "5"))
    elif [ "$objetorandom" = "11"  ]; then
       echo "encontraste una espada"
       arma="*"
    elif [ "$objetorandom" = "12" ]; then
       echo "encontraste cuatro monedas"
       dinero=$((dinero+4))
    elif [ "$objetorandom" = "13" ]; then
       echo "encontraste cinco monedas"
       dinero=$((dinero+5))
    elif [ "$objetorandom" = "14" ]; then
       echo "encontraste seis monedas"
       dinero=$((dinero+6))
    elif [ "$objetorandom" = "15" ]; then
       echo "encontraste siete monedas"
       dinero=$((dinero+7))
    elif [ "$objetorandom" = "16" ]; then
       echo "encontraste dos moscas"
    elif [ "$objetorandom" -ge "16" ] && [ "$objetorandom" -lt "21" ]; then
       echo "no había nada"
    fi
    echo "$tu$arma $otro $nombre"
    echo "$dinero monedas"
    sleep 3
}

enemigos() {
   clear
   enemigorandom=$(( RANDOM % 5 + 1 ))
    if [ "$enemigorandom" = "1" ]; then
       echo "encontraste una serpiente (5)"
       sleep 2
       clear
       echo "$tu$arma""5"
       sleep 2
       clear
       tu=$(($tu $arma "5"))
    elif [ "$enemigorandom" = "2" ]; then
       echo "encontraste a un vampiro refugiado de la luz (4)"
       sleep 2
       clear
       echo "$tu$arma""4"
       sleep 2
       echo "el vampiro tenía una moneda"
       sleep 2
       dinero=$(($dinero + "1"))
       clear
       tu=$(($tu $arma "4"))
    elif [ "$enemigorandom" = "3" ]; then
       echo "encontraste un culo maligno (3)"
       sleep 2
       clear
       echo "$tu$arma""3"
       sleep 2
       echo "el culo tenía dentro dos monedas"
       sleep 2
       dinero=$(($dinero + "2"))
       clear
       tu=$(($tu $arma "3"))
    elif [ "$enemigorandom" = "4" ]; then
       echo "encontraste una mujer (2), matala"
       sleep 2
       clear
       echo "$tu$arma""2"
       sleep 2
       echo "la mujer tenía tres monedas"
       sleep 2
       dinero=$(($dinero + "3"))
       clear
       tu=$(($tu $arma "2"))
    elif [ "$enemigorandom" = "5" ]; then
       echo "encontraste un duende (1)"
       sleep 2
       clear
       echo "$tu$arma""1"
       sleep 2
       echo "el duende tenía siete monedas"
       sleep 2
       dinero=$(($dinero + "7"))
       clear
       tu=$(($tu $arma "1"))
    fi
    echo "$tu$arma $otro $nombre"
    echo "$dinero monedas"
    sleep 3
}

bosque() {
   clear
   echo "caminas por el bosque"
   sleep 2
   bosquerandom=$(( RANDOM % 6 + 1 ))
    if [ "$bosquerandom" = "1" ]; then
       echo "no hay nada en el bosque"
       echo "$tu$arma $otro $nombre"
       echo "$dinero monedas"
       sleep 3
    elif [ "$bosquerandom" = "2" ]; then
       echo "hay un enemigo!"
       sleep 2
       enemigos
    elif [ "$bosquerandom" = "3" ]; then
       echo "encontraste un saco de dinero"
       sleep 2
       dinerorandom=$(( RANDOM % 7 + 3 ))
       echo "el saco tiene $dinerorandom monedas!"
       sleep 2
       dinero=$(($dinero + $dinerorandom))
       clear
       echo "$tu$arma $otro $nombre"
       echo "$dinero monedas"
       sleep 3
    elif [ "$bosquerandom" = "6" ]; then
       echo "ves a nyako paseando"
       sleep 2
       echo "a) si"
       echo "b) no"
       read -p "quieres acariciarlo? " miau
       if [ "$miau" = "a" ]; then
          echo "miau"
          otro="nyako"
          echo "$tu$arma $otro $nombre"
          echo "$dinero monedas"
       fi
       sleep 2
    elif [ "$bosquerandom" = "4" ]; then
       echo "ves una 01110010 01100001 01110100 01100001"
       echo "muy agresiva al fondo"
       sleep 2
       echo "a) pelear"
       echo "b) huir"
       read -p "quieres pelear contra ella? " pelea
       sleep 2
       if [ "$pelea" = "a" ]; then
          pelearandom=$(( RANDOM % 2 + 1 ))
          if [ "$pelearandom" = "1" ]; then
             echo "la mataste! que miedo, que era eso?"
             sleep 2
             echo "tus puntos se veintiplicado"
             tu=$(($tu * "20"))
             sleep 2
          elif [ "$pelearandom" = "2" ]; then
             echo "te ha mordido!"
             sleep 2
             echo "tus puntos han sido divididos entre 20"
             tu=$(($tu / "20"))
             sleep 2
          else
            clear
            sleep 2
            echo "que?"
            sleep 2
            echo "te entró un ataque al corazón, causas muy naturales"
            sleep 3
            exit
          fi
       elif [ "$pelea" = "b" ]; then
          echo "huiste!"
          sleep 2
       fi
       clear
       echo "$tu$arma $otro $nombre"
       echo "$dinero monedas"
       sleep 2
    elif [ "$bosquerandom" = "5" ]; then
       echo "ves una rata"
       echo "muy agresiva al fondo"
       sleep 2
       echo "a) pelear"
       echo "b) huir"
       read -p "quieres pelear contra ella? " pelea
       sleep 2
       if [ "$pelea" = "a" ]; then
          pelearandom=$(( RANDOM % 2 + 1 ))
          if [ "$pelearandom" = "1" ]; then
             echo "la mataste!"
             sleep 2
             echo "tus puntos se duplicaron"
             tu=$(($tu * "2"))
             sleep 2
          elif [ "$pelearandom" = "2" ]; then
             echo "te ha mordido!"
             sleep 2
             echo "tus puntos han sido divididos entre 2"
             tu=$(($tu / "2"))
             sleep 2
          else
            clear
            sleep 2
            echo "que?"
            sleep 2
            echo "te entró un ataque al corazón, causas muy naturales"
            sleep 3
            exit
          fi
       elif [ "$pelea" = "b" ]; then
          echo "huiste!"
          sleep 2
       fi
       clear
       echo "$tu$arma $otro $nombre"
       echo "$dinero monedas"
       sleep 2
    fi
}

tienda() {
   while [ "$compra" != "f" ]; do
      clear
      echo ":...:.:::..:-...@@@#@##%=+...........--::=:::"
      echo ":...:.:::.....@@@@#@@#@#@@#.............::-+-" 
      echo "**:.:.....::.@@-::---------@.:..:.:...-::==::"
      echo "....::.......%@-<0>---<0>---0:....:.:.:......"
      echo ":..........:@--:----7-------=::...--=-:::...."
      echo ".:...:.::::::@-=+--____-----@%.:.::----::=-:."
      echo ":............@=*+---------=-@.:::::-=-=::-:::"
      echo "..::::..:..::@@-----------@@-+-#:.....:-=--:."
      echo ".:::::::.:::::@@=-=-*:--:@..........=:::.++:."
      echo ".....=:::....╔╦╗╦╔═╗╔╗╔╔╦╗╔═╗.......=:::....."
      echo "......=::.... ║ ║║╣ ║║║ ║║╠═╣.......=:::....."
      echo "....:..=::... ╩ ╩╚═╝╝╚╝═╩╝╩ ╩.....:..=:::...."
      echo
      echo "a) espada (*)            (10 monedas)"
      echo "b) escudo ([])            (5 monedas)"
      echo "c) armadura de 𝖙𝖆𝖓 (+15) (3 monedas)"
      echo "d) armadura de 𝖈𝖔𝖘 (+10) (2 monedas)"
      echo "e) armadura de 𝖘𝖎𝖓 (+5)  (1 moneda)"
      echo "f) salir"
      echo
      echo "$tu$arma $otro $nombre"
      echo "$dinero monedas"
      echo
      read -p "¿que quieres hacer? " compra
      if [ $compra = "a" ]; then
         if [ $dinero -gt "9" ]; then
            echo "espada comprada"
            arma="*"
            dinero=$(($dinero-10))
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "b" ]; then
         if [ $dinero -gt "4" ]; then
            echo "escudo comprado"
            dinero=$(($dinero-5))
            otro="[]"
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "c" ]; then
         if [ $dinero -gt "2" ]; then
            echo "armadura comprada"
            tu=$(($tu + "15"))
            dinero=$(($dinero-3))
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "d" ]; then
         if [ $dinero -gt "1" ]; then
            echo "armadura comprada"
            tu=$(($tu + "10"))
            dinero=$(($dinero-2))
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "e" ]; then
         if [ $dinero -gt "0" ]; then
            echo "armadura comprada"
            tu=$(($tu + "5"))
            dinero=$(($dinero-1))
         else
            echo "no tienes dinero suficiente"
         fi
      fi
      sleep 2
   done
   compra="0"
}

pociones() {
   while [ "$compra" != "e" ]; do
      clear
      echo ":...:.:::..:-...@@@#@##%=+...........--::=:::"
      echo ":...:.:::.....@@@@#@@#@#@@#.............::-+-" 
      echo "**:.:.....::.@@@@#@#@@@@@#@@.:.:......-::==::"
      echo "....::.......%@@@@#@@@@@@@@#@:....:.:.:......"
      echo ":..........:@@@:----7-----@@=::...--=-:::...."
      echo ".:...:.::::::@-=+--8888-----@%.:.::----::=-:."
      echo ":............@=*+---------=-@.:::::-=-=::-:::"
      echo "..::::..:..::@@-----------@@-+-#:.....:-=--:."
      echo ".:::::::.:::::@@=-=-*:--:@..........=:::.++:."
      echo ".... __   __   __     __        ___  __  ...."
      echo "....|__) /  \ /    | /  \ |\ | |__  /__ ....."
      echo "....|    \__/ \__, | \__/ | \| |___ .__/ ...."
      echo
      echo "a) pocion multiplicadora (*5)    (10 monedas)"
      echo "b) pocion multiplicadora (*2)    (5 monedas)"
      echo "c) pocion extraña (*/?)          (2 monedas)"
      echo "e) salir"
      echo
      echo "$tu$arma $otro $nombre"
      echo "$dinero monedas"
      echo
      read -p "¿que quieres hacer? " compra
      if [ $compra = "a" ]; then
         if [ $dinero -gt "9" ]; then
            echo "pocion comprada"
            tu=$(($tu * "5"))
            dinero=$(($dinero-10))
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "b" ]; then
         if [ $dinero -gt "4" ]; then
            echo "pocion comprada"
            tu=$(($tu * "2"))
            dinero=$(($dinero-5))
         else
            echo "no tienes dinero suficiente"
         fi
      elif [ $compra = "c" ]; then
         if [ $dinero -gt "1" ]; then
            echo "pocion comprada"
            dinero=$(($dinero-2))
            pocionrandom=$(( RANDOM % 2 + 1 ))
            sleep 2
            if [ $pocionrandom = "2" ]; then
               echo "estaba envenenada!"
               echo "tu puntuaje se divide entre 2"
               tu=$(($tu / "2"))
            elif [ $pocionrandom = "1" ]; then
               echo "sabe raro..."
               echo "tu puntuaje se duplica por 2"
               tu=$(($tu * "2"))
            fi
         else
            echo "no tienes dinero suficiente"
         fi
      fi
      sleep 2
   done
   compra="0"
}

okayn() {
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: %@@@@%+%  .:.             "
echo "             -==**#: :@*# +  ....             "
echo "            +*#*%%*==: ..  .:--=:.            "
echo "           +##%##@@@%#+=---==++- .            "
echo "          =#%##***@@@--::...--:....           "
echo "          *%%@@##+==--::........ ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
sleep 0.5
clear
echo "                               ...            "
echo "            ...     +-**+-*:....=             "
echo "            -+--...:%*=#-@%-:. +:             "
echo "             ##+.=+*@+@## %.-:.+              "
echo "             .@%%*-*.#=:.  # ...              "
echo "             :=**@#@@@.. .@@ .-*.             "
echo "             =%@#*=+.-@     .-: :             "
echo "              =@@++%+=-+-**@%*                "
echo "             +*#*%%*==:..  .:--=:.            "
echo "            +##%##@@@%#+=--==++- .            "
echo "           =#%##***@@@--::..--:....           "
echo "           *%%@@##+==--::....... ..           "
echo "          *%%@@##+==--::........ ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "          +@@@%@%@%%%@@+-:+*@... .=           "
echo "           ##@%+-*-:%@@@=-*:*--+       %@@:   "
echo "           @@@@+**.@@@@:#-*-..@@@*@@@@@@@     "
echo "            @@#=@*.@@@@:=:*%@#@@@@@@@@=       "
echo "             . %-:-=:-=@@@#=**=:.             "
echo "              .@==.@.:    @@-*=*              "
echo "$tu$arma $otro $nombre"
sleep 0.5
}

okaynquieto() {
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: %@@@@%+%  .:.             "
echo "             -==**#: :@*# +  ....             "
echo "            +*#*%%*==: ..  .:--=:.            "
echo "           +##%##@@@%#+=---==++- .            "
echo "          =#%##***@@@--::...--:....           "
echo "          *%%@@##+==--::........ ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
}

okaynatacado() {
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: %@@@@%+%  .:.             "
echo "             -==**#: ::=. +  ....             "
echo "            +*#*%%*==:0000 .:--=:.            "
echo "           +##%##@@.:000000 =++- .            "
echo "          =#%##***@.::0000..--:....           "
echo "          *%%@@##+==-.::........ ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
}

okaynamuert() {
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: %@@@@%+%  .:.             "
echo "             -==**#: ::=. +  ....             "
echo "            +*#*%%*==:0000 .:--=:.            "
echo "           +##%##@@.:000000 =++- .            "
echo "          =#%##***@.::0000..--:....           "
echo "          *%%@@##+==-.::........ ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
sleep 0.1
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: %@@@@%+%  .:.             "
echo "             -==**#: 000000  ....             "
echo "            +*#*%%*=001110000--=:.            "
echo "           +##%##@@001   1000++- .            "
echo "          =#%##***@0001110000-:....           "
echo "          *%%@@##+==0000000..... ..           "
echo "          *%@@%%#%*=-=#:.:=:.=-...:           "
echo "          +%@@@@%###=+::..:--@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
sleep 0.1
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=-.     .-:            "
echo "              -%*+: 0000000000.:.             "
echo "             -==**0001111111000..             "
echo "            +*#*%00010     01000:.            "
echo "           +##%#0001        1000 .            "
echo "          =#%##*00010       1000...           "
echo "          *%%@@##000111111100000 ..           "
echo "          *%@@%%#%0000000000000...:           "
echo "          +%@@@@%###00000000-@=.=#:           "
echo "        +@@@%@%@%#%%@@+-:-+*@... .=           "
echo "    @@@@@@@@@@@###@@++@%###-.+@=#-..          "
echo "  @@@@@@@@  +@@@##*@*:#@@@%-=*+::.+.          "
echo "               %-:-=:-=@@@#=**=:.             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
sleep 0.1
clear
echo "                              ....            "
echo "            ...     +-**+-*:.....=            "
echo "            -+--...:%*=#-@%-:. .+:            "
echo "             ##+.=+*@+@## %.-:..+             "
echo "             .@%%*-*.#=:.  # ....             "
echo "             :=**@#@@@.. .@@ ..-*:            "
echo "             =%@#*=+.-@@*=+= =-  -.           "
echo "             .*=#@-....=1. 1 1 .-:            "
echo "              -%*+: 0111       :1             "
echo "             -==**01            1             "
echo "            +*#*%1               1            "
echo "           +##%1                 1            "
echo "          =#%1                    1           "
echo "          *1                      1           "
echo "          1                       1           "
echo "          1                       1           "
echo "        1                         1           "
echo "    @@@1               1           1          "
echo "  @@@@@@111 11111     1@@1        1           "
echo "               %-111111@@@#111111             "
echo "               .@==.@.:    @@-*=*             "
echo "$tu$arma $otro $nombre"
sleep 0.1
clear
echo "                               1 1            "
echo "            1 1     1 1 1 1 1 1  1            "
echo "            1   1 1              1            "
echo "             1                  1             "
echo "             1                  1             "
echo "             1                   1            "
echo "             1                    1           "
echo "             1                   1            "
echo "              1                 1             "
echo "             1                  1             "
echo "            1                    1            "
echo "           1                     1            "
echo "          1                       1           "
echo "          1                       1           "
echo "          1                       1           "
echo "          1                       1           "
echo "        1                         1           "
echo "    1 11               1           1          "
echo "  11 11 1 1 1 1       1  1        1           "
echo "               1      1    1    1             "
echo "               1 1 1  1     1 1 1             "
echo "$tu$arma $otro $nombre"
sleep 0.1
clear
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "                                              "
echo "$tu$arma $otro $nombre"
sleep 3
clear
}

#------------------lore------------------#

echo "caminas por un bosque de ceros y unos"
echo "buscando al mounstruo que atormenta"
echo "a tu gato nyako cuando sale a pasear,"
echo '"eso no puede ser, que lo deje tranquilo"'
echo "el mounstruo está al fondo del bosque"
sleep 1

#---------------freakybucle--------------#

for i in {1..20}; do
   opcion="0"
   mapa=$(( RANDOM % 10 + 1 ))
   clear
   echo "$tu$arma $otro $nombre"
   echo "$dinero monedas"
   echo
   echo "miras tu mapa y ves que el castillo"
   echo "está a 20 km, estás en el km $i,"
   echo "asi que sigues caminando y ves"
   echo "dos caminos acompañados de dos señales:"
   echo
#---------------primermapa--------------#
   if [ "$mapa" -eq "1" ]; then
      echo "a) cofre"
      echo "b) enemigos"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         cofre
      fi
      if [ "$opcion" = "b" ];then
         enemigos
      fi  
#---------------segunmapa--------------#
   elif [ "$mapa" -eq "2" ]; then
      echo "a) cofre"
      echo "b) mas bosque"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         cofre
      fi
      if [ "$opcion" = "b" ];then
         bosque
      fi
#---------------tercermapa-------------#
   elif [ "$mapa" -eq "3" ]; then
      echo "a) cofre"
      echo "b) tienda de armas"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         cofre
      fi
      if [ "$opcion" = "b" ];then
         tienda
      fi
#---------------cuartomapa-------------#
   elif [ "$mapa" -eq "4" ]; then
      echo "a) cofre"
      echo "b) tienda de pociones"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         cofre
      fi
      if [ "$opcion" = "b" ];then
         pociones
      fi
#---------------quintomapa-------------#
   elif [ "$mapa" -eq "5" ]; then
      echo "a) mas bosque"
      echo "b) tienda de pociones"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         bosque
      fi
      if [ "$opcion" = "b" ];then
         pociones
      fi
#---------------sextomapa-------------#
   elif [ "$mapa" -eq "6" ]; then
      echo "a) tienda de armas"
      echo "b) enemigos"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         tienda
      fi
      if [ "$opcion" = "b" ];then
         enemigos
      fi
#---------------septimapa-------------#
   elif [ "$mapa" -eq "7" ]; then
      echo "a) tienda de pociones"
      echo "b) enemigos"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         pociones
      fi
      if [ "$opcion" = "b" ];then
         enemigos
      fi
#---------------octomapa-------------#
   elif [ "$mapa" -eq "8" ]; then
      echo "a) mas bosque"
      echo "b) tienda de armas"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         bosque
      fi
      if [ "$opcion" = "b" ];then
         tienda
      fi
#---------------nuevemapa-------------#
   elif [ "$mapa" -eq "9" ]; then
      echo "a) mas bosque"
      echo "b) tienda de pociones"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         bosque
      fi
      if [ "$opcion" = "b" ];then
         pociones
      fi
#---------------diezmapa--------------#
   elif [ "$mapa" -eq "10" ]; then
      echo "a) cofre"
      echo "b) enemigos"
      read -p "hacia donde quieres ir?: " opcion
      if [ "$opcion" = "a" ];then
         cofre
      fi
      if [ "$opcion" = "b" ];then
         enemigos
      fi      
   fi
done
#---------------pelea gato--------------#
clear
echo "saliste del bosque"
sleep 2
echo "entras en el castillo"
sleep 2
echo "que es eso!"
sleep 2
clear
okayn
okayn
okayn
okaynquieto
echo
sleep 1
echo "es okayn, el hermano gemelo malvado de nyako!"
sleep 1
echo "a) si"
echo "b) no"
read -p "¿quieres pelear contra él? " pelea
if [ "$pelea" = "a" ]; then
   okayn
   okayn
elif [ "$pelea" = "b" ]; then
   clear
   echo "eres un miedica"
   sleep 3
   clear
   echo "nyako está decepcionado de ti"
   sleep 3
   exit
else
   clear
   echo 'que? las opciones eran "a" o "b"'
   sleep 3
   echo "te entró un ataque al corazón, causas muy naturales"
   sleep 3
   exit
fi
okaynquieto
echo "atacas a okayn"
sleep 3
okaynatacado
echo "le haces mucho daño!"
sleep 2
okaynquieto
echo "le haces mucho daño!"
sleep 2
okaynquieto
echo "okayn te va a atacar!"
sleep 3
echo "te va a lanzar una raiz cuadrada!"
sleep 3
okayn
okayn
okaynquieto
if [ -z "$otro" ]; then
   echo "que? no tienes un escudo?"
   sleep 3
   clear
   echo "$tu$arma $otro $nombre"
   sleep 1
   clear
   echo "√""(""$tu"")""$arma $otro $nombre"
   sleep 1
   clear
   tu=$(echo "sqrt($tu)" | bc)
   clear
   echo "$tu$arma $otro $nombre"
   sleep 1
elif [ -n "$otro" ]; then
   echo "justo a tiempo, $otro te protegió del ataque!"
   sleep 3
else
   echo "este mensaje no debería aparecer"
fi
okaynquieto
sleep 3
echo "vuelves a atacar a okayn"
sleep 2
okaynamuert
clear
echo "has ganado!"
sleep 3
echo "tu puntuación final es de $tu puntos"
sleep 5
echo "$nombre $tu" >> "/home/carlosserver/Escritorio/tablapuntuaciones.txt"
resultado=$(sort -k2,2 -n -r /home/carlosserver/Escritorio/tablapuntuaciones.txt)
echo "$resultado" > /home/carlosserver/Escritorio/tablapuntuaciones.txt
clear
echo "tabla de puntuaciones:"
echo
cat "/home/carlosserver/Escritorio/tablapuntuaciones.txt"
