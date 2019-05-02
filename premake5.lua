project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
    "imconfig.h",
    "imstb_rectpack.h",
    "imgui.h",
    "imgui_internal.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp",
    "imgui_draw.cpp",
    "imgui_widgets.cpp",
    "imgui.cpp"
    }

    filter "system:windows"
        cppdialect "C++17"
        staticruntime "on"
        systemversion "latest"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"

    filter "system:macosx"
        cppdialect "C++17"
        staticruntime "on"
        systemversion "latest"
