package com.vivo.unionsdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.as;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.SendChannelInfoCommand;
import com.vivo.unionsdk.t;

public class a
{
  public static void 驶(Context paramContext, String paramString)
  {
    String str = t.驶(paramContext).始();
    if (!TextUtils.isEmpty(str))
    {
      paramContext = new SendChannelInfoCommand();
      paramContext.setParams(str);
      CommandClient.getInstance().sendCommandToServer(paramString, paramContext);
      return;
    }
    as.驶(new b(paramContext, paramString));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.d.a
 * JD-Core Version:    0.7.0.1
 */