package com.vivo.unionsdk;

import android.app.Activity;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import com.vivo.sdkplugin.a.c;
import com.vivo.unionsdk.a.b;
import com.vivo.unionsdk.cmd.BaseCommand;
import com.vivo.unionsdk.cmd.ClientLaunchCommand;
import com.vivo.unionsdk.cmd.ClientLoginCommand;
import com.vivo.unionsdk.cmd.ClientReconnectRemoteCommand;
import com.vivo.unionsdk.cmd.ClientRequestLogoutCommand;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.CommandServer;
import com.vivo.unionsdk.cmd.HideAssitViewCommand;
import com.vivo.unionsdk.cmd.JumpIndirectCommand;
import com.vivo.unionsdk.cmd.JumpUtils;
import com.vivo.unionsdk.cmd.RestoreLoginStateCommand;
import com.vivo.unionsdk.cmd.ShowAssitViewCommand;
import com.vivo.unionsdk.open.VivoAccountCallback;
import com.vivo.unionsdk.open.VivoCallback;
import com.vivo.unionsdk.open.VivoCommunityCallback;
import com.vivo.unionsdk.open.VivoConfigInfo;
import com.vivo.unionsdk.open.VivoConstants.JumpType;
import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoRealNameInfoCallback;
import com.vivo.unionsdk.open.VivoRechargeInfo;
import com.vivo.unionsdk.open.VivoRoleInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class w
{
  private static int 讬 = 0;
  private static w 驶;
  private boolean 俅 = true;
  private b 士;
  private VivoPayInfo 士士;
  private Context 始;
  private Activity 始始;
  private Activity 岬 = null;
  private HashSet 岽 = new HashSet();
  private int 岽滇吹;
  private Handler 式;
  private int 式式 = -1;
  private boolean 示;
  private VivoPayCallback 示示;
  private String 藛;
  private int 藛藛;
  private String 藞;
  private String 藞藞;
  private int 藟;
  private String 藟藟;
  private HashMap 藠;
  private String 藠藠;
  private VivoExitCallback 藡;
  private String 藡藡;
  private VivoCommunityCallback 藥;
  private Runnable 藥藥 = new aa(this);
  private VivoRealNameInfoCallback 藦;
  private BroadcastReceiver 藦藦 = new z(this);
  private f 藨;
  private boolean 賭 = false;
  private VivoRechargeInfo 賭賭;
  private ArrayList 釔 = new ArrayList();
  private Map 釔п惂 = new HashMap();
  private int[] 鈦;
  private p 锕;
  private Thread 锞 = null;
  private HashMap 锞烇緸 = new HashMap();
  private ProgressDialog 驶驶;
  
  private int 俅()
  {
    return this.藟;
  }
  
  private void 士(Activity paramActivity)
  {
    if ((paramActivity != null) && (!paramActivity.isFinishing()) && (this.驶驶 != null)) {
      this.驶驶.dismiss();
    }
  }
  
  public static void 始(Activity paramActivity)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("j_type", "1");
    localHashMap.put("t_from", paramActivity.getPackageName());
    localHashMap.put("pkgName", paramActivity.getPackageName());
    localHashMap.put("origin", "841");
    localHashMap.put("union_origin", "118");
    JumpUtils.jumpToGameCenter(paramActivity, "vivogame://game.vivo.com/openjump", paramActivity.getPackageName(), localHashMap);
  }
  
  private static boolean 始(Context paramContext)
  {
    String str = 驶().藨();
    return (!TextUtils.isEmpty(str)) && (str.equals(paramContext.getPackageName()));
  }
  
  private void 式(Activity paramActivity)
  {
    if (!this.釔.contains(paramActivity)) {
      this.釔.add(paramActivity);
    }
    示("[Activity Resume]");
    if ((this.藟 == 0) && (this.釔.size() > 0)) {
      this.锕.式();
    }
  }
  
  private void 示(Activity paramActivity)
  {
    if ((paramActivity != null) && (!paramActivity.isFinishing()))
    {
      this.驶驶 = new ProgressDialog(paramActivity);
      this.驶驶.setCanceledOnTouchOutside(false);
      this.驶驶.setCancelable(false);
      this.驶驶.setMessage(r.驶("%e6%ad%a3%e5%9c%a8%e5%88%9d%e5%a7%8b%e5%8c%96%ef%bc%8c%e8%af%b7%e7%a8%8d%e5%80%99"));
      if (!this.驶驶.isShowing()) {
        this.驶驶.show();
      }
      this.式.postDelayed(new ag(this, paramActivity), 3000L);
    }
  }
  
  private void 示(String paramString)
  {
    if ((c.驶().始(this.始.getPackageName()) == null) && (!this.俅)) {
      m.驶("UnionManager", "show assist view, not login, mAutoShowAssist = " + this.俅);
    }
    while (this.釔.size() <= 0) {
      return;
    }
    if (this.鈦 == null) {
      this.鈦 = g.驶(this.始).驶();
    }
    Activity localActivity = 始();
    if (localActivity != null) {}
    for (boolean bool = j.驶(localActivity);; bool = true)
    {
      驶(this.始.getPackageName(), this.鈦[0], this.鈦[1], bool, paramString);
      return;
    }
  }
  
  private String 藨()
  {
    return this.藛;
  }
  
  private boolean 讬()
  {
    return 驶(true);
  }
  
  private void 賭()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addDataScheme("package");
    this.始.registerReceiver(this.藦藦, localIntentFilter);
  }
  
  private void 釔()
  {
    int j = j.驶(this.始, "com.vivo.sdkplugin");
    int i;
    if (c.驶().始(this.藛) != null) {
      i = 1;
    }
    while ((i != 0) && (j >= 600)) {
      if (j >= 1540)
      {
        localObject = new JumpIndirectCommand();
        ((JumpIndirectCommand)localObject).setParams(VivoConstants.JumpType.FORUM);
        CommandClient.getInstance().sendCommandToServer(this.藛, (BaseCommand)localObject);
        return;
        i = 0;
      }
      else
      {
        localObject = new HashMap();
        ((HashMap)localObject).put("pageSize", "1");
        ((HashMap)localObject).put("hideNavBar", "1");
        String str = "vivounion://union.vivo.com/openjump?j_type=1&title=%E8%AE%BA%E5%9D%9B&h5_link=https%3A%2F%2Fgamembbs.vivo.com.cn%2Fmvc%2Fmodulebbs%3Forigin%3D555%26packName%3DdefaultPackageName&forcePortrait=true".replace("defaultPackageName", this.藛);
        JumpUtils.jumpTo(始(), str, this.藛, (Map)localObject);
        return;
      }
    }
    if ((i == 0) && (j >= 1500))
    {
      localObject = new HashMap();
      ((HashMap)localObject).put("loginFromAssist", String.valueOf(true));
      JumpUtils.jumpTo(始(), 2, this.藛, (Map)localObject);
      return;
    }
    Object localObject = new HashMap();
    ((HashMap)localObject).put("j_type", String.valueOf(26));
    ((HashMap)localObject).put("apkPath", 驶().示());
    ((HashMap)localObject).put("forceInstall", String.valueOf(true));
    JumpUtils.jumpToClientInstallActivity(始(), "vivounion://union.vivo.com/openjump", this.始.getPackageName(), (Map)localObject);
  }
  
  public static int 驶(Context paramContext, String paramString)
  {
    if (始(paramContext)) {
      return 驶().俅();
    }
    return CommandServer.getInstance(paramContext).getAppType(paramString);
  }
  
  public static w 驶()
  {
    try
    {
      if (驶 == null) {
        驶 = new w();
      }
      w localw = 驶;
      return localw;
    }
    finally {}
  }
  
  private void 驶(int paramInt1, com.vivo.sdkplugin.a.d paramd, int paramInt2)
  {
    if (this.藠 != null)
    {
      Iterator localIterator1 = this.藠.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Object localObject2 = (Map.Entry)localIterator1.next();
        Object localObject1 = (HashSet)((Map.Entry)localObject2).getValue();
        if (localObject1 != null)
        {
          if ((((Map.Entry)localObject2).getKey() != null) && ((((Map.Entry)localObject2).getKey() instanceof String)))
          {
            localObject2 = (String)((Map.Entry)localObject2).getKey();
            m.始("UnionManager", "callbackKey = " + (String)localObject2);
          }
          Iterator localIterator2 = ((HashSet)localObject1).iterator();
          while (localIterator2.hasNext())
          {
            VivoAccountCallback localVivoAccountCallback = (VivoAccountCallback)localIterator2.next();
            if (localVivoAccountCallback != null)
            {
              m.始("UnionManager", "callback = " + localVivoAccountCallback.toString());
              if (paramInt1 == 0)
              {
                localObject2 = paramd.士();
                localObject1 = localObject2;
                if (TextUtils.isEmpty((CharSequence)localObject2))
                {
                  m.驶("UnionManager", "opentoken is null, callback authtoken");
                  localObject1 = paramd.式();
                }
                localVivoAccountCallback.onVivoAccountLogin(com.vivo.sdkplugin.a.a.驶(paramd.藛()), paramd.驶(), (String)localObject1);
              }
              else if (paramInt1 == 2)
              {
                localVivoAccountCallback.onVivoAccountLogout(paramInt2);
              }
              else
              {
                localVivoAccountCallback.onVivoAccountLoginCancel();
              }
            }
          }
        }
      }
    }
  }
  
  private void 驶(long paramLong, String paramString)
  {
    if (this.釔.size() <= 0) {
      驶(this.始.getPackageName(), paramLong, paramString);
    }
  }
  
  private void 驶(Activity paramActivity, long paramLong, String paramString)
  {
    this.釔.remove(paramActivity);
    驶(paramLong, paramString);
    if ((this.藟 == 0) && (this.釔.size() <= 0)) {
      this.锕.示();
    }
  }
  
  private void 驶(Application paramApplication)
  {
    paramApplication.registerActivityLifecycleCallbacks(new ab(this));
    this.始.registerComponentCallbacks(new ad(this));
  }
  
  private void 驶(Context paramContext, VivoPayInfo paramVivoPayInfo)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("imei", i.驶(paramContext));
    localHashMap.put("model", i.驶());
    localHashMap.put("version", "1.0.0");
    localHashMap.put("u", i.始());
    localHashMap.put("appid", paramVivoPayInfo.getAppId());
    localHashMap.put("orderNumber", paramVivoPayInfo.getTransNo());
    localHashMap.put("channelInfo", com.vivo.unionsdk.d.d.始(paramContext, paramContext.getPackageName()));
    localHashMap.put("sdkversion", "4.2.4.0");
    com.vivo.unionsdk.b.d.驶(r.示, localHashMap, null, null);
  }
  
  private void 驶(Runnable paramRunnable)
  {
    if (this.式 != null) {
      this.式.post(paramRunnable);
    }
  }
  
  private void 驶(String paramString1, int paramInt1, int paramInt2, boolean paramBoolean, String paramString2)
  {
    if (驶(false))
    {
      ShowAssitViewCommand localShowAssitViewCommand = new ShowAssitViewCommand();
      localShowAssitViewCommand.setCommandParams(paramInt1, paramInt2, paramBoolean, paramString2);
      CommandClient.getInstance().sendCommandToServer(paramString1, localShowAssitViewCommand);
    }
  }
  
  private void 驶(String paramString1, long paramLong, String paramString2)
  {
    if (驶(false))
    {
      HideAssitViewCommand localHideAssitViewCommand = new HideAssitViewCommand();
      localHideAssitViewCommand.setCommandParams(paramLong, paramString2);
      CommandClient.getInstance().sendCommandToServer(paramString1, localHideAssitViewCommand);
    }
  }
  
  private boolean 驶(boolean paramBoolean)
  {
    if (this.始 == null) {
      throw new IllegalArgumentException("vivo sdk not initailed yet!");
    }
    int i = this.士.示();
    if (i == 2) {
      if (!paramBoolean) {}
    }
    while (!始(this.始))
    {
      throw new IllegalArgumentException("Can not invoker in Server Process!");
      if (i != 0)
      {
        if (paramBoolean) {
          Toast.makeText(this.始, r.驶("vivo%e6%9c%8d%e5%8a%a1%e5%ae%89%e5%85%a8%e6%8f%92%e4%bb%b6%e5%88%9d%e5%a7%8b%e5%8c%96%e5%a4%b1%e8%b4%a5%ef%bc%8c%e8%af%b7%e5%92%a8%e8%af%a2vivo%e6%b8%b8%e6%88%8f%e4%b8%ad%e5%bf%83%e5%ae%a2%e6%9c%8d"), 0).show();
        }
        m.式("UnionManager", "vivo sdk not initailed yet, code = " + i, new Throwable());
      }
    }
    if ((i != 0) && (i != 2) && (i != 1)) {
      驶(new aq(this, i));
    }
    return i == 0;
  }
  
  public void 士()
  {
    示("[Settings Request]");
  }
  
  public Activity 始()
  {
    return this.岬;
  }
  
  public void 始(int paramInt)
  {
    m.驶("UnionManager", "onUserLogout--, code = " + paramInt);
    if ((paramInt == 0) || (paramInt == 1)) {
      驶(2, null, paramInt);
    }
    for (;;)
    {
      驶(this.始.getPackageName(), 0L, "[Account Logout]");
      return;
      if (this.藨 != null) {
        this.藨.始();
      }
    }
  }
  
  public void 始(String paramString)
  {
    m.始("UnionManager", "onUnionExitDialogDismiss, pkgName = " + paramString);
    if (this.藡 != null)
    {
      this.藡.onExitCancel();
      this.藡 = null;
    }
  }
  
  public void 始(String paramString1, String paramString2, String paramString3)
  {
    VivoCallback localVivoCallback = (VivoCallback)this.釔п惂.get(paramString1);
    if (localVivoCallback != null) {
      localVivoCallback.onCallbackResult(paramString1, paramString2, paramString3);
    }
    this.釔п惂.remove(paramString1);
  }
  
  public com.vivo.unionsdk.a.a 式()
  {
    if (this.士 == null) {
      return null;
    }
    return this.士.始();
  }
  
  public void 式(int paramInt)
  {
    if ((this.藟 == 0) || (this.藟 == 2))
    {
      if (this.藨 != null) {
        this.藨.始();
      }
      return;
    }
    if (c.驶().始(this.始.getPackageName()) != null) {}
    for (boolean bool = true;; bool = false)
    {
      m.驶("UnionManager", "requestLogout, requestCode = " + paramInt + ", isLogin = " + bool);
      if ((1500 > j.驶(this.始, "com.vivo.sdkplugin")) && (!bool)) {
        break;
      }
      ClientRequestLogoutCommand localClientRequestLogoutCommand = new ClientRequestLogoutCommand();
      localClientRequestLogoutCommand.setCommandParams(paramInt);
      CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), localClientRequestLogoutCommand);
      return;
    }
  }
  
  public void 式(String paramString)
  {
    m.始("UnionManager", "onUnionExitDialogExitConfirm, pkgName = " + paramString);
    if (this.藡 != null)
    {
      式(20000);
      this.藡.onExitConfirm();
      this.藡 = null;
    }
    if (this.藨 != null) {
      this.藨.始();
    }
  }
  
  public String 示()
  {
    if (this.士 == null) {
      return null;
    }
    return this.士.式();
  }
  
  public void 藛()
  {
    m.驶("UnionManager", "onUserLoginCancel--");
    驶(1, null, -1);
  }
  
  public void 藞()
  {
    式(20002);
  }
  
  public void 藟()
  {
    示("[Assit Release]");
  }
  
  public void 藠()
  {
    m.驶("UnionManager", "onRemoteServiceDisconnect, to callback pay cancel.., isResume = " + this.賭);
    Object localObject1 = this.锞烇緸.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (VivoPayCallback)((Map.Entry)localObject2).getValue();
      if (localObject2 != null) {
        ((VivoPayCallback)localObject2).onVivoPayResult(str, false, String.valueOf(-1));
      }
    }
    this.锞烇緸.clear();
    localObject1 = this.士.始();
    if (((localObject1 instanceof com.vivo.unionsdk.a.f)) && (this.賭) && (!((com.vivo.unionsdk.a.f)localObject1).藛()) && (this.岽滇吹 < 5))
    {
      this.岽滇吹 += 1;
      m.始("UnionManager", "onRemoteServiceDisconnect, isResuming is true, to show AssitView");
      示("[Client Resume Then Disconnect]");
    }
  }
  
  public void 藡()
  {
    this.藨.始();
    this.士.始(5);
  }
  
  public void 藥()
  {
    this.始 = null;
  }
  
  public String 驶(Context paramContext)
  {
    return t.驶(paramContext).始();
  }
  
  public void 驶(int paramInt)
  {
    m.驶("UnionManager", "onSdkInitailed, sdk info:\n\tinitCode = " + paramInt + "\n\tinvoker = " + this.士.始() + "\n\tappType = " + 驶(this.始, this.始.getPackageName()) + "\n\tsdkVersion = " + 1540 + "\n\tsdkVerName = " + "4.2.4.0" + "\n\tclientPkg = " + this.始.getPackageName());
    if (paramInt != 0) {}
    do
    {
      do
      {
        for (;;)
        {
          return;
          c.驶().驶(this.始);
          CommandClient.getInstance().init(this.始);
          CommandClient.getInstance().onInvokerChanged(this.士.始());
          Object localObject = new ClientLaunchCommand();
          ((ClientLaunchCommand)localObject).setParams(t.驶(this.始).始());
          CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), (BaseCommand)localObject);
          CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), new ClientReconnectRemoteCommand());
          com.vivo.sdkplugin.a.d locald = c.驶().始(this.始.getPackageName());
          if (locald != null)
          {
            m.始("UnionManager", "onSdkInitFinished, login opid=" + locald.驶());
            localObject = new RestoreLoginStateCommand();
            ((RestoreLoginStateCommand)localObject).setCommandPrams(locald);
            if (locald.藟())
            {
              locald = c.驶().驶(locald.始());
              if (locald != null)
              {
                m.始("UnionManager", "onSdkInitFinished, prt opid=" + locald.驶());
                ((RestoreLoginStateCommand)localObject).addParentParam(locald);
              }
            }
            CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), (BaseCommand)localObject);
          }
          this.藨.驶();
          com.vivo.unionsdk.d.d.驶(this.始);
          if ((this.藟 == 0) || (this.藟 == 1)) {
            this.锕.驶();
          }
          if (this.锞 == null) {
            this.锞 = new Thread(new y(this));
          }
          try
          {
            Runtime.getRuntime().addShutdownHook(this.锞);
            if ((1500 <= j.驶(this.始, "com.vivo.sdkplugin")) && (this.俅)) {
              示("[Show Default]");
            }
            if (this.式式 == 0)
            {
              士(this.始始);
              if (this.始始 == null) {
                continue;
              }
              驶(this.始始);
            }
          }
          catch (Exception localException)
          {
            for (;;)
            {
              m.示("UnionManager", "onSdkInitFinished, addShutdownHook exception: ", localException);
            }
            if (this.式式 == 1)
            {
              士(this.始始);
              if ((this.始始 != null) && (this.士士 != null) && (this.示示 != null))
              {
                驶(this.始始, this.士士, this.示示);
                this.始始 = null;
                this.士士 = null;
                this.示示 = null;
              }
            }
            else if (this.式式 == 2)
            {
              士(this.始始);
              if ((this.始始 != null) && (this.士士 != null) && (this.示示 != null)) {
                驶(this.始始, this.士士, this.示示, this.藛藛);
              }
            }
            else if (this.式式 == 3)
            {
              士(this.始始);
              if ((this.始始 == null) || (this.賭賭 == null) || (this.示示 == null)) {
                continue;
              }
              驶(this.始始, this.賭賭, this.示示);
            }
          }
        }
      } while (this.式式 != 4);
      士(this.始始);
    } while ((this.始始 == null) || (this.藟藟 == null));
    驶(this.始始, this.藟藟, this.藞藞, this.藡藡, this.藠藠);
  }
  
  public void 驶(int paramInt1, int paramInt2)
  {
    if (this.鈦 == null) {
      this.鈦 = new int[2];
    }
    this.鈦[0] = paramInt1;
    this.鈦[1] = paramInt2;
    g.驶(this.始).驶(paramInt1, paramInt2);
  }
  
  public void 驶(int paramInt, boolean paramBoolean, String paramString)
  {
    this.藨.驶(paramInt, paramBoolean, paramString);
  }
  
  public void 驶(Activity paramActivity)
  {
    驶(new aj(this, paramActivity));
  }
  
  public void 驶(Activity paramActivity, VivoAccountCallback paramVivoAccountCallback)
  {
    驶(new ak(this, paramActivity, paramVivoAccountCallback));
  }
  
  public void 驶(Activity paramActivity, VivoExitCallback paramVivoExitCallback)
  {
    驶(new x(this, paramVivoExitCallback, paramActivity));
  }
  
  public void 驶(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback)
  {
    驶(new an(this, paramActivity, paramVivoPayInfo, paramVivoPayCallback));
  }
  
  public void 驶(Activity paramActivity, VivoPayInfo paramVivoPayInfo, VivoPayCallback paramVivoPayCallback, int paramInt)
  {
    驶(new ao(this, paramVivoPayInfo, paramActivity, paramVivoPayCallback, paramInt));
  }
  
  public void 驶(Activity paramActivity, VivoRealNameInfoCallback paramVivoRealNameInfoCallback)
  {
    驶(new ae(this, paramVivoRealNameInfoCallback, paramActivity));
  }
  
  public void 驶(Activity paramActivity, VivoRechargeInfo paramVivoRechargeInfo, VivoPayCallback paramVivoPayCallback)
  {
    驶(new ap(this, paramVivoRechargeInfo, paramVivoPayCallback, paramActivity));
  }
  
  public void 驶(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (讬())
    {
      this.式式 = -1;
      com.vivo.sdkplugin.a.d locald = new com.vivo.sdkplugin.a.d();
      locald.驶(paramString1);
      locald.士(paramString2);
      locald.藟(paramString3);
      locald.藞(paramString4);
      this.式.post(new ah(this, locald, paramString1, paramString2, paramString3, paramString4, paramActivity));
      return;
    }
    this.式式 = 4;
    示(paramActivity);
    this.藟藟 = paramString1;
    this.始始 = paramActivity;
    this.藞藞 = paramString2;
    this.藡藡 = paramString3;
    this.藠藠 = paramString4;
  }
  
  public void 驶(Context paramContext, String paramString1, String paramString2, VivoCallback paramVivoCallback)
  {
    m.始("UnionManager", "sdk send comand, code = " + paramString1);
    驶(new af(this, paramContext, paramVivoCallback, paramString1, paramString2));
  }
  
  public void 驶(Context paramContext, String paramString, boolean paramBoolean, VivoConfigInfo paramVivoConfigInfo)
  {
    if (Looper.myLooper() != paramContext.getMainLooper()) {
      throw new IllegalArgumentException("initSdk must in main thread!");
    }
    if (paramVivoConfigInfo == null) {
      throw new IllegalArgumentException("VivoConfigInfo must be not null");
    }
    String str2 = paramVivoConfigInfo.getProcessName();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = paramContext.getPackageName();
    }
    if (paramVivoConfigInfo.getAppType() == -1) {
      paramVivoConfigInfo.setAppType(1);
    }
    if (!str1.equals(j.始(paramContext)))
    {
      m.始("UnionManager", "initSdk, processName = " + str1 + "currentProcessName = " + j.始(paramContext));
      return;
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("appId must not be null!");
    }
    if (this.始 == null)
    {
      this.始 = paramContext.getApplicationContext();
      if (paramBoolean) {
        Toast.makeText(this.始, r.驶("vivosdk+debug%e5%bc%80%e5%85%b3%e5%b7%b2%e6%89%93%e5%bc%80%ef%bc%8c%e8%af%b7%e5%9c%a8release%e7%89%88%e6%9c%ac%e5%85%b3%e9%97%ad%ef%bc%88initSdk%e6%96%b9%e6%b3%95%e4%b8%ad%e7%9a%84debug%e5%8f%82%e6%95%b0%e8%ae%be%e7%bd%ae%e4%b8%bafalse%ef%bc%89"), 1).show();
      }
      this.俅 = paramVivoConfigInfo.isShowAssit();
      this.藞 = paramString;
      this.藟 = paramVivoConfigInfo.getAppType();
      this.示 = paramBoolean;
      this.藛 = this.始.getPackageName();
      m.驶("UnionManager", "CP invoke init, pkg = " + this.藛);
      this.式 = new Handler(this.始.getMainLooper());
      this.锕 = new p(this.始, this.藟);
      v.驶(this.始);
      賭();
      驶((Application)this.始);
      this.藨 = new f(this.始);
      this.士 = new b(this.始, paramString, this.藟, paramBoolean);
      this.士.驶();
    }
    for (;;)
    {
      com.vivo.unionsdk.d.a.驶(paramContext, this.藛);
      return;
      m.式("UnionManager", "vivo sdk has initailed!");
    }
  }
  
  public void 驶(com.vivo.sdkplugin.a.d paramd)
  {
    驶(paramd, false);
  }
  
  public void 驶(com.vivo.sdkplugin.a.d paramd, boolean paramBoolean)
  {
    m.驶("UnionManager", "onUserLogin--, restoreByclient = " + paramBoolean);
    示("[Account Login]");
    ClientLoginCommand localClientLoginCommand = new ClientLoginCommand();
    localClientLoginCommand.setCommandParams(g.驶(this.始).式(), paramBoolean);
    CommandClient.getInstance().sendCommandToServer(this.始.getPackageName(), localClientLoginCommand);
    if (!paramBoolean) {
      驶(0, paramd, -1);
    }
  }
  
  public void 驶(VivoCommunityCallback paramVivoCommunityCallback)
  {
    驶(new al(this, paramVivoCommunityCallback));
  }
  
  public void 驶(VivoConstants.JumpType paramJumpType)
  {
    if (paramJumpType == null)
    {
      m.示("UnionManager", "jump params is null");
      return;
    }
    if (this.始 == null)
    {
      m.示("UnionManager", "please call initSdk first");
      return;
    }
    switch (ai.驶[paramJumpType.ordinal()])
    {
    default: 
      return;
    }
    釔();
  }
  
  public void 驶(VivoRoleInfo paramVivoRoleInfo)
  {
    驶(new am(this, paramVivoRoleInfo));
  }
  
  public void 驶(String paramString)
  {
    m.始("UnionManager", "onPaySuccess, transNo = " + paramString);
    VivoPayCallback localVivoPayCallback = (VivoPayCallback)this.锞烇緸.get(paramString);
    if (localVivoPayCallback != null) {
      localVivoPayCallback.onVivoPayResult(paramString, true, String.valueOf(0));
    }
    this.锞烇緸.remove(paramString);
  }
  
  public void 驶(String paramString1, String paramString2, String paramString3)
  {
    m.始("UnionManager", "onPayFailed, transNo = " + paramString1 + ", resultCode = " + paramString2);
    paramString3 = (VivoPayCallback)this.锞烇緸.get(paramString1);
    if (paramString3 != null) {
      paramString3.onVivoPayResult(paramString1, false, paramString2);
    }
    this.锞烇緸.remove(paramString1);
  }
  
  public void 驶(String paramString, boolean paramBoolean)
  {
    m.始("UnionManager", "onPayCancel, transNo = " + paramString + ", isSame = " + paramBoolean);
    VivoPayCallback localVivoPayCallback = (VivoPayCallback)this.锞烇緸.get(paramString);
    if (localVivoPayCallback != null) {
      localVivoPayCallback.onVivoPayResult(paramString, false, String.valueOf(-1));
    }
    this.锞烇緸.remove(paramString);
  }
  
  public void 驶(boolean paramBoolean, int paramInt)
  {
    if (this.藦 != null)
    {
      if (paramInt != -1) {
        break label27;
      }
      this.藦.onGetRealNameInfoFailed();
    }
    for (;;)
    {
      this.藦 = null;
      return;
      label27:
      this.藦.onGetRealNameInfoSucc(paramBoolean, paramInt);
    }
  }
  
  public void 驶(boolean paramBoolean, String paramString1, String paramString2)
  {
    if (this.藥 != null)
    {
      this.藥.onCommunityResult(paramBoolean, paramString1, paramString2);
      this.藥 = null;
    }
  }
  
  public void 驶(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.藨.驶(paramBoolean1, paramBoolean2, paramInt);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.w
 * JD-Core Version:    0.7.0.1
 */