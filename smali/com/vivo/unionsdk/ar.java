package com.vivo.unionsdk;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ar
{
  private static String 驶(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2 == null) {
      return paramString1;
    }
    try
    {
      str = URLEncoder.encode(paramString2, "UTF-8");
      paramString2 = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      for (;;)
      {
        String str;
        localUnsupportedEncodingException1.printStackTrace();
        continue;
        paramString3 = "";
      }
    }
    if (paramString3 != null)
    {
      try
      {
        str = URLEncoder.encode(paramString3, "UTF-8");
        paramString3 = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        for (;;)
        {
          localUnsupportedEncodingException2.printStackTrace();
        }
      }
      return paramString1 + "&" + paramString2 + "=" + paramString3;
    }
  }
  
  public static String 驶(String paramString, Map paramMap)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramMap != null)
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Object localObject = (Map.Entry)paramMap.next();
          str = (String)((Map.Entry)localObject).getKey();
          localObject = (String)((Map.Entry)localObject).getValue();
          if (str != null) {
            paramString = 驶(paramString, str, (String)localObject);
          }
        }
        if (!paramString.contains("?")) {
          break label90;
        }
        str = paramString;
      }
    }
    return str;
    label90:
    return paramString.replaceFirst("&", "?");
  }
  
  public static HashMap 驶(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.split("[?]");
      if (paramString.length > 1) {
        paramString = paramString[1];
      }
    }
    for (;;)
    {
      String[] arrayOfString1 = paramString.split("[&]");
      int j = arrayOfString1.length;
      int i = 0;
      label47:
      String[] arrayOfString2;
      String str;
      if (i < j)
      {
        arrayOfString2 = arrayOfString1[i].split("[=]");
        if (arrayOfString2.length > 1)
        {
          str = arrayOfString2[1];
          paramString = str;
          if (TextUtils.isEmpty(str)) {}
        }
      }
      try
      {
        paramString = URLDecoder.decode(str, "UTF-8");
        localHashMap.put(arrayOfString2[0], paramString);
        for (;;)
        {
          i += 1;
          break label47;
          paramString = paramString[0];
          break;
          localHashMap.put(arrayOfString2[0], "");
        }
        return localHashMap;
      }
      catch (UnsupportedEncodingException paramString)
      {
        for (;;)
        {
          paramString = str;
        }
      }
    }
  }
  
  public static String[] 驶(HashMap paramHashMap)
  {
    Object localObject = new ArrayList();
    if (paramHashMap != null)
    {
      paramHashMap = paramHashMap.entrySet().iterator();
      while (paramHashMap.hasNext())
      {
        String str = (String)((Map.Entry)paramHashMap.next()).getValue();
        if (str == null) {
          ((ArrayList)localObject).add("");
        } else {
          ((ArrayList)localObject).add(str);
        }
      }
    }
    paramHashMap = Wave.驶((ArrayList)localObject);
    try
    {
      localObject = URLDecoder.decode(paramHashMap, "utf-8");
      paramHashMap = (HashMap)localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return new String[] { "s", paramHashMap };
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.ar
 * JD-Core Version:    0.7.0.1
 */