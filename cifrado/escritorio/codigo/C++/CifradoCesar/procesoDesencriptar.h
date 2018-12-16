#include "Alfabeto.h";

class procesoDesencriptado{
private:
	
	Alfabeto alfabeto = Alfabeto();
	int desplazamiento;

public:
	procesoDesencriptado(){}

	char retornarCaracter(char caracter, int desplazamiento)
	{
		if (retornarPosicion(caracter) != -1)
			return retorCaracterXDesplazInverso(
				retornarPosicion(caracter), desplazamiento);
		return caracter;
	}

	char retorCaracterXDesplazInverso(int posicionactual, int desplazamiento)
	{
		return alfabeto.retornarCaracter((posicionactual - desplazamiento+ 
			alfabeto.retornarTamanio()) % alfabeto.retornarTamanio());
	}

	int retornarPosicion(char caracter)
	{
		for (int incre = 0; incre < alfabeto.retornarTamanio(); incre++)
		{
			if (alfabeto.retornarCaracter(incre)== caracter)
				return incre;
		}
		return -1;
	}
};
