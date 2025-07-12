package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.w;

public class AssitPosChangeCallBack
  extends Callback
{
  private static final String ASSIT_X = "assitX";
  private static final String ASSIT_Y = "assitY";
  
  public AssitPosChangeCallBack()
  {
    super(10004);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    w.驶().驶(j.驶(getParam("assitX"), 0), j.驶(getParam("assitY"), 0));
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.AssitPosChangeCallBack
 * JD-Core Version:    0.7.0.1
 */