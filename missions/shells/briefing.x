NORK       ?
     ?
                                  //////////////////////////////////////////////////////////////////////////
//
// Pandemic Studios
//
// Code-Generated Configuration File
//

DefaultRule("None");
FixedRule(0);
RequiredAddons();

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

  Time()
  {
    Day(1);
    Month(1);
    Year(2000);
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
      With("Shell", "Neutral");
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
    ResourceStore(0);
    Storage();
  }

  CreateTeam("Shell", 1)
  {
    Color(26, 123, 125);

    Relations()
    {
      With("A", "Neutral");
      With("Shell", "Ally");
    }

    DefaultClient(0);
    AvailablePlay(1);
    HasStats(1);
    PermanentRadar(1);
    RequireAI(1);
    Side("army");
    SideFixed(1);
    Objectives();
    StartPoint(0.200000, 0.200000);
    StartYaw(0.000000);
    Personality("None");
    PainCurrentCluster(0);
    UniqueScriptId(0);
    ResourceStore(0);
    Storage();
  }
}

World("yard");
Camera();

Physics()
{
  Gravity(9.800000);
}

MissionVar();
///////////////////////////////////////////////////////////////////////////////
//
// Pandemic Studios
//

Switch("gamegod.flow.action")
{
  Case("Debriefing")
  {
    Switch("gamegod.flow.state")
    {
      Case("Single")
      {
        Exec("if_shell_debriefing_single.cfg");
      }

      Case("Network")
      {
        Exec("if_shell_debriefing_network.cfg");
      }

      Default()
      {
        Error("Unknown debriefing state");
      }
    }
  }

  Default()
  {
    Error("Unexpected flow action in debriefing");
  }
}

// Reset flow control
Cmd("gamegod.flow.action ''");
Cmd("gamegod.flow.state ''");    game.cfg8   ?      if_game.cfg?  ?      	types.cfg?
      