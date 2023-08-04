state("stdrt")
{
  string255 Frame : 0xB24E0, 0x10, 0x0;
}

startup
{
	settings.Add("tvgm", true, "TV Game");
	settings.Add("btu", true, "Bootup", "tvgm");
	settings.Add("jwf", true, "Joe's Wonder Farm", "tvgm");
	settings.Add("thp", true, "Treehug Park", "tvgm");
	settings.Add("tts", true, "Twisty Sewers", "tvgm");
	settings.Add("hta", true, "Hattrick's Academy", "tvgm");
	settings.Add("ext", true, "Exit", "tvgm");
	settings.Add("stdo", true, "Studio");
	settings.Add("dor", true, "Door", "stdo");
	settings.Add("rom", true, "Room", "stdo");
	settings.Add("haw", true, "Hallway", "stdo");
	settings.Add("blkt", true, "Blackout");
	settings.Add("bks", true, "Blackout Start", "blkt");
	settings.Add("ffs", true, "Find Fuses", "blkt");
	settings.Add("wlk", true, "Walking", "blkt");
	settings.Add("mini", true, "Minigame's");
	settings.Add("mg1", true, "Minigame 1", "mini");
	settings.Add("mg2", true, "Minigame 2", "mini");
	settings.Add("zx3", true, "Zmimxmav 3", "mini");
	settings.Add("endg", true, "Ending's");
	settings.Add("neg", true, "Neglect Ending", "endg");
	settings.Add("hap", true, "Happy Ending", "endg");
	settings.Add("tru", true, "True Ending", "endg");
	settings.Add("f2", true, "F2");
}

start
{
    if (current.Frame == "Other_Intro" && old.Frame == "Main_Menu")
        return true;
    
}

reset
{
    if (current.Frame == "Other_Intro" && old.Frame == "Main_Menu")
        return true;
    
}

split
{
    if (current.Frame == "PorkchopGame_StartScreen" && old.Frame == "Other_Intro"                   && settings["btu"] == true ||
	current.Frame == "PorkchopGame_StartScreen" && old.Frame == "Adventure_Hallway"             && settings["btu"] == true ||
	current.Frame == "PorkchopGame_Hub" && old.Frame == "PorkchopGame_StartScreen"              && settings["jwf"] == true ||
	current.Frame == "PorkchopGame_Hub" && old.Frame == "PorkchopGame_ChooseLevel"              && settings["jwf"] == true ||
	current.Frame == "PorkchopGame_Hub" && old.Frame == "PorkchopGame_TreehugPark"              && settings["jwf"] == true ||
	current.Frame == "PorkchopGame_Hub" && old.Frame == "PorkchopGame_TwistySewers"             && settings["jwf"] == true ||
	current.Frame == "PorkchopGame_Hub" && old.Frame == "PorkchopGame_HattrickAcademy"          && settings["jwf"] == true ||
	current.Frame == "PorkchopGame_TreehugPark" && old.Frame == "PorkchopGame_ChooseLevel"      && settings["thp"] == true ||
	current.Frame == "PorkchopGame_TwistySewers" && old.Frame == "PorkchopGame_ChooseLevel"     && settings["tts"] == true ||
	current.Frame == "PorkchopGame_HattrickAcademy" && old.Frame == "PorkchopGame_ChooseLevel"  && settings["hta"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "PorkchopGame_StartScreen"             && settings["ext"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "PorkchopGame_Hub"                     && settings["ext"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "PorkchopGame_TreehugPark"             && settings["ext"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "PorkchopGame_TwistySewers"            && settings["ext"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "PorkchopGame_HattrickAcademy"         && settings["ext"] == true ||
	current.Frame == "Other_Doors" && old.Frame == "PorkchopGame_Hub"                           && settings["bks"] == true ||
	current.Frame == "Other_Doors" && old.Frame == "PorkchopGame_TutorialBarn"                  && settings["bks"] == true ||
	current.Frame == "Other_Doors" && old.Frame == "Adventure_Hallway"                          && settings["dor"] == true ||
	current.Frame == "Other_Doors" && old.Frame == "Blackout_Walking"                           && settings["dor"] == true ||
	current.Frame == "Other_Doors" && old.Frame == "Other_Peephole"                             && settings["dor"] == true ||
	current.Frame == "Other_Peephole" && old.Frame == "Other_Doors"                             && settings["dor"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "Other_Doors"                          && settings["haw"] == true ||
	current.Frame == "Adventure_Hallway" && old.Frame == "Adventure_Rooms"                      && settings["haw"] == true ||
	current.Frame == "Adventure_Rooms" && old.Frame == "Adventure_Hallway"                      && settings["rom"] == true ||
	current.Frame == "Adventure_Rooms" && old.Frame == "Other_Doors"                            && settings["rom"] == true ||
	current.Frame == "Blackout_FindFuse" && old.Frame == "Other_Doors"                          && settings["ffs"] == true ||
	current.Frame == "Blackout_Walking" && old.Frame == "Blackout_FindFuse"                     && settings["wlk"] == true ||
	current.Frame == "WonderWorld1" && old.Frame == "Main_Menu"                                 && settings["mg1"] == true ||
	current.Frame == "WonderWorld2" && old.Frame == "Main_Menu"                                 && settings["mg2"] == true ||
	current.Frame == "Steven02" && old.Frame == "Main_Menu"                                     && settings["zx3"] == true ||
	current.Frame == "WarningScreen" && old.Frame == "EnterGame"                                && settings["f2"] == true  ||
	current.Frame == "EndingNeglect" && old.Frame == "12AM"                                     && settings["neg"] == true ||
	current.Frame == "EndingHappy" && old.Frame == "PorkchopGame_Hub"                           && settings["hap"] == true ||
	current.Frame == "EndingTrue" && old.Frame == "Adventure_Rooms"                             && settings["tru"] == true )
        return true;
    
}

update
{
//	print("Current Frame" + current.Frame);
}