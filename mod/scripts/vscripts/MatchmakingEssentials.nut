untyped
global function MatchmakingEssentials_Init

void function MatchmakingEssentials_Init() //Runs on client
{
	RunUIScript( "SetPutPlayerInMatchmakingAfterDelay", true ) //Last searched playlist, annoying when it puts you directly in the private game lobby tho
	//RunUIScript("MatchMakeinitiate", true) //check if in lobby first so it dont get called on norsthar servers
	thread LobbyInit()
}
void function LobbyInit()
{
	WaitFrame()
	GetLocalClientPlayer().ClientCommand("setplaylistvaroverrides lobby_countdown 0") //Works but maybe get it to private match only
	SetConVarBool("sv_cheats", true)
	//GetLocalClientPlayer().ClientCommand("wait_before_restarting_matchmaking_time 0") Put it in cfg
	GetLocalClientPlayer().ClientCommand("dof_enable 0")
	//GetLocalClientPlayer().ClientCommand( "createparty" )
}




