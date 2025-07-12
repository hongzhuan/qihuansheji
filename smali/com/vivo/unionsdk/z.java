package com.vivo.unionsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;

class z
  extends BroadcastReceiver
{
  z(w paramw) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    paramContext = null;
    paramIntent = paramIntent.getData();
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    m.驶("UnionManager", "onReceive, action = " + str + ", pkgName = " + paramContext);
    if (!"com.vivo.sdkplugin".equals(paramContext)) {}
    do
    {
      return;
      if ("android.intent.action.PACKAGE_ADDED".equals(str))
      {
        w.藨(this.驶).removeCallbacks(w.藦(this.驶));
        w.藨(this.驶).postDelayed(w.藦(this.驶), 500L);
        return;
      }
    } while (!"android.intent.action.PACKAGE_REMOVED".equals(str));
    w.藨(this.驶).removeCallbacks(w.藦(this.驶));
    w.藨(this.驶).postDelayed(w.藦(this.驶), 500L);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.z
 * JD-Core Version:    0.7.0.1
 */