VERSION = "1.0.0"

function mdp()
    local flags = os.getenv("MICRO_PLUGIN_MDP_DEFAULT_FLAGS")
    if flags == nil then
        flags = ""
    end
    if CurView():CanClose() then
    	HandleShellCommand("mdp "..flags.." "..CurView().Buf.AbsPath, true, false)
    end
end

MakeCommand("mdp", "mdp.mdp")
