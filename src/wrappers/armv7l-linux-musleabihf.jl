# Autogenerated wrapper script for Gdbm_jll for armv7l-linux-musleabihf
export gdbm_dump, gdbm_load, gdbmtool, libgdbm

using Libiconv_jll
using Readline_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `gdbm_dump`
const gdbm_dump_splitpath = ["bin", "gdbm_dump"]

# This will be filled out by __init__() for all products, as it must be done at runtime
gdbm_dump_path = ""

# gdbm_dump-specific global declaration
function gdbm_dump(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
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
        f(gdbm_dump_path)
    end
end


# Relative path to `gdbm_load`
const gdbm_load_splitpath = ["bin", "gdbm_load"]

# This will be filled out by __init__() for all products, as it must be done at runtime
gdbm_load_path = ""

# gdbm_load-specific global declaration
function gdbm_load(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
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
        f(gdbm_load_path)
    end
end


# Relative path to `gdbmtool`
const gdbmtool_splitpath = ["bin", "gdbmtool"]

# This will be filled out by __init__() for all products, as it must be done at runtime
gdbmtool_path = ""

# gdbmtool-specific global declaration
function gdbmtool(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
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
        f(gdbmtool_path)
    end
end


# Relative path to `libgdbm`
const libgdbm_splitpath = ["lib", "libgdbm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgdbm_path = ""

# libgdbm-specific global declaration
# This will be filled out by __init__()
libgdbm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgdbm = "libgdbm.so.6"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Gdbm")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Libiconv_jll.PATH_list, Readline_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Libiconv_jll.LIBPATH_list, Readline_jll.LIBPATH_list,))

    global gdbm_dump_path = normpath(joinpath(artifact_dir, gdbm_dump_splitpath...))

    push!(PATH_list, dirname(gdbm_dump_path))
    global gdbm_load_path = normpath(joinpath(artifact_dir, gdbm_load_splitpath...))

    push!(PATH_list, dirname(gdbm_load_path))
    global gdbmtool_path = normpath(joinpath(artifact_dir, gdbmtool_splitpath...))

    push!(PATH_list, dirname(gdbmtool_path))
    global libgdbm_path = normpath(joinpath(artifact_dir, libgdbm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgdbm_handle = dlopen(libgdbm_path)
    push!(LIBPATH_list, dirname(libgdbm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

