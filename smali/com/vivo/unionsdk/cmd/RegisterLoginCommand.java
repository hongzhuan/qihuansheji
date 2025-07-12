package com.vivo.unionsdk.cmd;

import android.content.Context;

public class RegisterLoginCommand
  extends BaseCommand
{
  private static final String OPENID = "openId";
  private static final String SK = "sk";
  private static final String TOKEN = "token";
  private static final String USERNAME = "username";
  
  public RegisterLoginCommand()
  {
    super(16);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    addParam("openId", paramString1);
    addParam("token", paramString2);
    addParam("username", paramString3);
    addParam("sk", paramString4);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.RegisterLoginCommand
 * JD-Core Version:    0.7.0.1
 */