# Autogenerated wrapper script for GR_jll for powerpc64le-linux-gnu-cxx03
export gksqt, grplot, libGKS, libGR, libGR3, libGRM

using Bzip2_jll
using Cairo_jll
using FFMPEG_jll
using Fontconfig_jll
using FreeType2_jll
using GLFW_jll
using JpegTurbo_jll
using libpng_jll
using Libtiff_jll
using Pixman_jll
using Qt6Base_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("GR")
JLLWrappers.@declare_library_product(libGKS, "libGKS.so")
JLLWrappers.@declare_library_product(libGR, "libGR.so")
JLLWrappers.@declare_library_product(libGR3, "libGR3.so")
JLLWrappers.@declare_library_product(libGRM, "libGRM.so")
JLLWrappers.@declare_executable_product(gksqt)
JLLWrappers.@declare_executable_product(grplot)
function __init__()
    JLLWrappers.@generate_init_header(Bzip2_jll, Cairo_jll, FFMPEG_jll, Fontconfig_jll, FreeType2_jll, GLFW_jll, JpegTurbo_jll, libpng_jll, Libtiff_jll, Pixman_jll, Qt6Base_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libGKS,
        "lib/libGKS.so",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libGR,
        "lib/libGR.so",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libGR3,
        "lib/libGR3.so",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libGRM,
        "lib/libGRM.so",
        nothing,
    )

    JLLWrappers.@init_executable_product(
        gksqt,
        "bin/gksqt",
    )

    JLLWrappers.@init_executable_product(
        grplot,
        "bin/grplot",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
