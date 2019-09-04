local Pins = LibStub("HereBeDragons-Pins-2.0");

-- Players faction
local playerFaction = UnitFactionGroup("player")

function OnEnter(self,motion)
	GameTooltip:SetOwner(self,"ANCHOR_TOP");
	--GameTooltip:SetText("Flight Master");
	GameTooltip:AddLine(tostring(self.tooltipText), 1,1,1);
	GameTooltip:Show();
end

function OnLeave(self,motion)
	GameTooltip:Hide();
end

function getFrameIcon(size) 
	frame = CreateFrame("Frame", "Flight Master");
	frame:SetFrameStrata("BACKGROUND");
	frame:SetWidth(16 * size);
	frame:SetHeight(16 * size);
	frame.tooltipText = "Flight Master";
	frame.Icon = frame:CreateTexture(nil, "BACKGROUND");
	frame.Icon:SetTexture("Interface\\Addons\\Demonly-FP\\Icons\\flight.blp");
	frame.Icon:SetAllPoints(frame);
	frame.Icon.texture = frame.Icon;
	frame:SetScript("OnEnter", OnEnter);
	frame:SetScript("OnLeave", OnLeave);
	
	return frame;
end

function createMapPin(x,y,mapid)
	Pins:AddWorldMapIconMap("Demonly-FP-map",getFrameIcon(1),mapid,x/100,y/100,HBD_PINS_WORLDMAP_SHOW_WORLD);
	Pins:AddMinimapIconMap("Demonly-FP-mini",getFrameIcon(1),mapid,x/100,y/100,true,true);
end

if playerFaction == "Alliance" then
-- Eastern Kingdoms
	-- Stormwind City
	createMapPin(66.3,62.1,1453);
	-- Hillsbrad Footlands
	createMapPin(49,52,1424);
	-- Arathi Highlands
	createMapPin(45.8,46.2,1417);
	-- Westfall
	createMapPin(56.6,52.6,1436);
	-- Loch Modan
	createMapPin(33.8,50.8,1432);
	-- Wetlands
	createMapPin(9.6,59.6,1437);
	-- Blasted Lands
	createMapPin(65.6,24.4,1419);
	-- The Hinterlands
	createMapPin(10,44.6,1425);
	-- Redridge Mountains
	createMapPin(30.6,59.6,1433);
	-- Duskwood
	createMapPin(77.6,44.4,1431);
	-- Stranglethorn Vale
	createMapPin(27.4,77.6,1434);
	-- Ironforge
	createMapPin(56.6,48.0,1455);
	-- Western Plaguelands
	createMapPin(43.0,85.2,1422);
	-- Burning Steppes
	createMapPin(84.4,68.2,1428);
	-- Searing Gorge
	createMapPin(37.8,30.6,1427);
	-- Eastern Plaguelands
	createMapPin(81.6,59.2,1423);


-- Kalimdor
	-- Barrens
	createMapPin(63.0,37.0,1413);
	-- Tanaris
	createMapPin(51.0,29.2,1446);
	-- Dustwallow Marsh
	createMapPin(67.4,51.2,1445);
	-- Darkshore
	createMapPin(36.4,45.6,1439);
	-- Teldrassil
	createMapPin(58.4,94,1438);
	-- Moonglade
	createMapPin(48,67.2,1450);
	-- Ashenvale
	createMapPin(34.4,48,1440);
	-- Feralas
	createMapPin(89.4,45.8,1444);
	createMapPin(30.2,43.2,1444);
	-- Desolace
	createMapPin(64.6,10.4,1443);
	-- Stonetalon Mountains
	createMapPin(36.4,7.2,1442);
	-- Felwood
	createMapPin(62.6,24.2,1448);
	-- Azshara
	createMapPin(11.8,77.6,1447);
	-- Winterspring
	createMapPin(62.2,36.6,1452);
	-- Silithus
	createMapPin(50.6,34.4,1451);
end