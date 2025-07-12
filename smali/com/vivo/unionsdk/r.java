package com.vivo.unionsdk;

import android.text.TextUtils;
import java.net.URLDecoder;

public class r
{
  private static String 士 = "http://ro.usdk.vivo.com.cn";
  public static final String 始 = 藛 + "/vcoineventpoint/app/collect";
  public static final String 式 = 士 + "/usrsys/sdk/isactivate";
  public static final String 示 = 藞 + "/vcoin/reportchannelinfo";
  private static String 藛 = "http://f.up.vivo.com.cn";
  private static String 藞 = "https://pay.vivo.com.cn";
  public static final String 驶 = 藛 + "/usrsys/reportUsrsys";
  
  public static String 驶(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    try
    {
      paramString = URLDecoder.decode(paramString, "UTF-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.r
 * JD-Core Version:    0.7.0.1
 */