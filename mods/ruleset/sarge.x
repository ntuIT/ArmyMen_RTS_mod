NORK       J                                       ///////////////////////////////////////////////////////////////////////////////
//
// Copyright 2000-2002 Pandemic Studios
//
// Army Men RTS - Mod Configuration File
//

Description("#mods.ruleset.sarge.title");

Author("Army Men RTS Team");
Homepage("http://www.pandemicstudios.com");

Files("Type")
{
  Add("sarge_types.cfg");
}

StartActionAll()
{
  NewObjective("startstuff");

}

StartActionAvailable()
{
  NewObjective("sarge.check");
  NewObjective("common.killallenemy");
  NewObjective("common.aivictory");
  NewObjective("common.eliminate");
}

//////////////////////////////////////////////////////////////////////////////
//
// Copyright 1997-99 Pandemic Studios
//
// Dark Reign II
//

CreateObjectType("startstuff","Objective")
{
  Condition("TRUE");
  Action()
  {
          // music

      // objective
      DisplayObjective("Add","dobj_base",0)
      {
        Text("#mods.ruleset.sarge.objective2");
      }

  }
}

CreateObjectType("sarge.check", "Objective")
{
  // Do I have a Sarge?
    Condition("HaveType")
    {
      Type("army.unit.sarge")
      {
        Operator("==");
        Amount(0);
      }
    }
  Action()
  {
     SelfDestruct();
  }
}


    mod.cfg8   K      sarge_types.cfg?  ?  