package com.vivo.unionsdk.cmd;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.vivo.plugin.aidl.ExecuteServiceAIDL;
import com.vivo.plugin.aidl.IClient.Stub;
import com.vivo.unionsdk.a.a;
import com.vivo.unionsdk.a.f;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.open.VivoRoleInfo;
import com.vivo.unionsdk.open.VivoUnionCallback;

public class CommandClient
{
  private static final String TAG = "CommandClient";
  private static CommandClient sCommandClient = null;
  private IClient.Stub mClient = new CommandClient.1(this);
  private Context mContext;
  private Handler mHandler;
  private a mInvoker;
  
  public static CommandClient getInstance()
  {
    try
    {
      if (sCommandClient == null) {
        sCommandClient = new CommandClient();
      }
      CommandClient localCommandClient = sCommandClient;
      return localCommandClient;
    }
    finally {}
  }
  
  private void sendCommandToServerCompatApk(ExecuteServiceAIDL paramExecuteServiceAIDL, BaseCommand paramBaseCommand, int paramInt)
  {
    if ((paramBaseCommand instanceof JumpCommand)) {
      ((JumpCommand)paramBaseCommand).doJumpCompatApk();
    }
    do
    {
      do
      {
        do
        {
          return;
          if (!(paramBaseCommand instanceof RoleInfoReportCommand)) {
            break;
          }
          paramBaseCommand = ((RoleInfoReportCommand)paramBaseCommand).getRoleInfoCompatApk();
        } while (paramBaseCommand == null);
        try
        {
          paramExecuteServiceAIDL.vivoAccountreportRoleInfo(paramBaseCommand.getRoleId(), paramBaseCommand.getRoleLevel(), paramBaseCommand.getServiceAreaID(), paramBaseCommand.getRoleName(), paramBaseCommand.getServiceAreaName());
          return;
        }
        catch (RemoteException paramExecuteServiceAIDL)
        {
          m.驶("CommandClient", "sendCommandToServerCompatApk exception: ", paramExecuteServiceAIDL);
          return;
        }
        if (!(paramBaseCommand instanceof ShowAssitViewCommand)) {
          break;
        }
      } while (paramInt >= 5);
      try
      {
        paramExecuteServiceAIDL.startAssistService(this.mContext.getPackageName());
        return;
      }
      catch (RemoteException paramExecuteServiceAIDL)
      {
        m.驶("CommandClient", "sendCommandToServerCompatApk exception: ", paramExecuteServiceAIDL);
        return;
      }
    } while ((!(paramBaseCommand instanceof HideAssitViewCommand)) || (paramInt >= 5));
    try
    {
      paramExecuteServiceAIDL.stopAssistService();
      return;
    }
    catch (RemoteException paramExecuteServiceAIDL)
    {
      m.驶("CommandClient", "sendCommandToServerCompatApk exception: ", paramExecuteServiceAIDL);
    }
  }
  
  public void init(Context paramContext)
  {
    if (this.mContext != null) {
      return;
    }
    this.mContext = paramContext.getApplicationContext();
    this.mHandler = new Handler(this.mContext.getMainLooper());
  }
  
  public void onInvokerChanged(a parama)
  {
    this.mInvoker = parama;
    if (!(this.mInvoker instanceof f)) {
      CommandServer.getInstance(this.mContext).registerClient(this.mContext.getPackageName(), this.mClient, parama.始(), parama.式(), 1540);
    }
  }
  
  public void onReceiveServerCommand(int paramInt, String paramString, boolean paramBoolean)
  {
    Object localObject = null;
    switch (paramInt)
    {
    }
    while (localObject != null)
    {
      this.mHandler.post(new CommandClient.2(this, (Callback)localObject, paramString, paramBoolean));
      return;
      localObject = new AssitItemClickCallback();
      continue;
      localObject = new AssitPosChangeCallBack();
      continue;
      localObject = new AssitViewReleaseCallback();
      continue;
      localObject = new LoginCallback();
      continue;
      localObject = new LoginCancelCallback();
      continue;
      localObject = new LogoutCallback();
      continue;
      localObject = new PaySuccessCallback();
      continue;
      localObject = new PayCancelCallback();
      continue;
      localObject = new PayFailedCallback();
      continue;
      localObject = new AssitSettingsRequestCallback();
      continue;
      localObject = new AppCheckedCallback();
      continue;
      localObject = new PrefsWriteCallback();
      continue;
      localObject = new ActivitiesCallback();
      continue;
      localObject = new UnionExitCallback();
      continue;
      localObject = new TrackConfigChangedCallback();
      continue;
      localObject = new CommunityInfoCallback();
      continue;
      localObject = new AssitNotifyClickCallback();
      continue;
      localObject = new GetRealNameCallBack();
      continue;
      localObject = new VivoUnionCallback();
    }
    m.示("CommandClient", "onReceiveServerCommand, null command, commandKey = " + paramInt);
  }
  
  public void sendCommandToServer(String paramString, BaseCommand paramBaseCommand)
  {
    boolean bool2 = this.mInvoker instanceof f;
    ExecuteServiceAIDL localExecuteServiceAIDL;
    boolean bool1;
    if (bool2)
    {
      localExecuteServiceAIDL = ((f)this.mInvoker).藟();
      if (localExecuteServiceAIDL == null)
      {
        m.式("CommandClient", "sendCommandToServer error, remoteService is null! command = " + paramBaseCommand.getClass().getSimpleName());
        ((f)this.mInvoker).驶(paramBaseCommand);
        return;
      }
      bool1 = ((f)this.mInvoker).士();
    }
    for (;;)
    {
      if (bool1)
      {
        sendCommandToServerCompatApk(localExecuteServiceAIDL, paramBaseCommand, ((f)this.mInvoker).藞());
        return;
      }
      if ((paramBaseCommand instanceof JumpCommand))
      {
        ((JumpCommand)paramBaseCommand).doJump();
        return;
      }
      if (bool2) {
        try
        {
          localExecuteServiceAIDL.doCommand(paramBaseCommand.getCommandKey(), paramBaseCommand.getJsonArg(), paramString, 1540);
          return;
        }
        catch (RemoteException paramString)
        {
          m.驶("CommandClient", "sendCommandToServer exception: ", paramString);
          return;
        }
      }
      if (this.mContext == null) {
        break;
      }
      CommandServer.getInstance(this.mContext).onReceiveClientCommand(paramBaseCommand.getCommandKey(), paramBaseCommand.getJsonArg(), paramString, 1540);
      return;
      bool1 = false;
      localExecuteServiceAIDL = null;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.CommandClient
 * JD-Core Version:    0.7.0.1
 */