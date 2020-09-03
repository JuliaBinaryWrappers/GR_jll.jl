# Autogenerated wrapper script for GR_jll for x86_64-linux-gnu-cxx11
export gksqt, libGKS, libGR, libGR3, libGRM

using Bzip2_jll
using Cairo_jll
using FFMPEG_jll
using Fontconfig_jll
using GLFW_jll
using JpegTurbo_jll
using libpng_jll
using Libtiff_jll
using Pixman_jll
using Qhull_jll
using Qt_jll
using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `gksqt`
const gksqt_splitpath = ["bin", "gksqt"]

# This will be filled out by __init__() for all products, as it must be done at runtime
gksqt_path = ""

# gksqt-specific global declaration
function gksqt(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(gksqt_path)
    end
end


# Relative path to `libGKS`
const libGKS_splitpath = ["lib", "libGKS.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libGKS_path = ""

# libGKS-specific global declaration
# This will be filled out by __init__()
libGKS_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libGKS = "libGKS.so"


# Relative path to `libGR`
const libGR_splitpath = ["lib", "libGR.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libGR_path = ""

# libGR-specific global declaration
# This will be filled out by __init__()
libGR_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libGR = "libGR.so"


# Relative path to `libGR3`
const libGR3_splitpath = ["lib", "libGR3.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libGR3_path = ""

# libGR3-specific global declaration
# This will be filled out by __init__()
libGR3_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libGR3 = "libGR3.so"


# Relative path to `libGRM`
const libGRM_splitpath = ["lib", "libGRM.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libGRM_path = ""

# libGRM-specific global declaration
# This will be filled out by __init__()
libGRM_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libGRM = "libGRM.so"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Bzip2_jll.PATH_list, Cairo_jll.PATH_list, FFMPEG_jll.PATH_list, Fontconfig_jll.PATH_list, GLFW_jll.PATH_list, JpegTurbo_jll.PATH_list, libpng_jll.PATH_list, Libtiff_jll.PATH_list, Pixman_jll.PATH_list, Qhull_jll.PATH_list, Qt_jll.PATH_list, Zlib_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Bzip2_jll.LIBPATH_list, Cairo_jll.LIBPATH_list, FFMPEG_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, GLFW_jll.LIBPATH_list, JpegTurbo_jll.LIBPATH_list, libpng_jll.LIBPATH_list, Libtiff_jll.LIBPATH_list, Pixman_jll.LIBPATH_list, Qhull_jll.LIBPATH_list, Qt_jll.LIBPATH_list, Zlib_jll.LIBPATH_list,))

    global gksqt_path = normpath(joinpath(artifact_dir, gksqt_splitpath...))

    push!(PATH_list, dirname(gksqt_path))
    global libGKS_path = normpath(joinpath(artifact_dir, libGKS_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libGKS_handle = dlopen(libGKS_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libGKS_path))

    global libGR_path = normpath(joinpath(artifact_dir, libGR_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libGR_handle = dlopen(libGR_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libGR_path))

    global libGR3_path = normpath(joinpath(artifact_dir, libGR3_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libGR3_handle = dlopen(libGR3_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libGR3_path))

    global libGRM_path = normpath(joinpath(artifact_dir, libGRM_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libGRM_handle = dlopen(libGRM_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libGRM_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
