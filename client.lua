local sW, sH = guiGetScreenSize();

local weaponRecoil = {
    [25] = {
        maxInterval = 100,
        sequence = {
            {
                range = 1,
                x = { type = "random", min = -20, max = 20 },
                y = { type = "random", min = 50, max = 100 }
            },
        }
    },
    [29] = {
        maxInterval = 250,
        sequence = {
            {
                range = 7,
                y = { type = "random", min = 3, max = 5 }
            },
            {
                range = 14,
                x = { type = "random", min = 0, max = 5 },
                y = { type = "random", min = 3, max = 5 }
            },
            {
                range = 30,
                x = { type = "random", min = -5, max = 0 },
                y = { type = "static", value = 2 }
            },
        }
    },
    [31] = {
        maxInterval = 250,
        sequence = {
            {
                range = 10,
                y = { type = "random", min = 6, max = 8 }
            },
            {
                range = 15,
                x = { type = "random", min = 0, max = 5 },
                y = { type = "random", min = 6, max = 8 }
            },
            {
                range = 25,
                x = { type = "random", min = -3, max = -2 },
                y = { type = "random", min = 6, max = 8 }
            },
            {
                range = 50,
                x = { type = "random", min = -15, max = 15 },
                y = { type = "random", min = 6, max = 8 }
            },
        }
    },
    [33] = {
        maxInterval = 250,
        sequence = {
            {
                range = 1,
                x = { type = "random", min = -10, max = 10 },
                y = { type = "random", min = 10, max = 30 }
            },
        }
    },
}

--HIDDEN CODE