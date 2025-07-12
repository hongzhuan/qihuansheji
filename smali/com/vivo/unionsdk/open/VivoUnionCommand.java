package com.vivo.unionsdk.open;

import android.content.Context;
import com.vivo.unionsdk.cmd.BaseCommand;

public class VivoUnionCommand
  extends BaseCommand
{
  private static final String TAG = "VivoUnionCommand";
  private static final String VIVO_COMMAND_CODE = "VivoCommandCode";
  private static final String VIVO_COMMAND_PARAMS = "VivoCommandParams";
  
  public VivoUnionCommand()
  {
    super(15);
  }
  
  protected void doExec(Context paramContext, String paramString) {}
  
  public void setCommandParams(String paramString1, String paramString2)
  {
    addParam("VivoCommandCode", paramString1);
    addParam("VivoCommandParams", paramString2);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoUnionCommand
 * JD-Core Version:    0.7.0.1
 */