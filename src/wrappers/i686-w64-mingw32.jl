# Autogenerated wrapper script for Gdbm_jll for i686-w64-mingw32
export gdbm_dump, gdbm_load, gdbmtool, libgdbm

using Libiconv_jll
using Readline_jll
JLLWrappers.@generate_wrapper_header("Gdbm")
JLLWrappers.@declare_library_product(libgdbm, "libgdbm-6.dll")
JLLWrappers.@declare_executable_product(gdbm_dump)
JLLWrappers.@declare_executable_product(gdbm_load)
JLLWrappers.@declare_executable_product(gdbmtool)
function __init__()
    JLLWrappers.@generate_init_header(Libiconv_jll, Readline_jll)
    JLLWrappers.@init_library_product(
        libgdbm,
        "bin\\libgdbm-6.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        gdbm_dump,
        "bin\\gdbm_dump.exe",
    )

    JLLWrappers.@init_executable_product(
        gdbm_load,
        "bin\\gdbm_load.exe",
    )

    JLLWrappers.@init_executable_product(
        gdbmtool,
        "bin\\gdbmtool.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
