package com.vivo.unionsdk;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.TextView;
import com.vivo.unionsdk.ui.g;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class a
  extends com.vivo.unionsdk.ui.a
  implements DialogInterface.OnCancelListener
{
  private String 藛 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + ".vivounionapk";
  private String 藞;
  private String 藟;
  private boolean 藠;
  private int 藡 = -1;
  private String 藥 = null;
  
  public a(Activity paramActivity, Map paramMap)
  {
    super(paramActivity, paramMap);
  }
  
  private void 俅()
  {
    g localg = new g(this.驶);
    localg.setOnCancelListener(this);
    localg.驶(s.驶("vivo_apk_install_dlg_title"));
    localg.驶(s.式("vivo_apk_install_title_color"));
    ((TextView)s.驶("vivo_apk_install_version", localg.式("vivo_union_apk_install"))).setText(s.驶("vivo_apk_install_version") + this.藟);
    if (this.藡 >= 0)
    {
      localObject = s.驶("vivo_apk_install_update_ok");
      localg.驶((String)localObject, new d(this, localg));
      if (!this.藠) {
        break label214;
      }
    }
    label214:
    for (Object localObject = s.驶("vivo_apk_install_dlg_cancel_force");; localObject = s.驶("vivo_apk_install_dlg_cancel_btn"))
    {
      localg.始((String)localObject, new e(this, localg));
      localg.show();
      localObject = com.vivo.sdkplugin.a.c.驶().始(this.式);
      if (localObject != null) {
        this.藥 = ((com.vivo.sdkplugin.a.d)localObject).藞();
      }
      localObject = new HashMap();
      ((HashMap)localObject).put("key", "023");
      ((HashMap)localObject).put("value", "--");
      com.vivo.unionsdk.d.d.驶((HashMap)localObject, this.驶, this.示, this.式, this.藥);
      return;
      localObject = s.驶("vivo_apk_install_ok");
      break;
    }
  }
  
  private void 讬()
  {
    File localFile = new File(this.藞);
    if ((localFile == null) || (!localFile.exists()) || (!localFile.isFile()) || (localFile.length() <= 0L))
    {
      賭();
      return;
    }
    this.藟 = 驶(this.驶, this.藞);
    俅();
  }
  
  private void 賭()
  {
    g localg = new g(this.驶);
    localg.驶(s.驶("vivo_apk_download_title"));
    localg.始(s.驶("vivo_apk_download_msg"));
    localg.始(s.驶("vivo_apk_download_cancel"), new b(this, localg));
    localg.驶(s.驶("vivo_apk_download_now"), new c(this, localg));
    localg.setCancelable(false);
    localg.show();
  }
  
  private static String 驶(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext != null) {
        try
        {
          paramContext = paramContext.getPackageArchiveInfo(paramString, 0);
          if (paramContext != null)
          {
            paramContext = paramContext.versionName;
            return paramContext;
          }
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private void 驶(boolean paramBoolean, int paramInt)
  {
    w.驶().驶(paramBoolean, this.藠, paramInt);
    HashMap localHashMap;
    if (paramBoolean)
    {
      localHashMap = new HashMap();
      localHashMap.put("key", "141");
      localHashMap.put("issuc", "1");
      com.vivo.unionsdk.d.d.驶(localHashMap, this.驶, this.示, this.式, null);
    }
    for (;;)
    {
      藥();
      return;
      if (paramInt != -5)
      {
        localHashMap = new HashMap();
        localHashMap.put("key", "141");
        localHashMap.put("issuc", "2");
        com.vivo.unionsdk.d.d.驶(localHashMap, this.驶, this.示, this.式, null);
      }
    }
  }
  
  private boolean 驶(String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      m.始("ApkInstallActivity", "installApk, apkPath = " + paramString);
      if (Build.VERSION.SDK_INT > 23) {
        j.驶(true);
      }
      localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
      this.驶.startActivityForResult(localIntent, 0);
      return true;
    }
    catch (Exception paramString) {}
    return true;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    驶(false, -3);
  }
  
  protected void 始()
  {
    super.始();
    if (!o.驶(this.驶))
    {
      this.藠 = true;
      w.驶().藡();
      藥();
      return;
    }
    this.藞 = ((String)this.始.get("apkPath"));
    this.藠 = Boolean.valueOf((String)this.始.get("forceInstall")).booleanValue();
    this.藡 = j.驶(this.驶, "com.vivo.sdkplugin");
    m.驶("ApkInstallActivity", "onCreate, mApkPath = " + this.藞 + ", mForceInstall = " + this.藠 + ", mOldVersion = " + this.藡);
    if (TextUtils.isEmpty(this.藞))
    {
      new a(null).execute(new Void[0]);
      return;
    }
    讬();
  }
  
  protected int 驶()
  {
    return 1;
  }
  
  protected void 驶(int paramInt1, int paramInt2, Intent paramIntent)
  {
    paramInt1 = j.驶(this.驶, "com.vivo.sdkplugin");
    m.驶("ApkInstallActivity", "ApkInstallActivity, install finish, newVersion = " + paramInt1 + ", mOldVersion = " + this.藡 + ", resultCode" + paramInt2);
    if (paramInt1 > this.藡) {
      驶(true, 0);
    }
    do
    {
      return;
      驶(false, -5);
      paramIntent = this.驶;
      if (paramInt2 == 0) {
        break;
      }
      paramIntent = this.驶;
    } while (paramInt2 != 1);
    paramIntent = new HashMap();
    paramIntent.put("key", "141");
    paramIntent.put("issuc", "2");
    paramIntent.put("reason", String.valueOf(paramInt2));
    com.vivo.unionsdk.d.d.驶(paramIntent, this.驶, this.示, this.式, null);
  }
  
  private class a
    extends AsyncTask
  {
    private a() {}
    
    protected void onPreExecute()
    {
      super.onPreExecute();
    }
    
    protected Void 驶(Void... paramVarArgs)
    {
      int i;
      try
      {
        paramVarArgs = a.始(a.this).getAssets().list("vivounionsdk");
        if ((paramVarArgs == null) || (paramVarArgs.length <= 0)) {
          return null;
        }
      }
      catch (IOException paramVarArgs)
      {
        for (;;)
        {
          paramVarArgs = null;
        }
        int j = paramVarArgs.length;
        i = 0;
        if (i >= j) {
          break label196;
        }
      }
      Void localVoid = paramVarArgs[i];
      if (TextUtils.isEmpty(localVoid)) {}
      while (!localVoid.endsWith(".vua"))
      {
        i += 1;
        break;
      }
      label196:
      for (paramVarArgs = localVoid;; paramVarArgs = null)
      {
        m.始("ApkInstallActivity", "ResourceInstallTask --- doInBackground, fileName = " + paramVarArgs);
        if (TextUtils.isEmpty(paramVarArgs)) {
          break;
        }
        com.vivo.unionsdk.a.c.驶(a.式(a.this), paramVarArgs, new File(a.示(a.this) + File.separator + paramVarArgs));
        a.驶(a.this, a.示(a.this) + File.separator + paramVarArgs);
        return null;
      }
    }
    
    protected void 驶(Void paramVoid)
    {
      a.驶(a.this);
      super.onPostExecute(paramVoid);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a
 * JD-Core Version:    0.7.0.1
 */