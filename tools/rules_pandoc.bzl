def pandoc(name, srcs, out, **kwargs):
    native.genrule(
        name = name,
        srcs = srcs,
        outs = [out],
        cmd = "pandoc -o $@ "+ "".join(["$(location "+x+") " for x in srcs]),
    )
