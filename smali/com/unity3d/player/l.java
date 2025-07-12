package com.unity3d.player;

import android.os.Build.VERSION;

public final class l
{
  static final boolean a;
  static final boolean b;
  static final g c;
  static final f d;
  
  static
  {
    Object localObject2 = null;
    boolean bool2 = true;
    boolean bool1;
    if (Build.VERSION.SDK_INT >= 11)
    {
      bool1 = true;
      a = bool1;
      if (Build.VERSION.SDK_INT < 12) {
        break label76;
      }
      bool1 = bool2;
      label28:
      b = bool1;
      if (!a) {
        break label81;
      }
    }
    label76:
    label81:
    for (Object localObject1 = new e();; localObject1 = null)
    {
      c = (g)localObject1;
      localObject1 = localObject2;
      if (b) {
        localObject1 = new d();
      }
      d = (f)localObject1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label28;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.l
 * JD-Core Version:    0.7.0.1
 */