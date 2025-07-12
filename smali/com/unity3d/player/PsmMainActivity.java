package com.unity3d.player;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.io.File;

public class PsmMainActivity
  extends Activity
{
  private static void a(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        a(arrayOfFile[i]);
        i += 1;
      }
    }
    paramFile.delete();
    Log.d(PsmMainActivity.class.getSimpleName(), "deleted : " + paramFile.getAbsolutePath());
  }
  
  protected void DecompressAPK(File paramFile)
  {
    new b(this).execute(new File[] { paramFile, getFilesDir(), getFilesDir() });
  }
  
  protected void LaunchApp()
  {
    Intent localIntent = new Intent(this, PsmUnityActivity.class);
    localIntent.addFlags(65536);
    Bundle localBundle = new Bundle();
    localBundle.putString("path", getFilesDir().getPath());
    localIntent.putExtras(localBundle);
    startActivity(localIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getFilesDir().listFiles();
    int j = paramBundle.length;
    int i = 0;
    while (i < j)
    {
      a(paramBundle[i]);
      i += 1;
    }
    DecompressAPK(new File(super.getPackageCodePath()));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.PsmMainActivity
 * JD-Core Version:    0.7.0.1
 */