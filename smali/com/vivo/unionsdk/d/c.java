package com.vivo.unionsdk.d;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.vivo.unionsdk.i;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.t;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

public class c
{
  private static c 驶;
  private Context 始;
  private Handler 式;
  private String 示;
  
  private c(Context paramContext)
  {
    this.始 = paramContext;
    paramContext = new HandlerThread("vivounion_track_worker_thread");
    paramContext.start();
    this.式 = new Handler(paramContext.getLooper());
  }
  
  private String 始()
  {
    if (TextUtils.isEmpty(this.示))
    {
      this.示 = t.驶(this.始).驶();
      if (TextUtils.isEmpty(this.示))
      {
        this.示 = UUID.randomUUID().toString();
        t.驶(this.始).驶(this.示);
      }
    }
    return this.示;
  }
  
  private static void 始(HashMap paramHashMap, Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    HashMap localHashMap = paramHashMap;
    if (paramHashMap == null) {
      localHashMap = new HashMap();
    }
    localHashMap.put("model", i.驶());
    localHashMap.put("imei", i.驶(paramContext));
    localHashMap.put("emmcid", i.始());
    localHashMap.put("userid", 驶(paramContext).始());
    localHashMap.put("eventTime", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("eventDate", String.valueOf(new Date(System.currentTimeMillis())));
    localHashMap.put("version", j.驶(paramContext));
    localHashMap.put("apptype", String.valueOf(paramInt));
    localHashMap.put("packageName", paramString1);
    localHashMap.put("pkgname", "com.vivo.sdkplugin.sdk");
    localHashMap.put("openid", paramString2);
    if (paramBoolean) {
      localHashMap.put("channelInfo", d.始(paramContext, paramContext.getPackageName()));
    }
  }
  
  public static c 驶(Context paramContext)
  {
    try
    {
      if (驶 == null) {
        驶 = new c(paramContext.getApplicationContext());
      }
      paramContext = 驶;
      return paramContext;
    }
    finally {}
  }
  
  public static void 驶(HashMap paramHashMap, Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    始(paramHashMap, paramContext, paramInt, paramString1, paramString2, paramBoolean);
    if (paramInt == 0) {}
    for (paramContext = "https://st-offlinegame.vivo.com.cn";; paramContext = "https://st-onlinegame.vivo.com.cn")
    {
      m.始("TrackManager", "uploadeData, params = " + paramHashMap);
      com.vivo.unionsdk.b.d.驶(paramContext, paramHashMap, null, null);
      return;
    }
  }
  
  public Handler 驶()
  {
    return this.式;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.d.c
 * JD-Core Version:    0.7.0.1
 */