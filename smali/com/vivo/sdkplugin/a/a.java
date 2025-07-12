package com.vivo.sdkplugin.a;

import android.text.TextUtils;

public class a
{
  public static String 驶(String paramString)
  {
    int i = 4;
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    }
    int j;
    do
    {
      String[] arrayOfString;
      do
      {
        return str;
        if (!com.vivo.sdkplugin.a.a.a.始(paramString)) {
          break;
        }
        arrayOfString = paramString.split("@");
        j = arrayOfString[0].length();
        str = paramString;
      } while (j <= 3);
      if (j - 3 > 4) {}
      for (;;)
      {
        return arrayOfString[0].substring(0, i) + "**" + arrayOfString[0].substring(arrayOfString[0].length() - 1) + "@" + arrayOfString[1];
        i = j - 3;
      }
      if (com.vivo.sdkplugin.a.a.a.驶(paramString)) {
        return paramString.substring(0, 3) + "****" + paramString.substring(7);
      }
      j = paramString.length();
      if (j > 3)
      {
        if (j - 3 > 4) {}
        for (;;)
        {
          return paramString.substring(0, i) + "**" + paramString.substring(paramString.length() - 1);
          i = j - 3;
        }
      }
      if (j == 3) {
        return paramString.substring(0, 1) + "*" + paramString.substring(paramString.length() - 1);
      }
      str = paramString;
    } while (j != 2);
    return paramString.substring(0, 1) + "*";
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.sdkplugin.a.a
 * JD-Core Version:    0.7.0.1
 */