package com.skycarpenter.fantashooting;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.util.Log;
import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoUnionSDK;
import java.io.IOException;
import java.io.InputStream;

public class MainActivity
  extends UnityPlayerNativeActivity
{
  public static int channelID = -1;
  public static MainActivity context = null;
  final int AD_BANNER = 0;
  final int AD_INTERVAL = 1;
  final int AD_MEDIA = 2;
  Activity mActivity = null;
  
  @SuppressLint({"NewApi"})
  public void exitGame()
  {
    VivoUnionSDK.exit(this.mActivity, new VivoExitCallback()
    {
      public void onExitCancel() {}
      
      public void onExitConfirm()
      {
        MainActivity.this.mActivity.finish();
        System.exit(0);
      }
    });
  }
  
  public String getChannelID()
  {
    if (channelID == -1) {}
    try
    {
      byte[] arrayOfByte = new byte[32];
      context.getAssets().open("Channel.txt").read(arrayOfByte);
      channelID = Integer.parseInt(new String(arrayOfByte).trim());
      return String.valueOf(channelID);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public void hideAd(int paramInt1, int paramInt2)
  {
    Log.e("mylog", "隐藏广告");
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while (paramInt2 == 0);
      if (paramInt2 == 1)
      {
        this.mActivity.runOnUiThread(new Runnable()
        {
          public void run() {}
        });
        return;
      }
    } while (paramInt2 != 2);
    this.mActivity.runOnUiThread(new Runnable()
    {
      public void run() {}
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mActivity = this;
    context = this;
  }
  
  public void showAd(int paramInt1, int paramInt2)
  {
    Log.e("mylog", "展示广告");
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                Log.e("AdManager", "ShowBannerAD");
              } while (paramInt2 == 0);
              if (paramInt2 == 1)
              {
                this.mActivity.runOnUiThread(new Runnable()
                {
                  public void run() {}
                });
                return;
              }
            } while (paramInt2 != 2);
            this.mActivity.runOnUiThread(new Runnable()
            {
              public void run() {}
            });
            return;
            Log.e("AdManager", "ShowIntervalAD");
          } while (paramInt2 == 0);
          if (paramInt2 == 1)
          {
            this.mActivity.runOnUiThread(new Runnable()
            {
              public void run() {}
            });
            return;
          }
        } while (paramInt2 != 2);
        this.mActivity.runOnUiThread(new Runnable()
        {
          public void run() {}
        });
        return;
        Log.e("AdManager", "ShowMediaAD");
      } while (paramInt2 == 0);
      if (paramInt2 == 1)
      {
        this.mActivity.runOnUiThread(new Runnable()
        {
          public void run() {}
        });
        return;
      }
    } while (paramInt2 != 2);
    this.mActivity.runOnUiThread(new Runnable()
    {
      public void run() {}
    });
  }
  
  public void skipWx(String paramString1, String paramString2, String paramString3)
  {
    Log.e("mylog", "跳转微信");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.skycarpenter.fantashooting.MainActivity
 * JD-Core Version:    0.7.0.1
 */