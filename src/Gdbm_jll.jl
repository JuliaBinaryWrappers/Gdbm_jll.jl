# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Gdbm_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Gdbm")
JLLWrappers.@generate_main_file("Gdbm", UUID("54ca2031-c8dd-5cab-9ed4-295edde1660f"))
end  # module Gdbm_jll
