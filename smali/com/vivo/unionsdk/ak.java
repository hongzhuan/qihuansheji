package com.vivo.unionsdk;

import android.app.Activity;
import com.vivo.unionsdk.open.VivoAccountCallback;
import java.util.HashMap;
import java.util.HashSet;

class ak
  implements Runnable
{
  ak(w paramw, Activity paramActivity, VivoAccountCallback paramVivoAccountCallback) {}
  
  public void run()
  {
    if (w.藟(this.式) == null) {
      w.驶(this.式, new HashMap());
    }
    HashSet localHashSet2 = (HashSet)w.藟(this.式).get(this.驶.getClass().getCanonicalName());
    HashSet localHashSet1 = localHashSet2;
    if (localHashSet2 == null)
    {
      localHashSet1 = new HashSet();
      w.藟(this.式).put(this.驶.getClass().getCanonicalName(), localHashSet1);
    }
    localHashSet1.add(this.始);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ak
 * JD-Core Version:    0.7.0.1
 */