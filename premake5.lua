workspace "RaytracingInOneWeekend"

    configurations{"Debug", "Release"}

project "RaytracingInOneWeekend"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "src/**.h" , "src/**.cpp" }

    filter "configurations:Debug"
        defines{"DEBUG"}
        symbols "On"
    filter "configurations:Release"
        defines{"NDEBUG"}
        optimize "On"