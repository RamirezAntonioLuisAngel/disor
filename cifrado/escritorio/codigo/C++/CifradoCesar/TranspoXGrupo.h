#include <string>
//#include "Alfabeto.h";
class traspoXgrupo {
	Alfabeto alfabe = Alfabeto();
	public:
		traspoXgrupo()
	    {}
		std::string invertirWord(std::string word, std::string out = "") {
			for (int iter = 0; iter < word.length(); iter++)
				out = word[iter] + out;
			return out;
		}

		std::string traspoGrupo(char letra, int grupo, int *posicion, std::string word, std::string *out) {
			if (!alfabe.existe(letra)) {
				(*posicion) = 0;
				*out = "";
				return word + letra;
			}
			*out = *out + letra;
			(*posicion)++;
			if ((*posicion) == grupo) {
				(*posicion) = 0;
				std::string tmp = "";
				for (int iter = 0; iter < word.length() - grupo + 1; iter++)
					tmp += word[iter];
				word = "" + tmp;
				word += invertirWord(*out);
				*out = "";
				return word;
			}
			return word + letra;
		}
};