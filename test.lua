---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LAB.
--- DateTime: 2022/5/3 20:23
---
local ffi = require("ffi")

ffi.cdef[[
void loguru_init();
void loguru_free();
void loguru_info(const char *msg);
void loguru_warning(const char *msg);
void loguru_error(const char *msg);
void loguru_critical(const char *msg);
int loguru_calc(int, int);
]]

local loguru =  ffi.load("loguru")

loguru.loguru_init()

loguru.loguru_info("I'm lua")
loguru.loguru_warning("I'm lua")
loguru.loguru_error("I'm lua")
loguru.loguru_critical("I'm lua")
print(loguru.loguru_calc(2,6))
loguru.loguru_free()