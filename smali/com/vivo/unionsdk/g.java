package com.vivo.unionsdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class g
{
  private static g 驶;
  private Context 始;
  private SharedPreferences 式;
  
  private g(Context paramContext)
  {
    this.始 = paramContext.getApplicationContext();
    this.式 = this.始.getSharedPreferences("prefs_vivounionsdk", 0);
  }
  
  public static g 驶(Context paramContext)
  {
    try
    {
      if (驶 == null) {
        驶 = new g(paramContext);
      }
      paramContext = 驶;
      return paramContext;
    }
    finally {}
  }
  
  public void 士()
  {
    驶("prefs.singlePlayTime", Long.valueOf(0L));
  }
  
  public String 始()
  {
    return this.式.getString("prefs.LastLogin.", null);
  }
  
  public void 始(long paramLong)
  {
    if (paramLong <= 0L) {
      return;
    }
    驶("prefs.singlePlayTime", Long.valueOf(式(0L) + paramLong));
  }
  
  public long 式(long paramLong)
  {
    return this.式.getLong("prefs.singlePlayTime", paramLong);
  }
  
  public String 式()
  {
    return this.式.getString("prefs.AssitSettingsCache", null);
  }
  
  public boolean 示()
  {
    return this.式.getBoolean("prefs.supportWeiXinPay", false);
  }
  
  public void 驶(int paramInt1, int paramInt2)
  {
    驶("prefs.AssitPostionX", Integer.valueOf(paramInt1));
    驶("prefs.AssitPostionY", Integer.valueOf(paramInt2));
  }
  
  public void 驶(long paramLong)
  {
    驶("prefs.apkInstallFailed", Long.valueOf(paramLong));
  }
  
  public void 驶(String paramString, Object paramObject)
  {
    if ((paramObject instanceof Integer))
    {
      this.式.edit().putInt(paramString, ((Integer)paramObject).intValue()).apply();
      return;
    }
    if ((paramObject instanceof Long))
    {
      this.式.edit().putLong(paramString, ((Long)paramObject).longValue()).apply();
      return;
    }
    if ((paramObject instanceof String))
    {
      this.式.edit().putString(paramString, (String)paramObject).apply();
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      this.式.edit().putBoolean(paramString, ((Boolean)paramObject).booleanValue()).apply();
      return;
    }
    if ((paramObject instanceof Float))
    {
      this.式.edit().putFloat(paramString, ((Float)paramObject).floatValue()).apply();
      return;
    }
    if ((paramObject instanceof Double))
    {
      this.式.edit().putFloat(paramString, ((Float)paramObject).floatValue()).apply();
      return;
    }
    throw new IllegalArgumentException("Unknown type! value = " + paramObject);
  }
  
  public int[] 驶()
  {
    return new int[] { this.式.getInt("prefs.AssitPostionX", -1), this.式.getInt("prefs.AssitPostionY", -1) };
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.g
 * JD-Core Version:    0.7.0.1
 */