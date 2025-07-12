package com.vivo.unionsdk.cmd;

import android.content.Context;
import com.vivo.unionsdk.w;

public class CommunityInfoCallback
  extends Callback
{
  public CommunityInfoCallback()
  {
    super(20006);
  }
  
  protected void doExec(Context paramContext, boolean paramBoolean)
  {
    paramBoolean = getParam("success").equals(String.valueOf(0));
    w.驶().驶(paramBoolean, getParam("communityNickname"), getParam("communityAvatar"));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.cmd.CommunityInfoCallback
 * JD-Core Version:    0.7.0.1
 */