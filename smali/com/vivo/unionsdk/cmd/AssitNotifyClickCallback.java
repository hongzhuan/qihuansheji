package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Context;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;

public class AssitNotifyClickCallback
  extends Callback
{
  private static final String TAG = "AssitNotifyClickCallback";
  
  public AssitNotifyClickCallback()
  {
    super(10007);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    paramContext = w.驶().始();
    if ((paramContext != null) && (!paramContext.isFinishing()))
    {
      JumpCommand localJumpCommand = new JumpCommand(paramContext, getParam("jumpuri"));
      CommandClient.getInstance().sendCommandToServer(paramContext.getPackageName(), localJumpCommand);
      return;
    }
    m.示("AssitNotifyClickCallback", "doExec error, topActivity = " + paramContext);
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
    JumpUtils.jumpForCompat(paramContext, getParam("jumpuri"), paramString, CommandServer.getInstance(paramContext).getClientOrientationCompat(paramString), CommandServer.getInstance(paramContext).getClientSdkVersion(paramString), null);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.AssitNotifyClickCallback
 * JD-Core Version:    0.7.0.1
 */