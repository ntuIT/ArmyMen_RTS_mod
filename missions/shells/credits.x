NORK       ?     ?                                  //////////////////////////////////////////////////////////////////////////
//
// Pandemic Studios
//
// Code-Generated Configuration File
//

RuleSet("None");

WorldInfo()
{
  CellMapX(8);
  CellMapZ(8);
  MiniMapRotation(315.000000);
}

Environment()
{
  Rain();

  Light()
  {
    CycleTime(600.000000);
    CurrentTime(0.300000);
    LastTime(0.300000);
    StartTime(0.300000);
    DayStartTime(0.250000);
    DayEndTime(0.750000);
    SunriseStartTime(0.200000);
    SunriseEndTime(0.300000);
    SunsetStartTime(0.700000);
    SunsetEndTime(0.800000);
    Season(0.000000);

    Colors()
    {
      Add()
      {
        Fraction(0.500000);
        Ambient(0, 0, 0, 255);
        Sun(0, 0, 0, 255);
        Fog(0, 0, 0, 255);
      }
    }
  }
}

DefineTeams()
{
  CreateTeam("A", 0)
  {
    Color(0, 0, 0);

    Relations()
    {
      With("A", "Ally");
    }

    DefaultClient(1);
    AvailablePlay(1);
    HasStats(1);
    PermanentRadar(1);
    RequireAI(0);
    Side("army");
    SideFixed(1);
    Objectives();
    StartPoint(0.100000, 0.100000);
    StartYaw(0.000000);
    Personality("None");
    PainCurrentCluster(0);
    UniqueScriptId(0);
    Storage();
  }
}

World("shell");
Camera();

Physics()
{
  Gravity(9.800000);
}

MissionVar();
#include "if_shell_credits.cfg"    game.cfg8   @      if_game.cfgx         	types.cfg?      