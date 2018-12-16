#include <exception>
class Excepciones : public std::exception
{
public:
	const char* what() const throw()
	{
		return "Error No se encontró: el elemento: ";
	}
};

