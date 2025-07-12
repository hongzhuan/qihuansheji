package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.Context;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;

public class AssitItemClickCallback
  extends Callback
{
  private static final String TAG = "AssitItemClickCallback";
  
  public AssitItemClickCallback()
  {
    super(10003);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    Activity localActivity = w.驶().始();
    if ((localActivity != null) && (!localActivity.isFinishing()))
    {
      Object localObject = getParam("jumpuri");
      paramContext = new HookUtil().hookActivity(localActivity, paramContext.getPackageName());
      localObject = new JumpCommand(paramContext, (String)localObject);
      CommandClient.getInstance().sendCommandToServer(paramContext.getPackageName(), (BaseCommand)localObject);
      return;
    }
    m.示("AssitItemClickCallback", "doExec error, topActivity = " + localActivity);
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.AssitItemClickCallback
 * JD-Core Version:    0.7.0.1
 */