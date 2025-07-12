package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class PayFailedCallback
  extends Callback
{
  private static final String IS_RECHARGE = "isRecharge";
  private static final String RESULT_CODE = "resultCode";
  private static final String RESULT_MSG = "resultMsg";
  private static final String TAG = "PayFailedCallback";
  private static final String TRANS_NO = "transNo";
  
  public PayFailedCallback()
  {
    super(30003);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    w.驶().驶(getParam("transNo"), getParam("resultCode"), getParam("resultMsg"));
  }
  
  protected void doExecCompat(Context paramContext, String paramString)
  {
    super.doExecCompat(paramContext, paramString);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.PayFailedCallback
 * JD-Core Version:    0.7.0.1
 */