package com.vivo.unionsdk.open;

import android.app.Activity;
import android.content.Context;
import com.vivo.unionsdk.w;

public class VivoUnionSDK
{
  private static final long LOGIN_INTERVAL_TIME = 1000L;
  private static long sLastLoginTime = 0L;
  
  public static void exit(Activity paramActivity, VivoExitCallback paramVivoExitCallback)
  {
    w.驶().驶(paramActivity, paramVivoExitCallback);
  }
  
  public static String getChannelInfo(Context paramContext)
  {
    return w.驶().驶(paramContext);
  }
  
  public static void getRealNameInfo(Activity paramActivity, VivoRealNameInfoCallback paramVivoRealNameInfoCallback)
  {
    w.驶().驶(paramActivity, paramVivoRealNameInfoCallback);
  }
  
  public static void initSdk(Context paramContext, String paramString, boolean paramBoolean)
  {
    VivoConfigInfo localVivoConfigInfo = new VivoConfigInfo();
    localVivoConfigInfo.setProcessName(paramContext.getPackageName());
    localVivoConfigInfo.setAppType(1);
    localVivoConfigInfo.setShowAssit(true);
    initSdk(paramContext, paramString, paramBoolean, localVivoConfigInfo);
  }
  
  public static void initSdk(Context paramContext, String paramString, boolean paramBoolean, VivoConfigInfo paramVivoConfigInfo)
  {
    w.驶().驶(paramContext, paramString, paramBoolean, paramVivoConfigInfo);
  }
  
  public static boolean isDebug()
  {
    return false;
  }
  
  public static void jumpGameCenter(Activity paramActivity)
  {
    w.驶();
    w.始(paramActivity);
  }
  
  public static void jumpTo(VivoConstants.JumpType paramJumpType)
  {
    w.驶().驶(paramJumpType);
  }
  
  public static void login(Activity paramActivity)
  {
    if (System.currentTimeMillis() - sLastLoginTime > 1000L)
    {
      sLastLoginTime = System.currentTimeMillis();
      w.驶().驶(paramActivity);
    }
  }
  
  public static void pay(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback)
  {
    w.驶().驶(paramActivity, paramVivoPayInfo, paramVivoPayCallback);
  }
  
  public static void payNow(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback, int paramInt)
  {
    w.驶().驶(paramActivity, paramVivoPayInfo, paramVivoPayCallback, paramInt);
  }
  
  public static void recharge(Activity paramActivity, VivoRechargeInfo paramVivoRechargeInfo, VivoPayCallback paramVivoPayCallback)
  {
    w.驶().驶(paramActivity, paramVivoRechargeInfo, paramVivoPayCallback);
  }
  
  public static void registerAccountCallback(Activity paramActivity, VivoAccountCallback paramVivoAccountCallback)
  {
    w.驶().驶(paramActivity, paramVivoAccountCallback);
  }
  
  public static void registerLoginInfo(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    w.驶().驶(paramActivity, paramString1, paramString2, paramString3, paramString4);
  }
  
  public static void reportRoleInfo(VivoRoleInfo paramVivoRoleInfo)
  {
    w.驶().驶(paramVivoRoleInfo);
  }
  
  public static void requestCommunityInfo(VivoCommunityCallback paramVivoCommunityCallback)
  {
    w.驶().驶(paramVivoCommunityCallback);
  }
  
  public static void reset()
  {
    w.驶().藥();
  }
  
  public static void sendCommand(Context paramContext, String paramString1, String paramString2, VivoCallback paramVivoCallback)
  {
    w.驶().驶(paramContext, paramString1, paramString2, paramVivoCallback);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.open.VivoUnionSDK
 * JD-Core Version:    0.7.0.1
 */