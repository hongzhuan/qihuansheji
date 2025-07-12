package com.vivo.unionsdk.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.widget.Toast;
import com.vivo.unionsdk.c.e;
import com.vivo.unionsdk.d.d;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.r;
import com.vivo.unionsdk.w;
import java.util.HashMap;

public class b
  implements a.a, c.b
{
  private int 士 = 1;
  private boolean 始 = false;
  private String 式;
  private int 示;
  private a 藛;
  private c 藞;
  private Context 驶;
  
  public b(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    this.驶 = paramContext.getApplicationContext();
    this.式 = paramString;
    this.示 = paramInt;
    this.始 = paramBoolean;
    this.藞 = new c(paramContext, this);
  }
  
  private void 式(int paramInt)
  {
    this.士 = paramInt;
    w.驶().驶(this.士);
    if (((paramInt == 3) || (paramInt == 4)) && (!j.驶())) {
      Toast.makeText(this.驶, r.驶("%e8%af%b7%e5%9c%a8%e6%9d%83%e9%99%90%e7%ae%a1%e7%90%86%e4%b8%ad%e6%89%93%e5%bc%80%e2%80%9cvivo%e6%9c%8d%e5%8a%a1%e5%ae%89%e5%85%a8%e6%8f%92%e4%bb%b6%e2%80%9d%e5%85%b3%e8%81%94%e5%90%af%e5%8a%a8%e6%9d%83%e9%99%90%e5%8f%8a%e5%85%b6%e4%bb%96%e5%bf%85%e8%a6%81%e6%9d%83%e9%99%90"), 0).show();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("key", "142");
    localHashMap.put("value", String.valueOf(this.士));
    d.驶(localHashMap, this.驶, this.示, this.驶.getPackageName(), null);
  }
  
  public a 始()
  {
    return this.藛;
  }
  
  public void 始(int paramInt)
  {
    this.士 = paramInt;
  }
  
  public String 式()
  {
    return this.藞.始();
  }
  
  public int 示()
  {
    return this.士;
  }
  
  public void 驶()
  {
    boolean bool2 = true;
    int i = this.士;
    if (this.士 == 2)
    {
      m.式("InvokerManager", "init return for sdk initing!");
      return;
    }
    this.士 = 2;
    if (this.藞.驶() == null)
    {
      m.驶("InvokerManager", "init, mDebug = " + this.始 + ", preInitCode = " + i);
      boolean bool1 = bool2;
      if (!this.始) {
        if (i != 5) {
          break label99;
        }
      }
      label99:
      for (bool1 = bool2;; bool1 = false)
      {
        this.藞.驶(bool1);
        return;
      }
    }
    驶(true);
  }
  
  public void 驶(int paramInt)
  {
    if (paramInt != 0) {
      this.藛 = null;
    }
    式(paramInt);
  }
  
  public void 驶(Configuration paramConfiguration)
  {
    Object localObject = this.藞.驶();
    if (localObject != null)
    {
      localObject = ((c.a)localObject).示();
      if (localObject != null) {
        ((Resources)localObject).updateConfiguration(paramConfiguration, this.驶.getResources().getDisplayMetrics());
      }
    }
  }
  
  public void 驶(boolean paramBoolean)
  {
    m.驶("InvokerManager", "onResourceInstalled, success = " + paramBoolean);
    if (!paramBoolean)
    {
      式(5);
      return;
    }
    if (this.藛 != null) {
      this.藛.驶();
    }
    int k = j.驶(this.驶, "com.vivo.sdkplugin");
    int i;
    c.a locala;
    if (k < 0)
    {
      i = 0;
      int j = i;
      if (this.驶.getPackageName().equals("com.vszone.arena.vivo"))
      {
        j = i;
        if (k < 600) {
          j = 0;
        }
      }
      if (j == 0) {
        break label207;
      }
      this.藛 = new f(this.驶, this.式, this.示, k, this);
      locala = this.藞.驶();
      com.vivo.unionsdk.s.驶(locala.式(), locala.示());
      e.驶(this.驶);
    }
    for (;;)
    {
      this.藛.示();
      return;
      if ((this.示 == 0) && (k < 9))
      {
        i = 0;
        break;
      }
      if ((this.示 == 2) && (k < 600))
      {
        i = 0;
        break;
      }
      i = 1;
      break;
      label207:
      this.藛 = new s(this.驶, this.式, this.示, this);
      locala = this.藞.驶();
      com.vivo.unionsdk.s.驶(locala.式(), locala.示());
      e.驶(this.驶);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.b
 * JD-Core Version:    0.7.0.1
 */