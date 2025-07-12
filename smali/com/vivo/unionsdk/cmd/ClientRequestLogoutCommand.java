package com.vivo.unionsdk.cmd;

import android.content.Context;

public class ClientRequestLogoutCommand
  extends BaseCommand
{
  private static final String KEY_LOGOUT_CODE = "logoutCode";
  
  public ClientRequestLogoutCommand()
  {
    super(6);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(int paramInt)
  {
    addParam("logoutCode", String.valueOf(paramInt));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.ClientRequestLogoutCommand
 * JD-Core Version:    0.7.0.1
 */