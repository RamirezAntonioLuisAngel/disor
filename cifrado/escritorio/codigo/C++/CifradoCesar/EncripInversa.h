#include <String>
class encripInversa
{
public:
	encripInversa() {}
	System::String^ encriptarInversa(System::String^ texto)
	{
		System::String^transp = "";
		for (int itera = 0; itera < texto->Length; itera++)
		{
			transp = texto[itera]+ transp;
		}
		return transp;
	}
};
