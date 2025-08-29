-- Lua demo
-- Run: `./hello.exe ext/ext-teal/hello.lua`

print('v3, hello from ' .. _VERSION)

-- preload Teal
local libs = {}
libs.tl = require("ext.ext-teal.tl") -- mount teal/ folder
tl = libs.tl -- global teal
tl.loader() -- install teal
package.path = "?.tl;" .. package.path -- prefer .tl over .lua extensions at this point

-- jump to ext/ext-teal/hello.tl
local main = require("ext.ext-teal.hello")
