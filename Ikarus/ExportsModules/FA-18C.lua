-- F/A-18C Export
-- Version 1.0.2 

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	--[[
	every frames arguments
	based of "mainpanel_init.lua"
	Example (http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
	[DeviceID] = "Format"
	  [4] = "%.4f",  <- floating-point number with 4 digits after point
	 [19] = "%0.1f", <- floating-point number with 1 digit after point
	[129] = "%1d",   <- decimal number
	  [5] = "%.f",   <- floating point number rounded to a decimal number
	]]
	-- Controlls
	--[71] = "%.4f",   -- StickPitch {-1, 0, 0.137, 0.5} {1, 0.12, 0, -0.726}
	--[74] = "%.4f",   -- StickRoll {-1, 1}
	--[500] = "%.4f",   -- Rudder {-1, 1}
	--[501] = "%.4f",   -- LeftWheelBrake
	--[502] = "%.4f",   -- RightWheelBrake
	--[104] = "%.4f",   -- LeftThrottle
	--[105] = "%.4f",   -- RightThrottle
	--[495] = "%.4f",   -- LeftFingerLift
	--[496] = "%.4f",   -- RightFingerLift
	-- Electric Interface
	[400] = "%.4f",   -- VoltmeterU {16.0, 30.0}{0.0, 1.0}
	[401] = "%.4f",   -- VoltmeterE {16.0, 30.0}{0.0, 1.0}
	-- Hydraulic Interface
	[310] = "%.4f",   -- HydIndLeft {0.0, 5000.0} {0.0, 1.0}
	[311] = "%.4f",   -- HydIndRight {0.0, 5000.0} {0.0, 1.0}
	[242] = "%.4f",   -- HydIndBrake {0.0, 1000.0, 2000.0, 3000.0, 4000.0, 5000.0}{0.0, 0.036, 0.338, 0.636, 0.924, 1.0}
	-- Gear Interface
	[228] = "%.4f",   -- EmergGearDownHandle
	[240] = "%.4f",   -- EmergParkBrakeHandle
	-- Instruments --------------------------
    -- Standby Pressure Altimeter AAU-52/A
	[218] = "%.4f",   -- Altimeter_100_footPtr {0.0, 1000.0} {0.0, 1.0}
	[220] = "%.4f",   -- Altimeter_10000_footCount {0.0, 9.0} {0.0, 1.0}
	[219] = "%.4f",   -- Altimeter_1000_footCount {0.0, 9.0} {0.0, 1.0}
	[221] = "%.4f",   -- pressure_setting_0 {0.0, 10.0} {0.0, 1.0}
	[222] = "%.4f",   -- pressure_setting_1 {0.0, 10.0} {0.0, 1.0}
	[223] = "%.4f",   -- pressure_setting_2 {0.0, 10.0} {0.0, 1.0}
	-- Indicated Airspeed Indicator AVU-35/A
	[217] = "%.4f",   -- Airspeed {0.0,   60.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0} {0.0, 0.0445,  0.15, 0.348, 0.586, 0.636, 0.673, 0.715, 0.748, 0.782, 0.819, 0.849, 0.870, 0.898, 0.922, 0.950, 0.976,   1.0}
    -- Vertical Speed Indicator AVU-53/A
	[225] = "%.4f",   -- Variometer {-6000.0, -4000.0, -3000.0, -2000.0, -1000.0, -500.0, 0.0, 500.0, 1000.0, 2000.0, 3000.0, 4000.0, 6000.0}  {   -1.0,   -0.83,   -0.73,  -0.605,   -0.40,  -0.22, 0.0,  0.22,   0.40,  0.605,   0.73,   0.83,    1.0}
	-- Clock
	[278] = "%.4f",   -- CLOCK_currtime_hour {0.0, 12.0} {0.0, 1.0}
	[279] = "%.4f",   -- CLOCK_currtime_minutes {0.0, 60.0} {0.0, 1.0}
	[281] = "%.4f",   -- CLOCK_elapsed_time_minutes {0.0, 60.0} {0.0, 1.0}
	[280] = "%.4f",   -- CLOCK_elapsed_time_seconds {0.0, 60.0} {0.0, 1.0}
	-- ID-2163/A
	[287] = "%.4f",   -- Min_Height_Indicator_ID2163A {-0.03, 0.0, 0.5, 0.8, 1.0} {0.0, 0.031, 0.525, 0.802, 0.982}
	[286] = "%.4f",   -- Altitude_Pointer_ID2163A {-10.0, 0.0, 100.0, 200.0, 300.0, 400.0, 600.0, 800.0, 1000.0, 3000.0, 5000.0, 5100.0} {0.0, 0.048, 0.171, 0.296, 0.416, 0.530, 0.616, 0.706, 0.799, 0.886, 0.974, 0.98}
	[288] = "%.4f",   -- OFF_Flag_ID2163A
	[290] = "%1d",   -- Red_Lamp_ID2163A
	[289] = "%1d",   -- Green_Lamp_ID2163A
	-- SAI
	[205] = "%.4f",   -- SAI_Pitch {-1.0, 1.0}
	[206] = "%.4f",   -- SAI_Bank {-1.0, 1.0}
	[209] = "%.4f",   -- SAI_attitude_warning_flag
	[210] = "%.4f",   -- SAI_manual_pitch_adjustment {0.0, 1.0} {-1.0, 1.0}
	[207] = "%.4f",   -- SAI_SlipBall {-1.0, 1.0}
	[208] = "%.4f",   -- SAI_RateOfTurn {-3.0, 3.0} {-1.0, 1.0}
	--[] = "",   -- SAI_vertical_pointer {-1.0, 1.0}
	--[] = "",   -- SAI_horisontal_pointer {-1.0, 1.0}
	-- Cockpit Pressure Altimeter
	[285] = "%.4f",   -- CockpitPressureAltimeter {0.0, 5000.0, 10000.0, 15000.0, 20000.0, 25000.0, 30000.0, 35000.0, 40000.0, 45000.0, 50000.0} {0.0, 0.117, 0.2245, 0.3225, 0.411, 0.506, 0.609, 0.717, 0.823, 0.914, 1.0}
	-- Caution Light Indicator Panel
	[298] = "%1d",   -- CPT_LTS_CK_SEAT
	[299] = "%1d",   -- CPT_LTS_APU_ACC
	[300] = "%1d",   -- CPT_LTS_BATT_SW
	[301] = "%1d",   -- CPT_LTS_FCS_HOT
	[302] = "%1d",   -- CPT_LTS_GEN_TIE
	[303] = "%1d",   -- CPT_LTS_SPARE_CTN1
	[304] = "%1d",   -- CPT_LTS_FUEL_LO
	[305] = "%1d",   -- CPT_LTS_FCES
	[306] = "%1d",   -- CPT_LTS_SPARE_CTN2
	[307] = "%1d",   -- CPT_LTS_L_GEN
	[308] = "%1d",   -- CPT_LTS_R_GEN
	[309] = "%1d",   -- CPT_LTS_SPARE_CTN3
	-- LH Advisory and Threat Warning Indicator Panel
	[13] = "%1d",   -- CPT_LTS_MASTER_CAUTION
	[10] = "%1d",   -- CPT_LTS_FIRE_LEFT
	[15] = "%1d",   -- CPT_LTS_GO
	[16] = "%1d",   -- CPT_LTS_NO_GO
	[17] = "%1d",   -- CPT_LTS_L_BLEED
	[18] = "%1d",   -- CPT_LTS_R_BLEED
	[19] = "%1d",   -- CPT_LTS_SPD_BRK
	[20] = "%1d",   -- CPT_LTS_STBY
	[21] = "%1d",   -- CPT_LTS_L_BAR_RED
	[22] = "%1d",   -- CPT_LTS_REC
	[23] = "%1d",   -- CPT_LTS_L_BAR_GREEN
	[24] = "%1d",   -- CPT_LTS_XMIT
	[25] = "%1d",   -- CPT_LTS_ASPJ_OH
	-- RH Advisory and Threat Warning Indicator Panel
	[29] = "%1d",   -- CPT_LTS_FIRE_APU
	[26] = "%1d",   -- CPT_LTS_FIRE_RIGHT
	[31] = "%1d",   -- CPT_LTS_RCDR_ON
	[32] = "%1d",   -- CPT_LTS_DISP
	[38] = "%1d",   -- CPT_LTS_SAM
	[39] = "%1d",   -- CPT_LTS_AI
	[40] = "%1d",   -- CPT_LTS_AAA
	[41] = "%1d",   -- CPT_LTS_CW
	[33] = "%1d",   -- CPT_LTS_SPARE_RH1
	[34] = "%1d",   -- CPT_LTS_SPARE_RH2
	[35] = "%1d",   -- CPT_LTS_SPARE_RH3
	[36] = "%1d",   -- CPT_LTS_SPARE_RH4
	[37] = "%1d",   -- CPT_LTS_SPARE_RH5
	-- Flaps, Landing Gear and Stores Indicator Panel
	[152] = "%1d",   -- CPT_LTS_CTR
	[154] = "%1d",   -- CPT_LTS_LI
	[156] = "%1d",   -- CPT_LTS_LO
	[158] = "%1d",   -- CPT_LTS_RI
	[160] = "%1d",   -- CPT_LTS_RO
	[166] = "%1d",   -- CPT_LTS_NOSE_GEAR
	[165] = "%1d",   -- CPT_LTS_LEFT_GEAR
	[167] = "%1d",   -- CPT_LTS_RIGHT_GEAR
	[163] = "%1d",   -- CPT_LTS_HALF_FLAPS
	[164] = "%1d",   -- CPT_LTS_FULL_FLAPS
	[162] = "%1d",   -- CPT_LTS_FLAPS
	-- Lock/Shoot Light Assy
	[1] = "%1d",   -- CPT_LTS_LOCK
	[2] = "%1d",   -- CPT_LTS_SHOOT
	[3] = "%1d",   -- CPT_LTS_SHOOT_STROBE
	-- Master Arm Control
	[47] = "%1d",   -- CPT_LTS_AA
	[48] = "%1d",   -- CPT_LTS_AG
	[45] = "%1d",   -- CPT_LTS_DISCH
	[44] = "%1d",   -- CPT_LTS_READY
	-- Arresting Hook Control Handle
	[294] = "%1d",   -- CPT_LTS_HOOK
	-- Landing Gear 
	--[] = "%1d",   -- CPT_LTS_LDG_GEAR_HANDLE
	-- APU Control Panel
	[376] = "%1d",   -- CPT_LTS_APU_READY
	-- ECM Control Panel Assy
	--[] = "%1d",   -- CPT_LTS_SEL
	-- Map Gain Control Panel Assy
	[137] = "%1d",   -- CPT_LTS_SPN
	-- Height Indicator
	[290] = "%1d",   -- CPT_LTS_LOW_ALT_WARN
	-- AoA Indexer Lights
	[4] = "%1d",   -- CPT_LTS_AOA_HIGH
	[5] = "%1d",   -- CPT_LTS_AOA_CENTER
	[6] = "%1d",   -- CPT_LTS_AOA_LOW
	-- Internal Lights
	--[460] = "%.1f",   -- Console
	--[461] = "%.1f",   -- Flood
	--[462] = "%.1f",   -- NvgFlood
	--[464] = "%.1f",   -- EmerInstr
	--[465] = "%.1f",   -- EngInstFlood
	--[466] = "%.1f",   -- Instrument
	--[467] = "%.1f",   -- StbyCompass
	--[810] = "%.1f",   -- Utility
	--[463] = "%.1f",   -- Chart
	-- WCAGroupLightness
	--[521] = "%.1f",   -- WCAGroupLightness 1
	--[522] = "%.1f",   -- WCAGroupLightness 2
	--[523] = "%.1f",   -- WCAGroupLightness 3
	-- IFEI
	[468] = "%1d",   -- IFEI
	[469] = "%1d",   -- IFEI_buttons
	-- RWR
	[276] = "%1d",   -- Lower
	[273] = "%1d",   -- Limit
	[274] = "%1d",   -- Display
	--[270] = "%1d",   -- SpecialEn
	[271] = "%1d",   -- Special
	[267] = "%1d",   -- Enable
	[268] = "%1d",   -- Offset
	[264] = "%1d",   -- Fail
	[265] = "%1d",   -- Bit
	[520] = "%.1f",   -- RwrLightsBrightness
	-- CMDS
	[516] = "%1d"   -- ecmJett  
}
ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) <- special function for get frequency data
	]]
end

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000), 2) -- export to Hardware '2' Config
	]]

	--=====================================================================================
	--[[
	ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
	ExportScript.Tools.WriteToLog('CMSP: '..ExportScript.Tools.dump(list_indication(7)))
	
	local ltmp1 = 0
	for ltmp2 = 0, 13, 1 do
		ltmp1 = list_indication(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		--ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
	]]
--[[
	local ltmp1 = 0
	for ltmp2 = 1, 73, 1 do
		ltmp1 = GetDevice(ltmp2)
		ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
		ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
	end
]]
end

-----------------------------
--     Custom functions    --
-----------------------------