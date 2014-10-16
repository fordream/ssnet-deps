call "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\vc\vcvarsall.bat" x86
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=Windows;Platform=Win32
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=Windows;Platform=x64
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=WindowsStore;Platform=x64
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=WindowsStore;Platform=Win32
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=WindowsStore;Platform=ARM
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=WindowsPhone;Platform=Win32
msbuild ..\..\core\SiliconStudio.Core.Native\Core.Native.vcxproj /Property:Configuration=Release;SiliconStudioPlatform=WindowsPhone;Platform=ARM
xcopy /Y /S ..\..\core\SiliconStudio.Core.Native\bin\*.dll .