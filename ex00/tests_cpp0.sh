/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_cpp0.sh                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aoteo-be <aoteo-be@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/03 16:30:31 by aoteo-be          #+#    #+#             */
/*   Updated: 2022/06/03 16:30:31 by aoteo-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

clear
echo "*********************************************************************"
echo "*                         Tests CPP0                                *"
echo "*********************************************************************"

echo "$(tput setaf 3)*****************************************************"
echo "*             Pruebas de Makefile                   *"
echo "*****************************************************"

echo "$(tput setaf 5)1) Se ejecuta make"
echo "$(tput setaf 8)\c"
make
read foo

echo "$(tput setaf 5)2) Se ejecuta make de nuevo"
echo "$(tput setaf 8)\c"
make
read foo

echo "$(tput setaf 5)3) Se ejecuta make re"
echo "$(tput setaf 8)\c"
make re
read foo

echo "$(tput setaf 5)\n4) Se ejecuta make clean"
echo "$(tput setaf 8)\c"
make clean
read foo

echo "$(tput setaf 5)5) Se ejecuta make fclean"
echo "$(tput setaf 8)\c"
make fclean
read foo

echo "$(tput setaf 5)6) Se ejecuta make una vez más para comenzar las pruebas"
echo "$(tput setaf 8)\c"
make all
read foo

echo "$(tput setaf 3)*****************************************************"
echo "*             Funciones prohibidas                   *"
echo "*****************************************************"

echo "$(tput setaf 5)1) grep 'alloc\|printf\|free' megaphone.cpp"
echo "$(tput setaf 8)\c"
grep 'alloc\|printf\|free' megaphone.cpp
read foo

echo "$(tput setaf 3)*****************************************************"
echo "*             Palabras prohibidas                   *"
echo "*****************************************************"

echo "$(tput setaf 5)1) grep 'namespace\|friend' megaphone.cpp"
echo "$(tput setaf 8)\c"
grep 'using namespace\|friend' megaphone.cpp
read foo

echo "$(tput setaf 3)*****************************************************"
echo "*                        Ejemplos                   *"
echo "*****************************************************"

echo "$(tput setaf 5)1) ./megaphone \"ahhhhh... I think the student are asleep...\""
echo "$(tput setaf 8)\c"
./megaphone "ahhhhh... I think the student are asleep..."
read foo

echo "$(tput setaf 5)2) ./megaphone \"Damnit \" ! \" \"Sorry students, I thought this thing was off.\""
echo "$(tput setaf 8)\c"
./megaphone Damnit " ! " "Sorry students, I thought this thing was off."
read foo

echo "$(tput setaf 5)2) ./megaphone"
echo "$(tput setaf 8)\c"
./megaphone
read foo
