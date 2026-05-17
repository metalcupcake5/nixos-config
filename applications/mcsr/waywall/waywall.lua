local waywall = require("waywall")
local helpers = require("waywall.helpers")

local config = {
    input = {
        layout = "us",
        repeat_rate = 40,
        repeat_delay = 300,

        sensitivity = 7.0139605057784395,
        -- sensitivity = 1.0,
        confine_pointer = false,
    },
    theme = {
        background = "#303030ff",
        ninb_anchor = "bottomright",
        ninb_opacity = 0.8,
    },
    experimental = {
	    debug = false,
    }
}

local tall = false
local thin = false
local wide = false

local current_mirror
local eye_overlay

local tall_toggle = function()
    if thin or wide then
        return
    end
    if tall then
        waywall.set_resolution(0, 0)
        waywall.set_sensitivity(0) -- Back to normal sensitivity coefficient
        if current_mirror then
            current_mirror:close()
            eye_overlay:close()
            current_mirror = nil
        end
        tall = false
        return
    end
    waywall.set_resolution(384, 16384)
    waywall.set_sensitivity(0.47315758010299636) -- New tall sensitivity coefficient
    tall = true
    local measure_width = 600
    local measure_height = 500
    local measure_x = 100
    local measure_y = 200
    current_mirror = waywall.mirror({
        src = {
            x = 162,
            y = 7902,
            w = 60,
            h = 580
        },
        dst = {
            x = measure_x,
            y = measure_y,
            w = measure_width,
            h = measure_height
        }
    })
    eye_overlay = waywall.image(files.overlay, {
        dst = {
            x = measure_x,
            y = measure_y,
            w = measure_width,
            h = measure_height
        }
    })
end

local thin_toggle = function()
    if tall or wide then
        return
    end
    if thin then
        waywall.set_resolution(0, 0)
        if current_mirror then
            current_mirror:close()
            current_mirror = nil
        end
        thin = false
        return
    end
    waywall.set_resolution(310, 1016)
    current_mirror = waywall.mirror({
        src = {
            x = 13,
            y = 37,
            w = 37,
            h = 9
        },
        dst = {
            x = 400,
            y = 450,
            w = 185,
            h = 45
        }
    })
    thin = true
end

local wide_toggle = function()
    if thin or tall then
        return
    end
    if wide then
        waywall.set_resolution(0, 0)
        wide = false
        return
    end
    waywall.set_resolution(1900, 300)
    wide = true
end


config.actions = {

    ["Ctrl-Shift-N-*"] = function()
        waywall.exec(programs.ninjabrain_bot)
    end,

    ["Ctrl-O-*"] = function()
	    helpers.toggle_floating()
    end,

    ["f4-*"] = function()
	    if waywall.get_key("f3") then
            return false
	    end

        tall_toggle()
    end,

    ["grave-*"] = function()
        wide_toggle()
    end,

    ["f1-*"] = function()
        thin_toggle()
    end,
}



return config

