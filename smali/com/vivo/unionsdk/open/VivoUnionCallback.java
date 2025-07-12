package com.vivo.unionsdk.open;

import android.content.Context;
import com.vivo.unionsdk.cmd.Callback;
import com.vivo.unionsdk.w;

public class VivoUnionCallback
  extends Callback
{
  public static final String CALLBACK_CODE_FAILED = "-1";
  private static final String COMMON_CALLBACK_CODE = "VivoCallbackCode";
  private static final String COMMON_CALLBACK_PARAMS = "VivoCallbackParams";
  private static final String COMMON_COMMAND_CODE = "VivoCommandCode";
  
  public VivoUnionCallback()
  {
    super(40001);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    paramContext = getParam("VivoCommandCode");
    String str1 = getParam("VivoCallbackCode");
    String str2 = getParam("VivoCallbackParams");
    w.驶().始(paramContext, str1, str2);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoUnionCallback
 * JD-Core Version:    0.7.0.1
 */