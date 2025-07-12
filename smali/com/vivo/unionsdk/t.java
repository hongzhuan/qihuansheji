package com.vivo.unionsdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class t
{
  private static t 驶;
  private Context 始;
  private SharedPreferences 式;
  
  private t(Context paramContext)
  {
    this.始 = paramContext.getApplicationContext();
    this.式 = this.始.getSharedPreferences("prefs_vivounionsdk", 0);
  }
  
  private boolean 始(String paramString, boolean paramBoolean)
  {
    return this.式.getBoolean(paramString, paramBoolean);
  }
  
  public static t 驶(Context paramContext)
  {
    try
    {
      if (驶 == null) {
        驶 = new t(paramContext);
      }
      paramContext = 驶;
      return paramContext;
    }
    finally {}
  }
  
  public String 始()
  {
    return this.式.getString("prefs.channelInfo", null);
  }
  
  public void 始(String paramString)
  {
    this.式.edit().putString("prefs.channelInfo", paramString).apply();
  }
  
  public String 驶()
  {
    return this.式.getString("prefs.UserId", null);
  }
  
  public void 驶(String paramString)
  {
    this.式.edit().putString("prefs.UserId", paramString).apply();
  }
  
  public boolean 驶(String paramString, boolean paramBoolean)
  {
    return 始("prefs.ReportActivate." + paramString, paramBoolean);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.t
 * JD-Core Version:    0.7.0.1
 */