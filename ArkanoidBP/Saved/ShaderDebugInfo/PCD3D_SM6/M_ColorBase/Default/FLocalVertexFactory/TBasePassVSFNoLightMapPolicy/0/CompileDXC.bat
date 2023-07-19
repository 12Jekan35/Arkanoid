@ECHO OFF
SET DXC="D:\EGSGames\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "D:\EGSGames\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /Zpr /O3 -Wno-parentheses-equality /T vs_6_6 /E Main /Fc BasePassVertexShader.d3dasm /Fo BasePassVertexShader.dxil BasePassVertexShader.usf
:END
PAUSE
