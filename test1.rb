include NWScript
sImiona = ""
oPC = GetFirstPC()
        while (oPC != OBJECT_INVALID)
            sImiona += GetName(oPC)+"\n"
            oPC = GetNextPC()
        end
