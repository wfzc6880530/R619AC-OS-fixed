module("luci.controller.r619ac", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/r619ac") then
        return
    end

    local page = entry({"admin", "r619ac"}, firstchild(), _("R619AC OS"), 5)
    page.dependent = false

    entry({"admin", "r619ac", "overview"}, template("r619ac/overview"), _("Overview"), 10).leaf = true
end
