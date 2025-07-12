package com.unity3d.player;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class UnityPlayerProxyActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new Intent(this, UnityPlayerNativeActivity.class);
    paramBundle.addFlags(65536);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null) {
      paramBundle.putExtras(localBundle);
    }
    startActivity(paramBundle);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.UnityPlayerProxyActivity
 * JD-Core Version:    0.7.0.1
 */