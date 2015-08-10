
class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_Killed_EventHandlers {
    class All {
        init = QUOTE(call FUNC(handleDestroyed));
    };
};

class Extended_Init_EventHandlers {
    class StaticWeapon {
        class ADDON {
            init = QUOTE(_this call DFUNC(initObject));
        };
    };
    class ReammoBox_F {
        class ADDON {
            init = QUOTE(_this call DFUNC(initObject));
        };
    };
    class Car {
        class ADDON {
            init = QUOTE(_this call DFUNC(initVehicle));
        };
    };

    class Tank {
        class ADDON {
            init = QUOTE(_this call DFUNC(initVehicle));
        };
    };

    class Helicopter {
        class ADDON {
            init = QUOTE(_this call DFUNC(initVehicle));
        };
    };

    class Plane {
        class ADDON {
            init = QUOTE(_this call DFUNC(initVehicle));
        };
    };

    class Ship_F {
        class ADDON {
            init = QUOTE(_this call DFUNC(initVehicle));
        };
    };
};
