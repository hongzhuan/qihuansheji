package com.vivo.unionsdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.os.Handler;
import java.util.HashMap;
import java.util.HashSet;

class ab
  implements Application.ActivityLifecycleCallbacks
{
  ab(w paramw) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    w.驶(this.驶, false);
    w.讬(this.驶).add(paramActivity);
    if (((w.藛(this.驶) == 0) || (w.藛(this.驶) == 1)) && (w.賭(this.驶).藛())) {
      w.賭(this.驶).始();
    }
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    w.驶(this.驶, false);
    if (w.俅(this.驶) == paramActivity) {
      w.式(this.驶, null);
    }
    w.驶(this.驶, paramActivity, 0L, "[Activity Destroy]");
    if (w.藟(this.驶) != null) {
      w.藟(this.驶).remove(paramActivity.getClass().getCanonicalName());
    }
    w.讬(this.驶).remove(paramActivity);
    w.藨(this.驶).postDelayed(new ac(this), 200L);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    w.驶(this.驶, false);
    w.驶(this.驶, paramActivity, 200L, "[Activity Pause]");
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    if (h.驶(paramActivity.getClass().getCanonicalName()))
    {
      w.式(this.驶, paramActivity);
      w.驶(this.驶, true);
      w.示(this.驶, paramActivity);
    }
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    w.驶(this.驶, false);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    w.驶(this.驶, false);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    w.驶(this.驶, false);
    w.驶(this.驶, paramActivity, 0L, "[Activity Stop]");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ab
 * JD-Core Version:    0.7.0.1
 */