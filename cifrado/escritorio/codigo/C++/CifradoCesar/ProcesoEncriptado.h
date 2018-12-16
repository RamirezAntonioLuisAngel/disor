
class ProcesoEncriptado {
private:
	
	Alfabeto alfabeto = Alfabeto();

public:
	ProcesoEncriptado()	{ }

	char retornarCaracter(char caracter,int desplazamiento)
	{
		if(retornarPosicion(caracter)!=-1)
			return retorCaracterXDesplaz(retornarPosicion(caracter), desplazamiento);
		return caracter;
	}

	char retorCaracterXDesplaz(int posicionactual, int desplazamiento)
	{
		return alfabeto.retornarCaracter((posicionactual +
			desplazamiento)% alfabeto.retornarTamanio());
		
	}

	int retornarPosicion(char caracter)
	{
		for (int incre = 0; incre < alfabeto.retornarTamanio(); incre++)
		{
			if (alfabeto.retornarCaracter(incre) == caracter)
				return incre;
		}
		return -1;
	}
};
