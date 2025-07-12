package com.skycarpenter.fantashooting;

import android.app.NativeActivity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Window;
import com.unity3d.player.UnityPlayer;

public class UnityPlayerNativeActivity
  extends NativeActivity
{
  protected UnityPlayer mUnityPlayer;
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 2) {
      return this.mUnityPlayer.injectEvent(paramKeyEvent);
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mUnityPlayer.configurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    getWindow().takeSurface(null);
    setTheme(16973831);
    getWindow().setFormat(4);
    this.mUnityPlayer = new UnityPlayer(this);
    if (this.mUnityPlayer.getSettings().getBoolean("hide_status_bar", true)) {
      getWindow().setFlags(1024, 1024);
    }
    setContentView(this.mUnityPlayer);
    this.mUnityPlayer.requestFocus();
  }
  
  protected void onDestroy()
  {
    this.mUnityPlayer.quit();
    super.onDestroy();
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    return this.mUnityPlayer.injectEvent(paramMotionEvent);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return this.mUnityPlayer.injectEvent(paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return this.mUnityPlayer.injectEvent(paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    this.mUnityPlayer.pause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mUnityPlayer.resume();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.mUnityPlayer.injectEvent(paramMotionEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    this.mUnityPlayer.windowFocusChanged(paramBoolean);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.skycarpenter.fantashooting.UnityPlayerNativeActivity
 * JD-Core Version:    0.7.0.1
 */