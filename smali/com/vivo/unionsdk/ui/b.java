package com.vivo.unionsdk.ui;

import android.app.Activity;
import com.vivo.unionsdk.m;

public class b
{
  public static a 驶(Activity paramActivity, c paramc)
  {
    int i = paramc.驶();
    paramc = paramc.始();
    switch (i)
    {
    default: 
      m.示("FakeFactory", "non matched fake type! fakeType = " + i);
      return null;
    case 26: 
      return new com.vivo.unionsdk.a(paramActivity, paramc);
    }
    return new d(paramActivity, paramc);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ui.b
 * JD-Core Version:    0.7.0.1
 */