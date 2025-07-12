package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.d.d;

public class TrackConfigChangedCallback
  extends Callback
{
  public TrackConfigChangedCallback()
  {
    super(12);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean) {
      d.驶(paramContext, paramContext.getPackageName());
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.TrackConfigChangedCallback
 * JD-Core Version:    0.7.0.1
 */