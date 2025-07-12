package com.vivo.unionsdk.cmd;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import com.vivo.unionsdk.a.s;
import com.vivo.unionsdk.ar;
import com.vivo.unionsdk.g;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.w;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class JumpUtils
{
  public static final String PAYMENT_EXTRA_NAME = "payment_params";
  public static final String PAY_ONLINE_VIVO_SIGNATURE = "accessKey";
  public static final String PAY_PARAMS_KEY_PRODUCT_PRICE = "productPrice";
  public static final String PAY_PARAM_APPID = "appId";
  public static final String PAY_PARAM_PKG = "package";
  public static final String PAY_PARAM_PRICE = "price";
  public static final String PAY_PARAM_PRODUCT_DEC = "productDes";
  public static final String PAY_PARAM_PRODUCT_NAME = "productName";
  public static final String PAY_PARAM_SIGNATURE = "signature";
  public static final String PAY_PARAM_TRANSNO = "transNo";
  public static final String PAY_PARAM_USEMODE = "useMode";
  public static final String PAY_PARAM_USERID = "userId";
  public static final String PAY_PARAM_USE_WEIXIN_PAY = "useWeixinPay";
  private static final String TAG = "JumpUtils";
  
  public static boolean jumpForCompat(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2, Map paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    ((Map)localObject).put("orientation", String.valueOf(paramInt1));
    ((Map)localObject).put("fullscreen", String.valueOf(true));
    ((Map)localObject).put("clientPkg", paramString2);
    ((Map)localObject).put("sdkVersion", String.valueOf(paramInt2));
    paramMap = ar.驶(paramString1, (Map)localObject);
    if (TextUtils.isEmpty(paramMap))
    {
      m.示("JumpUtils", "jumpForCompat, but jump uri is null!");
      return false;
    }
    localObject = new Intent("android.intent.action.VIEW");
    ((Intent)localObject).setData(Uri.parse(paramMap));
    if ((localObject != null) && (paramString1.contains("vivounion://union.vivo.com/openjump")))
    {
      if (!(w.驶().式() instanceof s)) {
        break label160;
      }
      ((Intent)localObject).setPackage(paramString2);
    }
    for (;;)
    {
      try
      {
        paramContext.startActivity((Intent)localObject);
        return true;
      }
      catch (ActivityNotFoundException paramContext)
      {
        label160:
        m.示("JumpUtils", "jumpForCompat, cannot start activity: ", paramContext);
      }
      ((Intent)localObject).setPackage("com.vivo.sdkplugin");
    }
    return false;
  }
  
  public static boolean jumpForCompatApk(Activity paramActivity, int paramInt, String paramString, Map paramMap)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("oritation", paramActivity.getResources().getConfiguration().orientation);
    localIntent.putExtra("appId", paramString);
    localIntent.putExtra("sdkVersionCode", 1540);
    localIntent.putExtra("package", paramActivity.getPackageName());
    if (paramInt == 2)
    {
      localIntent.setComponent(new ComponentName("com.vivo.sdkplugin", "com.vivo.sdkplugin.activity.LoginActivity"));
      paramInt = 1;
    }
    for (;;)
    {
      if (paramInt == 0) {
        break label676;
      }
      try
      {
        paramActivity.startActivity(localIntent);
        return true;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        String str;
        m.示("JumpUtils", "jumpForCompatApk, cannot start activity: ", paramActivity);
      }
      if (paramInt == 3)
      {
        paramString = new Bundle();
        paramString.putString("transNo", (String)paramMap.get("transNo"));
        paramString.putString("accessKey", (String)paramMap.get("signature"));
        paramString.putString("appId", (String)paramMap.get("appId"));
        paramString.putString("productName", (String)paramMap.get("productName"));
        paramString.putString("productDes", (String)paramMap.get("productDes"));
        paramString.putLong("price", Long.parseLong((String)paramMap.get("productPrice")));
        paramString.putString("package", paramActivity.getPackageName());
        paramString.putString("blance", (String)paramMap.get("blance"));
        paramString.putString("vip", (String)paramMap.get("vip"));
        str = (String)paramMap.get("level");
        if (!TextUtils.isEmpty(str)) {
          paramString.putInt("level", j.驶(str, 0));
        }
        paramString.putString("party", (String)paramMap.get("party"));
        paramString.putString("roleId", (String)paramMap.get("roleId"));
        paramString.putString("roleName", (String)paramMap.get("roleName"));
        paramString.putString("serverName", (String)paramMap.get("serverName"));
        paramString.putString("extInfo", (String)paramMap.get("extInfo"));
        localIntent.putExtra("payment_params", paramString);
        localIntent.setComponent(new ComponentName("com.vivo.sdkplugin", "com.bbk.payment.PaymentActivity"));
        paramInt = 1;
      }
      else if (paramInt == 27)
      {
        paramString = new Bundle();
        paramString.putString("transNo", (String)paramMap.get("transNo"));
        paramString.putString("signature", (String)paramMap.get("signature"));
        paramString.putString("appId", (String)paramMap.get("appId"));
        paramString.putString("productName", (String)paramMap.get("productName"));
        paramString.putString("productDes", (String)paramMap.get("productDes"));
        paramString.putString("useMode", "00");
        paramString.putDouble("price", Double.parseDouble((String)paramMap.get("productPrice")));
        paramString.putString("package", paramActivity.getPackageName());
        paramString.putString("userId", "dkhsky");
        paramString.putBoolean("useWeixinPay", g.驶(paramActivity).示());
        paramMap = (String)paramMap.get("frontPayType");
        if (!TextUtils.isEmpty(paramMap)) {
          paramString.putInt("mPaymentType", Integer.parseInt(paramMap));
        }
        localIntent.putExtra("payment_params", paramString);
        localIntent.setComponent(new ComponentName("com.vivo.sdkplugin", "com.bbkmobile.iqoo.payment.PaymentActivity"));
        paramInt = 1;
      }
      else
      {
        m.式("JumpUtils", "jumpForCompatApk unknown fake type, fakeType = " + paramInt);
        paramInt = 0;
      }
    }
    label676:
    return false;
  }
  
  public static boolean jumpTo(Activity paramActivity, int paramInt, String paramString, Map paramMap)
  {
    return jumpTo(paramActivity, paramInt, paramString, paramMap, -1);
  }
  
  public static boolean jumpTo(Activity paramActivity, int paramInt1, String paramString, Map paramMap, int paramInt2)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    ((Map)localObject).put("j_type", String.valueOf(paramInt1));
    return jumpTo(paramActivity, "vivounion://union.vivo.com/openjump", paramString, (Map)localObject, paramInt2);
  }
  
  public static boolean jumpTo(Activity paramActivity, String paramString1, String paramString2, Map paramMap)
  {
    return jumpTo(paramActivity, paramString1, paramString2, paramMap, -1);
  }
  
  public static boolean jumpTo(Activity paramActivity, String paramString1, String paramString2, Map paramMap, int paramInt)
  {
    return jumpTo(paramActivity, paramString1, paramString2, paramMap, paramInt, false);
  }
  
  private static boolean jumpTo(Activity paramActivity, String paramString1, String paramString2, Map paramMap, int paramInt, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      m.示("JumpUtils", "jumpTo, but jump uri is null!");
      return false;
    }
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    boolean bool = paramString1.contains("vivounion://union.vivo.com/openjump");
    if (bool)
    {
      ((Map)localObject).put("orientation", String.valueOf(paramActivity.getResources().getConfiguration().orientation));
      ((Map)localObject).put("fullscreen", String.valueOf(j.驶(paramActivity)));
      ((Map)localObject).put("clientPkg", paramString2);
      ((Map)localObject).put("sdkVersion", String.valueOf(1540));
      paramMap = ar.驶(paramString1, (Map)localObject);
      m.始("JumpUtils", "appended jumpUri = " + paramMap);
      localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).setData(Uri.parse(paramMap));
      if (bool)
      {
        if ((!(w.驶().式() instanceof s)) && (!paramBoolean)) {
          break label253;
        }
        ((Intent)localObject).setPackage(paramString2);
      }
    }
    for (;;)
    {
      int i = paramInt;
      if (paramInt < 0) {
        i = -1;
      }
      try
      {
        paramActivity.startActivityForResult((Intent)localObject, i);
        return true;
      }
      catch (ActivityNotFoundException paramString2)
      {
        paramBoolean = paramString1.contains("vivogame://game.vivo.com/openjump");
        m.示("JumpUtils", "jumpTo, cannot start activity: gameCompat = " + paramBoolean + ", activity = " + paramActivity, paramString2);
      }
      if (!TextUtils.isEmpty((String)ar.驶(paramString1).get("t_from"))) {
        break;
      }
      ((Map)localObject).put("t_from", "com.vivo.sdkplugin.sdk");
      break;
      label253:
      ((Intent)localObject).setPackage("com.vivo.sdkplugin");
    }
    return false;
  }
  
  public static boolean jumpToAppStore(Context paramContext)
  {
    m.驶("JumpUtils", "jumpToAppStore, pkg=" + paramContext.getPackageName());
    Intent localIntent = new Intent("android.intent.action.VIEW");
    Object localObject = new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", "com.vivo.sdkplugin").build();
    localIntent.setPackage("com.bbk.appstore");
    localIntent.setData((Uri)localObject);
    localObject = new HashMap();
    ((HashMap)localObject).put("id", String.valueOf(0));
    ((HashMap)localObject).put("is_auto_down", String.valueOf(false));
    ((HashMap)localObject).put("th_name", "com.vivo.sdkplugin");
    ((HashMap)localObject).put("th_version", String.valueOf(1540));
    ((HashMap)localObject).put("th_game", paramContext.getPackageName());
    localIntent.putExtra("param", (Serializable)localObject);
    try
    {
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      m.示("JumpUtils", "jump to appStore exception, pkg=" + paramContext.getPackageName(), localException);
    }
    return j.始(paramContext, "https://appdetailh5.vivo.com.cn/detail/1873310");
  }
  
  public static boolean jumpToClientInstallActivity(Activity paramActivity, String paramString1, String paramString2, Map paramMap)
  {
    return jumpTo(paramActivity, paramString1, paramString2, paramMap, -1, true);
  }
  
  public static void jumpToGameCenter(Activity paramActivity, String paramString1, String paramString2, Map paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    jumpTo(paramActivity, paramString1, paramString2, (Map)localObject);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.JumpUtils
 * JD-Core Version:    0.7.0.1
 */