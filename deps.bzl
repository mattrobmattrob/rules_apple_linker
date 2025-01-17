"""
Register default linker downloads
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_apple_linker_deps():
    http_archive(
        name = "rules_apple_linker_zld",
        build_file_content = 'filegroup(name = "zld_bin", srcs = ["zld"], visibility = ["//visibility:public"])',
        sha256 = "b1897fbe2a2e27241d993d1ae55b5622efd9725139e8b9486b5d6e86cc291415",
        url = "https://github.com/michaeleisel/zld/releases/download/1.3.7/zld.zip",
    )

    http_archive(
        name = "rules_apple_linker_lld",
        build_file_content = 'filegroup(name = "lld_bin", srcs = ["ld64.lld"], visibility = ["//visibility:public"])',
        sha256 = "c4212126260d22c132296e9e0284c50ee29a76f8e791cdaa2116c0eb3892576f",
        url = "https://github.com/keith/ld64.lld/releases/download/12-14-22/ld64.tar.xz",
    )

    http_archive(
        name = "rules_apple_linker_mold",
        build_file_content = 'filegroup(name = "mold_bin", srcs = ["ld64.mold"], visibility = ["//visibility:public"])',
        sha256 = "2b1ab27d4ab0d6319cf79b6bc94710e8a515c069670191dea022c3dffaef64fd",
        url = "https://github.com/keith/ld64.mold/releases/download/11-7-22/ld64.tar.xz",
    )
