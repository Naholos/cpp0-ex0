/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   megaphone.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aoteo-be <aoteo-be@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/01 19:40:12 by aoteo-be          #+#    #+#             */
/*   Updated: 2022/06/03 16:24:21 by aoteo-be         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <iostream>

int main(int argc, char *argv[])
{
    int i;
    int j;

    if (argc > 1)
	{
		for (i = 1; i < argc; i++)
		{
			j = 0;
			while (argv[i][j])
				std::cout << char(toupper(argv[i][j++]));
		}
	}
    else
		std::cout << "* LOUD AND UNBEARABLE FEEDBACK NOISE *";
    std::cout << std::endl;
	return 0;
}
