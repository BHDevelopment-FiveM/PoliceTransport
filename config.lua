Config = {}

-- Notification System ('qb' for QBCore notifications, 'ox' for ox_lib notifications)
Config.NotifySystem = 'qb'

-- If using ox_lib notification system, adjust the position and duration here
Config.NotifyPosition = 'top-right'  -- Options: 'top', 'top-right', 'top-left', 'bottom', 'bottom-right', 'bottom-left', 'center-right', 'center-left'
Config.NotifyDuration = 5000  -- Duration in milliseconds (e.g., 5000 = 5 seconds)

-- Notification Messages
Config.Notifications = {
    NewTransport = {
        message = "A suspect needs to be transported to jail. Check your GPS for the location!",
        type = "success"
    },
    SuspectInVehicle = {
        message = "Suspect placed in vehicle. Take them to the jail.",
        type = "success"
    },
    RemoveSuspect = {
        message = "Remove the suspect from the vehicle and take them to the jail officer.",
        type = "success"
    },
    TransportComplete = {
        message = "Transport complete. You earned $%s",  -- %s will be replaced with reward amount
        type = "success"
    }
}

-- Criminal Ped Models
Config.PedModels = {
    'g_m_importexport_01',  -- Example model 1
    'g_m_y_ballaorig_01',       -- Example model 2
    'g_f_importexport_01',  -- Example model 3
    'g_f_y_vagos_01'    -- Example model 4
}

-- NPC locations add as many as you like
Config.CriminalLocations = {
    {coords = vector3(333.11, -1160.27, 29.29), heading = 67.02},   -- Location 1
   {coords = vector3(155.02, -1297.33, 29.08), heading = 135.12},   -- Location 2
   {coords = vector3(155.18, -1076.07, 29.21), heading = 79.21}   -- Location 3

}

-- Police NPC offset from criminal (x, y coordinates)
Config.PoliceOffset = {
    {x = 0.0, y = 1.0},    -- First police officer offset
    {x = 0.0, y = -1.0}    -- Second police officer offset
}

-- Police vehicle model and spawn offset
Config.PoliceVehicleModel = 'policeb'  -- Change this to the specific police vehicle model you want
Config.PoliceVehicleOffset = {x = 2.0, y = 1.0}  -- Single offset for vehicle spawn location
Config.PoliceVehicleModelHeading = 90

-- How long (in minutes) after a task compleation till a criminal NPC will respawn
Config.CriminalSpawn = 5

-- Jail parking location
Config.JailParkingLocation = vector3(407.36, -979.22, 29.27)

-- Final walk position and heading for criminal before completion
Config.JailDropOffPosition = {
    coords = vector3(459.09, -997.93, 24.91), -- Adjust these coordinates to where you want the criminal to be dropped off at
}

Config.JailEntrancePed = {
    model = 's_m_y_cop_01',  -- Police ped model
    coords = vector4(462.38, -996.85, 24.91, 231.18),  -- Coordinates and heading
}

-- Marker Configuration
Config.ShowMarkers = true  -- Set to false to disable all markers
Config.Markers = {
    Jail = {
        Type = 1,
        Scale = {x = 2.0, y = 2.0, z = 1.0},
        Color = {r = 255, g = 0, b = 0, a = 100}
    },
    JailEntrance = {
        Type = 1,
        Scale = {x = 1.0, y = 1.0, z = 1.0},
        Color = {r = 0, g = 255, b = 0, a = 100}
    }
}

-- Blip Configuration
Config.Blips = {
    Criminal = {
        Sprite = 58,
        Color = 1,  -- Red
        Scale = 0.8,
        Name = "Transport Suspect"
    },
    Jail = {
        Sprite = 58,
        Color = 1,  -- Red
        Scale = 0.8,
        Name = "Jail Destination"
    },
    JailEntrance = {
        Sprite = 58,
        Color = 2,  -- Green
        Scale = 0.8,
        Name = "Criminal Drop Off"
    }
}

-- Allowed jobs that can perform transports
Config.AllowedJobs = {
    ['police'] = true,     -- Police Department
    ['bcso'] = true,       -- Sheriff's Department
    ['sasp'] = true        -- State Police
}

-- Reward for successful transport
Config.Reward = 500
Config.Type = 'cash' -- Payment type 'cash' or 'bank'

-- Key Bindings Configuration
Config.Keys = {
    DragSuspect = 74,       -- [H] Key to start/stop dragging suspect
    PutInVehicle = 38,      -- [E] Key to put suspect in/out of vehicle
    ProcessSuspect = 38     -- [E] Key to process suspect at jail
}

-- Interaction Text Configuration
Config.InteractionText = {
    StartDragging = "Press [H] to drag",
    StopDragging = "Press [H] to stop dragging",
    PutInVehicle = "Press [E] to put in vehicle",
    RemoveFromVehicle = "Press [E] to remove the suspect",
    ProcessSuspect = "Press [E] to process suspect"
}
