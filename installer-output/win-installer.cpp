#include <windows.h>
#include <string>
#include <vector>
#include <cstdint>
#include <fstream>
#include <cstring>
#pragma comment(lib, "shell32.lib")
static const unsigned char MAGIC[8]={'A','T','L','A','S','P','K','G'};
static std::wstring quote(const std::wstring& s){std::wstring r=L"\"";for(wchar_t c:s){if(c==L'\"')r+=L"\\\"";else r+=c;}return r+L"\"";}
int WINAPI wWinMain(HINSTANCE,HINSTANCE,PWSTR,int){
 if(MessageBoxW(nullptr,L"Install Atlas Simulation Studio for the current Windows user?\n\nThe installer will add a desktop shortcut.",L"Atlas Simulation Studio Setup",MB_ICONINFORMATION|MB_YESNO|MB_DEFBUTTON1)!=IDYES)return 0;
 wchar_t exe[MAX_PATH], temp[MAX_PATH]; if(!GetModuleFileNameW(nullptr,exe,MAX_PATH)||!GetTempPathW(MAX_PATH,temp))return 2;
 std::ifstream in(exe,std::ios::binary|std::ios::ate);if(!in)return 3;auto size=in.tellg();if(size<16)return 4;in.seekg(size-std::streamoff(16));unsigned char footer[16];in.read((char*)footer,16);if(!in||memcmp(footer,MAGIC,8)!=0)return 5;
 uint64_t zipSize=0;for(int i=0;i<8;i++)zipSize|=(uint64_t)footer[8+i]<<(8*i);if(zipSize>(uint64_t)size-16)return 6;
 std::wstring zipPath=std::wstring(temp)+L"atlas-studio-setup.zip";std::wstring stage=std::wstring(temp)+L"atlas-studio-setup";CreateDirectoryW(stage.c_str(),nullptr);
 std::ofstream out(zipPath,std::ios::binary);if(!out)return 7;in.clear();in.seekg(size-std::streamoff(16)-std::streamoff(zipSize));std::vector<char> buf(1024*1024);uint64_t remain=zipSize;while(remain){auto n=(std::streamsize)(remain>buf.size()?buf.size():remain);in.read(buf.data(),n);if(!in)return 8;out.write(buf.data(),n);if(!out)return 9;remain-=n;}out.close();
 std::wstring command=L"powershell.exe -NoProfile -ExecutionPolicy Bypass -Command \"$ErrorActionPreference='Stop'; Expand-Archive -LiteralPath "+quote(zipPath)+L" -DestinationPath "+quote(stage)+L" -Force; & "+quote(stage+L"\\install.ps1")+L"\"";
 STARTUPINFOW si{};si.cb=sizeof(si);PROCESS_INFORMATION pi{};if(!CreateProcessW(nullptr,&command[0],nullptr,nullptr,FALSE,CREATE_NO_WINDOW,nullptr,nullptr,&si,&pi)){MessageBoxW(nullptr,L"Could not start the Windows installer.",L"Atlas Simulation Studio",MB_ICONERROR);return 10;}WaitForSingleObject(pi.hProcess,INFINITE);DWORD result=1;GetExitCodeProcess(pi.hProcess,&result);CloseHandle(pi.hThread);CloseHandle(pi.hProcess);DeleteFileW(zipPath.c_str());if(result!=0){MessageBoxW(nullptr,L"Installation did not complete. Try again or check PowerShell access.",L"Atlas Simulation Studio",MB_ICONERROR);return 11;}MessageBoxW(nullptr,L"Atlas Simulation Studio is installed. The desktop shortcut is ready.",L"Atlas Simulation Studio",MB_ICONINFORMATION);return 0;
}


#pragma comment(lib, "user32.lib")

