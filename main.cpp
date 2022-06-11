#include <iomanip>
#include <iostream>
#include <string>
#include "Contact.hpp"

std::string fix_string(std::string str)
{
	std::string	padding;

	padding = "          ";
	if (str.length() > 10)
	{
		str.resize(9);
		str.append(1, '.');
	}
	if (str.length() < 10) {
		padding.resize(10 - str.length());
		padding.append(str);
		str = padding;
	}
	str.append(1, '|');
	return (str);
}

int main()
{
	Contact		contact[9];
	int			i;
	std::string	line;

	i = 0;
	while (1)
	{
		if (i == 9)
			i = 0;
		std::cin >> line;
		if (line == "ADD")
		{
			contact[i].ADD(i);
			i++;
		}
		else if (line == "SEARCH")
			Contact::SEARCH(contact);
		else if (line == "EXIT")
			return (0);
		else
			std::cout << "Unknown command" << std::endl;
	}
	return (0);
}
