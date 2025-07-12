package com.vivo.unionsdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.vivo.unionsdk.t;
import java.util.HashMap;

public class d
{
  public static String 始(Context paramContext, String paramString)
  {
    String str2 = t.驶(paramContext).始();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      a.驶(paramContext, paramString);
      str1 = null;
    }
    return str1;
  }
  
  public static void 驶(Context paramContext)
  {
    c.驶(paramContext);
  }
  
  public static void 驶(Context paramContext, String paramString) {}
  
  public static void 驶(HashMap paramHashMap, Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    驶(paramHashMap, paramContext, paramInt, paramString1, paramString2, true);
  }
  
  public static void 驶(HashMap paramHashMap, Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    c.驶(paramContext);
    c.驶(paramHashMap, paramContext, paramInt, paramString1, paramString2, paramBoolean);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.d.d
 * JD-Core Version:    0.7.0.1
 */