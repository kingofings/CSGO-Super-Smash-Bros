public Action Command_Damage (int client, int args) {
  char arg[20];
  float dmg;
  GetCmdArg(1, arg, sizeof(arg));
  dmg = StringToFloat(arg);
  for(int i = 1; i <= MaxClients; i++)
  {
    if(IsValidClient(i)) fPlayerDMG[i] = dmg;
  }
}