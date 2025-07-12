package com.vivo.unionsdk.cmd;

import android.content.Context;

public class ShowAssitViewCommand
  extends BaseCommand
{
  private static final String ASSIT_X = "assitX";
  private static final String ASSIT_Y = "assitY";
  private static final String FULL_SCREEN = "fullScreen";
  private static final String SHOW_REASON = "assitReason";
  
  public ShowAssitViewCommand()
  {
    super(10001);
  }
  
  public void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(int paramInt1, int paramInt2, boolean paramBoolean, String paramString)
  {
    addParam("assitX", String.valueOf(paramInt1));
    addParam("assitY", String.valueOf(paramInt2));
    addParam("fullScreen", String.valueOf(paramBoolean));
    addParam("assitReason", paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.ShowAssitViewCommand
 * JD-Core Version:    0.7.0.1
 */