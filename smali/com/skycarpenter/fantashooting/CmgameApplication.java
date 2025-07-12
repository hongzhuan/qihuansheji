package com.skycarpenter.fantashooting;

import android.app.Application;
import android.util.Log;
import com.vivo.unionsdk.open.VivoUnionSDK;

public class CmgameApplication
  extends Application
{
  public void onCreate()
  {
    Log.e("initSDK", "start");
    VivoUnionSDK.initSdk(this, "dff6d077dd699bca1d39a9262d759ee9", false);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.skycarpenter.fantashooting.CmgameApplication
 * JD-Core Version:    0.7.0.1
 */