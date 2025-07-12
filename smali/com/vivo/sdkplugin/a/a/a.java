package com.vivo.sdkplugin.a.a;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class a
{
  public static boolean 始(String paramString)
  {
    boolean bool2 = TextUtils.isEmpty(paramString);
    if (!paramString.contains("@")) {}
    for (boolean bool1 = true; (bool1 | bool2); bool1 = false) {
      return false;
    }
    return Pattern.compile("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$").matcher(paramString).matches();
  }
  
  public static boolean 驶(String paramString)
  {
    return Pattern.compile("^[0-9]{11}$").matcher(paramString).matches();
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.sdkplugin.a.a.a
 * JD-Core Version:    0.7.0.1
 */