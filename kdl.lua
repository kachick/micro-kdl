VERSION = "0.1.0"

local config = import("micro/config")

config.RegisterCommonOption("kdl", "kdl", true)
config.AddRuntimeFile("kdl", config.RTSyntax, "kdl.yaml")

-- Set the comment character format when a KDL buffer is opened
function onBufferOpen(buf)
    if buf.Settings["filetype"] == "kdl" then
        buf.Settings["comment.type"] = "// %s"
    end
end
