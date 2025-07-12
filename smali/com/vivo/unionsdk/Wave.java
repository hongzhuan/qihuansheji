package com.vivo.unionsdk;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;

public class Wave
{
  static
  {
    try
    {
      System.loadLibrary("vivo_account_sdk");
      return;
    }
    catch (Throwable localThrowable)
    {
      m.始("Wave", "loadLibrary error!!!");
    }
  }
  
  public static native long waveStringNet(String paramString);
  
  public static String 驶(ArrayList paramArrayList)
  {
    Object localObject = "";
    if (paramArrayList.size() > 0)
    {
      Collections.sort(paramArrayList);
      localObject = new String[paramArrayList.size()];
      int i = 0;
      while (i < paramArrayList.size())
      {
        localObject[i] = ((String)paramArrayList.get(i));
        i += 1;
      }
      localObject = 驶((String[])localObject);
    }
    return localObject;
  }
  
  private static String 驶(String... paramVarArgs)
  {
    if (paramVarArgs != null) {}
    for (;;)
    {
      String[] arrayOfString;
      int j;
      int i;
      try
      {
        arrayOfString = 驶(paramVarArgs);
        StringBuffer localStringBuffer = new StringBuffer();
        if (arrayOfString != null)
        {
          j = arrayOfString.length;
          i = 0;
          break label95;
          localStringBuffer.append(":").append(paramVarArgs.toString());
          i += 1;
          break label95;
        }
        long l = waveStringNet(localStringBuffer.toString());
        paramVarArgs = URLEncoder.encode("2|" + l, "utf-8");
        return paramVarArgs;
      }
      catch (Throwable paramVarArgs) {}
      return "";
      label95:
      if (i < j)
      {
        String str = arrayOfString[i];
        paramVarArgs = str;
        if (str == null) {
          paramVarArgs = "";
        }
      }
    }
  }
  
  private static String[] 驶(Object[] paramArrayOfObject)
  {
    String[] arrayOfString = new String[paramArrayOfObject.length];
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      Object localObject2 = paramArrayOfObject[i];
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "";
      }
      arrayOfString[i] = localObject1.toString();
      i += 1;
    }
    return arrayOfString;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.Wave
 * JD-Core Version:    0.7.0.1
 */