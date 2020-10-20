# Autogenerated wrapper script for Gdbm_jll for x86_64-unknown-freebsd
export gdbm_dump, gdbm_load, gdbmtool, libgdbm

using Libiconv_jll
using Readline_jll
JLLWrappers.@generate_wrapper_header("Gdbm")
JLLWrappers.@declare_executable_product(gdbm_dump)
JLLWrappers.@declare_executable_product(gdbm_load)
JLLWrappers.@declare_executable_product(gdbmtool)
JLLWrappers.@declare_library_product(libgdbm, "libgdbm.so.6")
function __init__()
    JLLWrappers.@generate_init_header(Libiconv_jll, Readline_jll)
    JLLWrappers.@init_executable_product(
        gdbm_dump,
        "bin/gdbm_dump",
    )

    JLLWrappers.@init_executable_product(
        gdbm_load,
        "bin/gdbm_load",
    )

    JLLWrappers.@init_executable_product(
        gdbmtool,
        "bin/gdbmtool",
    )

    JLLWrappers.@init_library_product(
        libgdbm,
        "lib/libgdbm.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
