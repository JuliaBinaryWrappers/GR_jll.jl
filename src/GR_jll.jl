# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule GR_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("GR")
JLLWrappers.@generate_main_file("GR", UUID("d2c73de3-f751-5644-a686-071e5b155ba9"))
end  # module GR_jll
