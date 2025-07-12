package com.vivo.sdkplugin.a;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.m;
import java.util.HashMap;

public class c
{
  private static c 驶;
  private Context 始;
  private HashMap 式 = new HashMap();
  private HashMap 示 = new HashMap();
  
  public static c 驶()
  {
    try
    {
      if (驶 == null) {
        驶 = new c();
      }
      c localc = 驶;
      return localc;
    }
    finally {}
  }
  
  public d 始(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (this.式.size() <= 0)) {
      return null;
    }
    paramString = (String)this.式.get(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return (d)this.示.get(paramString);
  }
  
  public d 驶(String paramString)
  {
    return (d)this.示.get(paramString);
  }
  
  public void 驶(Context paramContext)
  {
    if (this.始 != null) {
      return;
    }
    this.始 = paramContext.getApplicationContext();
  }
  
  public void 驶(String paramString, int paramInt)
  {
    this.式.remove(paramString);
  }
  
  public void 驶(String paramString, d paramd1, d paramd2)
  {
    m.驶("UnionAccountManager", "sdk receive remote login，cliPkg = " + paramString + ", current = " + this.始.getPackageName());
    if (this.始.getPackageName().equals(paramString)) {}
    synchronized (this.示)
    {
      this.示.put(paramd1.驶(), paramd1);
      if (paramd2 != null) {
        this.示.put(paramd2.驶(), paramd2);
      }
      this.式.put(paramString, paramd1.驶());
      return;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.sdkplugin.a.c
 * JD-Core Version:    0.7.0.1
 */