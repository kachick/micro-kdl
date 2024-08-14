VERSION = "0.0.1"

local config = import("micro/config")

config.RegisterCommonOption("kdl", "kdl", true)
config.AddRuntimeFile("kdl", config.RTSyntax, "kdl.yaml")
