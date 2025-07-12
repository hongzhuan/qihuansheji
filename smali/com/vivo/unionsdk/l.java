package com.vivo.unionsdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class l
{
  public static String 驶(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      if (!TextUtils.isEmpty(str3))
      {
        String str2 = (String)paramMap.get(str3);
        String str1 = str2;
        if (str2 == null) {
          str1 = "";
        }
        try
        {
          localJSONObject.put(str3, str1);
        }
        catch (JSONException localJSONException) {}
      }
    }
    if (localJSONObject == null) {
      return null;
    }
    return localJSONObject.toString();
  }
  
  public static String 驶(JSONObject paramJSONObject, String paramString)
  {
    if ((paramJSONObject == null) || (TextUtils.isEmpty(paramString)) || (paramJSONObject.isNull(paramString))) {
      return null;
    }
    try
    {
      paramJSONObject = paramJSONObject.getString(paramString);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  public static Map 驶(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    HashMap localHashMap;
    for (;;)
    {
      return null;
      try
      {
        paramString = new JSONObject(paramString);
        if (paramString != null)
        {
          Iterator localIterator = paramString.keys();
          localHashMap = new HashMap();
          while (localIterator.hasNext())
          {
            String str3 = (String)localIterator.next();
            String str2 = 驶(paramString, str3);
            String str1 = str2;
            if (str2 == null) {
              str1 = "";
            }
            localHashMap.put(str3, str1);
          }
        }
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          paramString = null;
        }
      }
    }
    return localHashMap;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.l
 * JD-Core Version:    0.7.0.1
 */