package com.unity3d.player;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

final class b
  extends AsyncTask
{
  private ProgressDialog a;
  private PsmMainActivity b;
  
  b(PsmMainActivity paramPsmMainActivity)
  {
    this.b = paramPsmMainActivity;
    this.a = new ProgressDialog(paramPsmMainActivity);
    this.a.setMessage("Please wait while decompressing...");
    this.a.setIndeterminate(true);
    this.a.setCancelable(false);
    this.a.show();
  }
  
  private void a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte = new byte[1024];
    Object localObject;
    for (;;)
    {
      try
      {
        localObject = new File(paramString2);
        if (!((File)localObject).exists()) {
          ((File)localObject).mkdir();
        }
        localObject = new ZipInputStream(new FileInputStream(paramString1));
        paramString1 = ((ZipInputStream)localObject).getNextEntry();
        if (paramString1 == null) {
          break;
        }
        paramString1 = paramString1.getName();
        paramString1 = new File(paramString2 + File.separator + paramString1);
        Log.d(getClass().getSimpleName(), "file unzip : " + paramString1.getAbsoluteFile());
        new File(paramString1.getParent()).mkdirs();
        paramString1 = new FileOutputStream(paramString1);
        int i = ((ZipInputStream)localObject).read(arrayOfByte);
        if (i > 0)
        {
          paramString1.write(arrayOfByte, 0, i);
          continue;
        }
        paramString1.close();
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      paramString1 = ((ZipInputStream)localObject).getNextEntry();
    }
    ((ZipInputStream)localObject).closeEntry();
    ((ZipInputStream)localObject).close();
  }
  
  protected final Long doInBackground(File... paramVarArgs)
  {
    Object localObject = paramVarArgs[0];
    File localFile = paramVarArgs[1];
    paramVarArgs = paramVarArgs[2];
    localObject = ((File)localObject).toString();
    localFile.toString();
    a((String)localObject, paramVarArgs.toString());
    return Long.valueOf(0L);
  }
  
  protected final void onPostExecute(Long paramLong)
  {
    this.a.dismiss();
    this.b.LaunchApp();
    Toast.makeText(this.a.getContext(), "DONE", 0).show();
  }
  
  protected final void onProgressUpdate(Integer... paramVarArgs) {}
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.b
 * JD-Core Version:    0.7.0.1
 */