package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class PaySuccessCallback
  extends Callback
{
  private static final String IS_RECHARGE = "isRecharge";
  private static final String TAG = "PaySuccessCallback";
  private static final String TRANS_NO = "transNo";
  
  public PaySuccessCallback()
  {
    super(30001);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    w.驶().驶(getParam("transNo"));
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.PaySuccessCallback
 * JD-Core Version:    0.7.0.1
 */