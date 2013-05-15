module ActionSingleton 
   def ActionSingleton.Store(action) 
      @cmds = Hash.new unless @cmds 
      unless @cmdnext 
         @cmdnext = 1 
      else 
         @cmdnext += 1 
      end 
      @cmds[@cmdnext] = action 
      @cmdnext 
   end 
   def ActionSingleton.ExecCommand(idx) 
      cmd = @cmds[idx] 
      if cmd.is_a? Proc then 
         cmd.call 
      end 
      @cmds[idx] = nil 
   end 
end 

module NWScript 
   def NWScript.AssignCommand(obj, &action) 
      cmd = ActionSingleton.Store(action) 
      mod = NWScript.GetModule() 
      NWScript.SetLocalObject(mod,"RELAY_OBJECT",obj) 
      NWScript.SetLocalInt(mod,"RELAY_CMD",cmd) 
      NWScript.ExecuteScript("relay_assign",$OBJECT_SELF) 
   end 
   def NWScript.ActionDoCommand(&action) 
      cmd = ActionSingleton.Store(action) 
      mod = NWScript.GetModule() 
      NWScript.SetLocalInt(mod,"RELAY_CMD",cmd) 
      NWScript.ExecuteScript("relay_action",$OBJECT_SELF) 
   end 
   def NWScript.DelayCommand(t, &action) 
      cmd = ActionSingleton.Store(action) 
      mod = NWScript.GetModule() 
      NWScript.SetLocalFloat(mod,"RELAY_DELAY",t) 
      NWScript.SetLocalInt(mod,"RELAY_CMD",cmd) 
      NWScript.ExecuteScript("relay_delay",$OBJECT_SELF) 
   end 
end
