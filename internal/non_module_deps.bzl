"Module extension for loading dependencies not in bzlmod"

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# buildifier: disable=unused-variable
def _non_module_deps_extension(module_ctx):
    http_archive(
        name = "googleapis",
        build_file = "//external:BUILD.googleapis",
        sha256 = "7b6ea252f0b8fb5cd722f45feb83e115b689909bbb6a393a873b6cbad4ceae1d",
        strip_prefix = "googleapis-143084a2624b6591ee1f9d23e7f5241856642f4d",
        urls = ["https://github.com/googleapis/googleapis/archive/143084a2624b6591ee1f9d23e7f5241856642f4d.zip"],
    )

non_module_deps = module_extension(
    implementation = _non_module_deps_extension,
)
