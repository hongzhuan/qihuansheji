package com.vivo.unionsdk.cmd;

import android.content.Context;

public class HideAssitViewCommand
  extends BaseCommand
{
  private static final String HIDE_DELAY = "hideDelay";
  private static final String HIDE_REASON = "assitReason";
  
  public HideAssitViewCommand()
  {
    super(10002);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(long paramLong, String paramString)
  {
    addParam("hideDelay", String.valueOf(paramLong));
    addParam("assitReason", paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.HideAssitViewCommand
 * JD-Core Version:    0.7.0.1
 */