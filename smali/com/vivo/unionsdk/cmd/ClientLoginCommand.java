package com.vivo.unionsdk.cmd;

import android.content.Context;

public class ClientLoginCommand
  extends BaseCommand
{
  private static final String ASSIT_SETTINGS_CACHE = "assitSettingsCache";
  private static final String LOGIN_RESTORE_BY_CLIENT = "loginRestoreByClient";
  
  public ClientLoginCommand()
  {
    super(3);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(String paramString, boolean paramBoolean)
  {
    addParam("assitSettingsCache", paramString);
    addParam("loginRestoreByClient", String.valueOf(paramBoolean));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.ClientLoginCommand
 * JD-Core Version:    0.7.0.1
 */