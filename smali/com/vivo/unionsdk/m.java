package com.vivo.unionsdk;

import android.util.Log;

public class m
{
  private static String 始 = "";
  private static String 式 = "VivoUnion.";
  public static final boolean 驶 = j.驶("persist.sys.log.ctrl", "no").equals("yes");
  
  public static void 始(String paramString1, String paramString2)
  {
    Log.d(式 + paramString1, 始 + paramString2);
  }
  
  public static void 始(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.d(式 + paramString1, 始 + paramString2, paramThrowable);
  }
  
  public static void 式(String paramString1, String paramString2)
  {
    Log.w(式 + paramString1, 始 + paramString2);
  }
  
  public static void 式(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.w(式 + paramString1, 始 + paramString2, paramThrowable);
  }
  
  public static void 示(String paramString1, String paramString2)
  {
    Log.e(式 + paramString1, 始 + paramString2);
  }
  
  public static void 示(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e(式 + paramString1, 始 + paramString2, paramThrowable);
  }
  
  public static void 驶(a parama)
  {
    始 = parama.toString();
  }
  
  public static void 驶(String paramString1, String paramString2)
  {
    Log.i(式 + paramString1, 始 + paramString2);
  }
  
  public static void 驶(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.i(式 + paramString1, 始 + paramString2, paramThrowable);
  }
  
  public static enum a
  {
    private String 示;
    
    static
    {
      始 = new a("SDKTOAPK", 1, "[SA]");
      式 = new a("SDKTOSDK", 2, "[SS]");
    }
    
    private a(String paramString)
    {
      this.示 = paramString;
    }
    
    public String toString()
    {
      return this.示;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.m
 * JD-Core Version:    0.7.0.1
 */