#include "Interfaz.h"
using namespace System;
//using namespace std;
//using namespace System::Windows::Forms;

[STAThread]
void main(array <String^>^ hola) {
	System::Windows::Forms::Application::EnableVisualStyles();
	System::Windows::Forms::Application::SetCompatibleTextRenderingDefault(false);

	EncriptadoCesar::Interfaz form;
	System::Windows::Forms::Application::Run(%form);
}

