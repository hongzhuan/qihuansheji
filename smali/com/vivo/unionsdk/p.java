package com.vivo.unionsdk;

import android.content.Context;
import android.os.Handler;
import com.vivo.unionsdk.d.c;
import com.vivo.unionsdk.d.d;
import java.util.HashMap;

public class p
{
  private Handler 士;
  private boolean 始 = true;
  private boolean 式 = false;
  private long 示 = 0L;
  private Runnable 藛;
  private int 藞;
  private Context 驶;
  
  p(Context paramContext, int paramInt)
  {
    this.驶 = paramContext;
    this.藞 = paramInt;
    this.藛 = new q(this);
  }
  
  private void 藞()
  {
    long l = g.驶(this.驶).式(0L);
    HashMap localHashMap;
    if (l > 0L)
    {
      if (this.藞 != 0) {
        break label97;
      }
      localHashMap = new HashMap();
      localHashMap.put("startTime", String.valueOf(System.currentTimeMillis()));
      localHashMap.put("key", "025");
      localHashMap.put("value", String.valueOf(l));
      d.驶(localHashMap, this.驶, this.藞, this.驶.getPackageName(), null);
    }
    for (;;)
    {
      g.驶(this.驶).士();
      return;
      label97:
      localHashMap = new HashMap();
      localHashMap.put("startTime", String.valueOf(System.currentTimeMillis()));
      localHashMap.put("key", "109");
      localHashMap.put("value", String.valueOf(l));
      d.驶(localHashMap, this.驶, this.藞, this.驶.getPackageName(), null);
    }
  }
  
  private void 藟()
  {
    long l = System.currentTimeMillis() - this.示;
    if ((l > 0L) && (this.示 > 0L)) {
      g.驶(this.驶).始(l);
    }
  }
  
  private void 藠()
  {
    if (this.士 == null) {
      return;
    }
    this.士.postDelayed(this.藛, 300000L);
  }
  
  private void 藡()
  {
    if (this.士 == null) {
      return;
    }
    this.士.removeCallbacks(this.藛);
  }
  
  public void 士()
  {
    if (this.士 == null) {
      return;
    }
    藡();
    this.始 = true;
    藟();
    藞();
  }
  
  public void 始()
  {
    if (this.士 == null) {
      return;
    }
    this.始 = false;
    藞();
    this.示 = System.currentTimeMillis();
    HashMap localHashMap;
    if (this.藞 == 0)
    {
      localHashMap = new HashMap();
      localHashMap.put("startTime", String.valueOf(System.currentTimeMillis()));
      localHashMap.put("key", "024");
      localHashMap.put("value", "--");
      d.驶(localHashMap, this.驶, this.藞, this.驶.getPackageName(), null);
    }
    for (;;)
    {
      藠();
      return;
      localHashMap = new HashMap();
      localHashMap.put("startTime", String.valueOf(System.currentTimeMillis()));
      localHashMap.put("key", "108");
      localHashMap.put("value", "--");
      d.驶(localHashMap, this.驶, this.藞, this.驶.getPackageName(), null);
    }
  }
  
  public void 式()
  {
    if ((this.士 == null) || (this.式)) {
      return;
    }
    this.式 = true;
    this.示 = System.currentTimeMillis();
    藠();
  }
  
  public void 示()
  {
    if ((this.士 == null) || (!this.式)) {
      return;
    }
    this.式 = false;
    藡();
    藟();
    this.示 = 0L;
  }
  
  public boolean 藛()
  {
    return this.始;
  }
  
  public void 驶()
  {
    if (this.士 == null)
    {
      this.士 = c.驶(this.驶).驶();
      始();
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.p
 * JD-Core Version:    0.7.0.1
 */