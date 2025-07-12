package com.vivo.unionsdk.cmd;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.vivo.plugin.aidl.IClient;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.open.VivoUnionCommand;
import java.util.HashMap;

public class CommandServer
{
  private static final String TAG = "CommandServer";
  private static CommandServer sCommandServer = null;
  private HashMap mClientAppId = new HashMap();
  private HashMap mClientAppType = new HashMap();
  private HashMap mClientOrientation = new HashMap();
  private HashMap mClientSdkVersion = new HashMap();
  private HashMap mClients = new HashMap();
  private Context mContext;
  private Handler mHandler;
  
  private CommandServer(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mHandler = new Handler(paramContext.getMainLooper());
  }
  
  public static CommandServer getInstance(Context paramContext)
  {
    try
    {
      if (sCommandServer == null) {
        sCommandServer = new CommandServer(paramContext);
      }
      paramContext = sCommandServer;
      return paramContext;
    }
    finally {}
  }
  
  public int getAppType(String paramString)
  {
    paramString = this.mClientAppType.get(paramString);
    if ((paramString instanceof Integer)) {
      return ((Integer)paramString).intValue();
    }
    return -1;
  }
  
  public int getClientOrientationCompat(String paramString)
  {
    paramString = (Integer)this.mClientOrientation.get(paramString);
    if (paramString != null) {
      return paramString.intValue();
    }
    return 1;
  }
  
  public int getClientSdkVersion(String paramString)
  {
    paramString = (Integer)this.mClientSdkVersion.get(paramString);
    if (paramString != null) {
      return paramString.intValue();
    }
    return 0;
  }
  
  public void onReceiveClientCommand(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    Object localObject = null;
    switch (paramInt1)
    {
    }
    while (localObject != null)
    {
      this.mHandler.post(new CommandServer.1(this, (BaseCommand)localObject, paramString2, paramString1));
      return;
      localObject = new ShowAssitViewCommand();
      continue;
      localObject = new HideAssitViewCommand();
      continue;
      localObject = new ConfigurationChangedCommand();
      continue;
      localObject = new ClientLaunchCommand();
      continue;
      localObject = new ClientLoginCommand();
      continue;
      localObject = new ClientRequestLogoutCommand();
      continue;
      localObject = new RoleInfoReportCommand();
      continue;
      localObject = new RestoreLoginStateCommand();
      continue;
      localObject = new ClientReconnectRemoteCommand();
      continue;
      localObject = new RequestCommunityCommand();
      continue;
      localObject = new GetRealNameInfoCommand();
      continue;
      localObject = new RegisterLoginCommand();
      continue;
      localObject = new VivoUnionCommand();
      continue;
      localObject = new SendChannelInfoCommand();
    }
    m.示("CommandServer", "onReceiveClientCommand, null command, commandKey = " + paramInt1 + ", sdkVersion = " + paramInt2);
  }
  
  public void registerClient(String paramString1, IClient paramIClient, String paramString2, int paramInt1, int paramInt2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      m.示("CommandServer", "registerClient error: clientPkgName = " + paramString1);
      return;
    }
    m.驶("CommandServer", "registerClient, clientPkgName = " + paramString1 + ", clientAppId = " + paramString2 + ", appType = " + paramInt1 + ", sdkVersion = " + paramInt2);
    this.mClients.put(paramString1, paramIClient);
    this.mClientAppId.put(paramString1, paramString2);
    this.mClientAppType.put(paramString1, Integer.valueOf(paramInt1));
    this.mClientSdkVersion.put(paramString1, Integer.valueOf(paramInt2));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.CommandServer
 * JD-Core Version:    0.7.0.1
 */