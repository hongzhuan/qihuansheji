package com.vivo.unionsdk.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class c
{
  private String 士;
  private Handler 始 = null;
  private a 式;
  private b 示;
  private Context 驶 = null;
  
  c(Context paramContext, b paramb)
  {
    this.驶 = paramContext.getApplicationContext();
    this.示 = paramb;
    this.始 = new Handler(this.驶.getMainLooper());
    this.士 = (this.驶.getFilesDir().getAbsolutePath() + File.separator + "vivounionsdk");
  }
  
  private void 式()
  {
    if (this.式 == null)
    {
      m.示("ResourceInstaller", "onSkinPrepared, sdk res install failed for mExtraPackageInfo is null!");
      this.示.驶(false);
      return;
    }
    Object localObject1 = this.式.驶();
    Object localObject2 = this.式.始();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      m.示("ResourceInstaller", "onSkinPrepared, sdk res install failed for resApkPkg or resApkPath is null!, resApkPkg = " + (String)localObject1 + ", resApkPath = " + (String)localObject2);
      this.式 = null;
      this.示.驶(false);
      return;
    }
    Resources localResources = 驶(this.驶, (String)localObject2);
    if (localResources != null)
    {
      localObject2 = 驶(this.驶, localResources);
      localObject1 = localObject2;
      if (localObject2 == null) {
        m.示("ResourceInstaller", "sdk res install failed for createPkgContext failed!");
      }
    }
    for (localObject1 = localObject2; (localResources != null) && (localObject1 != null); localObject1 = null)
    {
      a.驶(this.式, (Context)localObject1);
      a.驶(this.式, localResources);
      this.示.驶(true);
      localObject1 = PreferenceManager.getDefaultSharedPreferences(this.驶);
      ((SharedPreferences)localObject1).edit().putInt("prefs.app_versionCode", j.驶(this.驶, this.驶.getPackageName())).apply();
      ((SharedPreferences)localObject1).edit().putInt("prefs.config_versionCode", 1540).apply();
      return;
      m.示("ResourceInstaller", "sdk res install failed for createPkgResource failed!");
    }
    this.式 = null;
    this.示.驶(false);
  }
  
  private boolean 示()
  {
    boolean bool = false;
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.驶);
    int i = localSharedPreferences.getInt("prefs.app_versionCode", -1);
    int j = localSharedPreferences.getInt("prefs.config_versionCode", -1);
    if (1540 != i) {
      bool = true;
    }
    if (1540 != j) {
      return true;
    }
    return bool;
  }
  
  private Context 驶(Context paramContext, Resources paramResources)
  {
    try
    {
      paramContext = paramContext.createPackageContext(paramContext.getPackageName(), 2);
      Field localField = paramContext.getClass().getDeclaredField("mResources");
      localField.setAccessible(true);
      localField.set(paramContext, paramResources);
      paramResources = paramContext.getClass().getDeclaredField("mPackageInfo");
      paramResources.setAccessible(true);
      paramResources = paramResources.get(paramContext);
      localField = paramResources.getClass().getDeclaredField("mClassLoader");
      localField.setAccessible(true);
      localField.set(paramResources, this.驶.getClassLoader());
      localField = paramResources.getClass().getDeclaredField("mApplication");
      localField.setAccessible(true);
      localField.set(paramResources, this.驶.getApplicationContext());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      m.示("ResourceInstaller", "createPkgContext exception：", paramContext);
    }
    return null;
  }
  
  /* Error */
  private Resources 驶(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 104	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +12 -> 16
    //   7: ldc 84
    //   9: ldc 214
    //   11: invokestatic 216	com/vivo/unionsdk/m:始	(Ljava/lang/String;Ljava/lang/String;)V
    //   14: aconst_null
    //   15: areturn
    //   16: ldc 218
    //   18: invokevirtual 222	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   21: checkcast 218	android/content/res/AssetManager
    //   24: astore_3
    //   25: aload_0
    //   26: aload_3
    //   27: aload_2
    //   28: invokespecial 225	com/vivo/unionsdk/a/c:驶	(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    //   31: aload_3
    //   32: astore_2
    //   33: aload_2
    //   34: ifnull +39 -> 73
    //   37: aload_1
    //   38: invokevirtual 229	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   41: astore_1
    //   42: new 231	android/content/res/Resources
    //   45: dup
    //   46: aload_2
    //   47: aload_1
    //   48: invokevirtual 235	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   51: aload_1
    //   52: invokevirtual 239	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   55: invokespecial 242	android/content/res/Resources:<init>	(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    //   58: areturn
    //   59: astore_3
    //   60: aconst_null
    //   61: astore_2
    //   62: ldc 84
    //   64: ldc 244
    //   66: aload_3
    //   67: invokestatic 246	com/vivo/unionsdk/m:始	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   70: goto -37 -> 33
    //   73: aconst_null
    //   74: areturn
    //   75: astore 4
    //   77: aload_3
    //   78: astore_2
    //   79: aload 4
    //   81: astore_3
    //   82: goto -20 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	c
    //   0	85	1	paramContext	Context
    //   0	85	2	paramString	String
    //   24	8	3	localAssetManager	AssetManager
    //   59	19	3	localException1	Exception
    //   81	1	3	localObject	Object
    //   75	5	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   16	25	59	java/lang/Exception
    //   25	31	75	java/lang/Exception
  }
  
  private a 驶(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return null;
      try
      {
        PackageInfo localPackageInfo = this.驶.getPackageManager().getPackageArchiveInfo(paramString, 0);
        if (localPackageInfo != null)
        {
          a locala = new a();
          a.驶(locala, localPackageInfo.packageName);
          a.始(locala, paramString);
          m.始("ResourceInstaller", "newExtraPkgInfoFromFile, extraPackageInfo = " + locala);
          return locala;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  private void 驶(AssetManager paramAssetManager, String paramString)
  {
    try
    {
      paramAssetManager = paramAssetManager.getClass().getMethod("addAssetPath", new Class[] { String.class }).invoke(paramAssetManager, new Object[] { paramString });
      m.始("ResourceInstaller", "addAssetPath, object = " + paramAssetManager);
      return;
    }
    catch (Exception paramAssetManager)
    {
      m.始("ResourceInstaller", "addAssetPath exception：", paramAssetManager);
    }
  }
  
  public static void 驶(File paramFile)
  {
    if (paramFile == null) {}
    do
    {
      return;
      if (paramFile.isFile())
      {
        paramFile.delete();
        return;
      }
    } while (!paramFile.isDirectory());
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile.delete();
      return;
    }
    int i = 0;
    while (i < arrayOfFile.length)
    {
      驶(arrayOfFile[i]);
      i += 1;
    }
    paramFile.delete();
  }
  
  /* Error */
  public static boolean 驶(Context paramContext, String paramString, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 7
    //   6: iconst_0
    //   7: istore 4
    //   9: aload_2
    //   10: invokevirtual 320	java/io/File:getParentFile	()Ljava/io/File;
    //   13: astore 5
    //   15: aload 5
    //   17: ifnull +22 -> 39
    //   20: aload 5
    //   22: invokestatic 314	com/vivo/unionsdk/a/c:驶	(Ljava/io/File;)V
    //   25: aload 5
    //   27: invokevirtual 323	java/io/File:exists	()Z
    //   30: ifne +9 -> 39
    //   33: aload 5
    //   35: invokevirtual 326	java/io/File:mkdirs	()Z
    //   38: pop
    //   39: aload_2
    //   40: invokevirtual 323	java/io/File:exists	()Z
    //   43: ifne +8 -> 51
    //   46: aload_2
    //   47: invokevirtual 329	java/io/File:createNewFile	()Z
    //   50: pop
    //   51: aload_2
    //   52: invokevirtual 323	java/io/File:exists	()Z
    //   55: ifne +49 -> 104
    //   58: ldc 84
    //   60: new 51	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   67: ldc_w 331
    //   70: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_2
    //   74: invokevirtual 62	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   77: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokestatic 91	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: iload 4
    //   88: ireturn
    //   89: astore 5
    //   91: ldc 84
    //   93: ldc_w 333
    //   96: aload 5
    //   98: invokestatic 211	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   101: goto -50 -> 51
    //   104: aload_0
    //   105: invokevirtual 337	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   108: new 51	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   115: ldc 71
    //   117: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: getstatic 69	java/io/File:separator	Ljava/lang/String;
    //   123: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_1
    //   127: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokevirtual 341	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   136: astore_0
    //   137: new 343	java/io/BufferedInputStream
    //   140: dup
    //   141: aload_0
    //   142: invokespecial 346	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   145: astore 5
    //   147: new 348	java/io/BufferedOutputStream
    //   150: dup
    //   151: new 350	java/io/FileOutputStream
    //   154: dup
    //   155: aload_2
    //   156: invokespecial 352	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   159: invokespecial 355	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   162: astore_2
    //   163: sipush 8192
    //   166: newarray byte
    //   168: astore_1
    //   169: aload 5
    //   171: aload_1
    //   172: iconst_0
    //   173: sipush 8192
    //   176: invokevirtual 359	java/io/BufferedInputStream:read	([BII)I
    //   179: istore_3
    //   180: iload_3
    //   181: ifle +62 -> 243
    //   184: aload_2
    //   185: aload_1
    //   186: iconst_0
    //   187: iload_3
    //   188: invokevirtual 365	java/io/OutputStream:write	([BII)V
    //   191: goto -22 -> 169
    //   194: astore 6
    //   196: aload_0
    //   197: astore_1
    //   198: aload_2
    //   199: astore_0
    //   200: aload 6
    //   202: astore_2
    //   203: ldc 84
    //   205: ldc_w 333
    //   208: aload_2
    //   209: invokestatic 246	com/vivo/unionsdk/m:始	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   212: aload_0
    //   213: ifnull +7 -> 220
    //   216: aload_0
    //   217: invokevirtual 368	java/io/OutputStream:close	()V
    //   220: aload 5
    //   222: ifnull +8 -> 230
    //   225: aload 5
    //   227: invokevirtual 369	java/io/BufferedInputStream:close	()V
    //   230: aload_1
    //   231: ifnull -145 -> 86
    //   234: aload_1
    //   235: invokevirtual 372	java/io/InputStream:close	()V
    //   238: iconst_0
    //   239: ireturn
    //   240: astore_0
    //   241: iconst_0
    //   242: ireturn
    //   243: aload_2
    //   244: invokevirtual 375	java/io/OutputStream:flush	()V
    //   247: aload_2
    //   248: invokevirtual 368	java/io/OutputStream:close	()V
    //   251: aload 5
    //   253: invokevirtual 369	java/io/BufferedInputStream:close	()V
    //   256: iconst_1
    //   257: istore 4
    //   259: aload_2
    //   260: ifnull +7 -> 267
    //   263: aload_2
    //   264: invokevirtual 368	java/io/OutputStream:close	()V
    //   267: aload 5
    //   269: ifnull +8 -> 277
    //   272: aload 5
    //   274: invokevirtual 369	java/io/BufferedInputStream:close	()V
    //   277: aload_0
    //   278: ifnull -192 -> 86
    //   281: aload_0
    //   282: invokevirtual 372	java/io/InputStream:close	()V
    //   285: iconst_1
    //   286: ireturn
    //   287: astore_0
    //   288: iconst_1
    //   289: ireturn
    //   290: astore_1
    //   291: aconst_null
    //   292: astore_2
    //   293: aconst_null
    //   294: astore_0
    //   295: aload 6
    //   297: ifnull +8 -> 305
    //   300: aload 6
    //   302: invokevirtual 368	java/io/OutputStream:close	()V
    //   305: aload_2
    //   306: ifnull +7 -> 313
    //   309: aload_2
    //   310: invokevirtual 369	java/io/BufferedInputStream:close	()V
    //   313: aload_0
    //   314: ifnull +7 -> 321
    //   317: aload_0
    //   318: invokevirtual 372	java/io/InputStream:close	()V
    //   321: aload_1
    //   322: athrow
    //   323: astore_1
    //   324: goto -57 -> 267
    //   327: astore_1
    //   328: goto -51 -> 277
    //   331: astore_0
    //   332: goto -112 -> 220
    //   335: astore_0
    //   336: goto -106 -> 230
    //   339: astore 5
    //   341: goto -36 -> 305
    //   344: astore_2
    //   345: goto -32 -> 313
    //   348: astore_0
    //   349: goto -28 -> 321
    //   352: astore_1
    //   353: aconst_null
    //   354: astore_2
    //   355: goto -60 -> 295
    //   358: astore_1
    //   359: aload 5
    //   361: astore_2
    //   362: goto -67 -> 295
    //   365: astore_1
    //   366: aload_2
    //   367: astore 6
    //   369: aload 5
    //   371: astore_2
    //   372: goto -77 -> 295
    //   375: astore 6
    //   377: aload_1
    //   378: astore 7
    //   380: aload 5
    //   382: astore_2
    //   383: aload 6
    //   385: astore_1
    //   386: aload_0
    //   387: astore 6
    //   389: aload 7
    //   391: astore_0
    //   392: goto -97 -> 295
    //   395: astore_2
    //   396: aconst_null
    //   397: astore_0
    //   398: aconst_null
    //   399: astore_1
    //   400: aload 7
    //   402: astore 5
    //   404: goto -201 -> 203
    //   407: astore_2
    //   408: aconst_null
    //   409: astore 5
    //   411: aload_0
    //   412: astore_1
    //   413: aload 5
    //   415: astore_0
    //   416: aload 7
    //   418: astore 5
    //   420: goto -217 -> 203
    //   423: astore_2
    //   424: aconst_null
    //   425: astore 6
    //   427: aload_0
    //   428: astore_1
    //   429: aload 6
    //   431: astore_0
    //   432: goto -229 -> 203
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	435	0	paramContext	Context
    //   0	435	1	paramString	String
    //   0	435	2	paramFile	File
    //   179	9	3	i	int
    //   7	251	4	bool	boolean
    //   13	21	5	localFile1	File
    //   89	8	5	localIOException1	IOException
    //   145	128	5	localBufferedInputStream	java.io.BufferedInputStream
    //   339	42	5	localIOException2	IOException
    //   402	17	5	str1	String
    //   1	1	6	localObject1	Object
    //   194	107	6	localException	Exception
    //   367	1	6	localFile2	File
    //   375	9	6	localObject2	Object
    //   387	43	6	localContext	Context
    //   4	413	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   46	51	89	java/io/IOException
    //   163	169	194	java/lang/Exception
    //   169	180	194	java/lang/Exception
    //   184	191	194	java/lang/Exception
    //   243	256	194	java/lang/Exception
    //   234	238	240	java/io/IOException
    //   281	285	287	java/io/IOException
    //   104	137	290	finally
    //   263	267	323	java/io/IOException
    //   272	277	327	java/io/IOException
    //   216	220	331	java/io/IOException
    //   225	230	335	java/io/IOException
    //   300	305	339	java/io/IOException
    //   309	313	344	java/io/IOException
    //   317	321	348	java/io/IOException
    //   137	147	352	finally
    //   147	163	358	finally
    //   163	169	365	finally
    //   169	180	365	finally
    //   184	191	365	finally
    //   243	256	365	finally
    //   203	212	375	finally
    //   104	137	395	java/lang/Exception
    //   137	147	407	java/lang/Exception
    //   147	163	423	java/lang/Exception
  }
  
  public String 始()
  {
    return null;
  }
  
  public a 驶()
  {
    return this.式;
  }
  
  public void 驶(boolean paramBoolean)
  {
    this.式 = null;
    if (paramBoolean) {}
    for (boolean bool = true;; bool = 示())
    {
      m.驶("ResourceInstaller", "install, copyRes = " + bool + ", forceCopy = " + paramBoolean);
      new c(bool, null).execute((Void[])null);
      return;
    }
  }
  
  public static class a
  {
    private String 始;
    private Context 式;
    private Resources 示;
    private String 驶;
    
    public String toString()
    {
      return "SdkResource[" + this.驶 + ", " + this.始 + "]";
    }
    
    public String 始()
    {
      return this.始;
    }
    
    public Context 式()
    {
      return this.式;
    }
    
    public Resources 示()
    {
      return this.示;
    }
    
    public String 驶()
    {
      return this.驶;
    }
  }
  
  public static abstract interface b
  {
    public abstract void 驶(boolean paramBoolean);
  }
  
  public class c
    extends AsyncTask
  {
    private boolean 始 = false;
    
    private c(boolean paramBoolean)
    {
      this.始 = paramBoolean;
    }
    
    protected Void 驶(Void... paramVarArgs)
    {
      boolean bool1 = false;
      boolean bool2 = false;
      m.始("ResourceInstaller", "ResourceInstallTask --- doInBackground, mReinstall = " + this.始);
      int i;
      try
      {
        paramVarArgs = c.驶(c.this).getAssets().list("vivounionsdk");
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
          break label434;
        }
      }
      Object localObject = paramVarArgs[i];
      if (TextUtils.isEmpty((CharSequence)localObject)) {}
      while (!((String)localObject).endsWith(".res"))
      {
        i += 1;
        break;
      }
      label434:
      for (paramVarArgs = (Void[])localObject;; paramVarArgs = null)
      {
        m.始("ResourceInstaller", "ResourceInstallTask --- doInBackground, fileName = " + paramVarArgs);
        if (TextUtils.isEmpty(paramVarArgs)) {
          break;
        }
        if (!this.始)
        {
          localObject = new File(c.始(c.this) + File.separator + paramVarArgs);
          bool1 = bool2;
          if (((File)localObject).exists())
          {
            bool1 = bool2;
            if (((File)localObject).canRead()) {
              bool1 = true;
            }
          }
          m.始("ResourceInstaller", "doInBackground, check apk exist, resApkExist =  " + bool1);
        }
        if (bool1)
        {
          c.驶(c.this, c.驶(c.this, c.始(c.this) + File.separator + paramVarArgs));
          return null;
        }
        c.驶(new File(c.始(c.this)));
        bool1 = c.驶(c.驶(c.this), paramVarArgs, new File(c.始(c.this) + File.separator + paramVarArgs));
        m.驶("ResourceInstaller", "doInBackground, copyResApk = " + bool1);
        if (!bool1) {
          break;
        }
        c.驶(c.this, c.驶(c.this, c.始(c.this) + File.separator + paramVarArgs));
        return null;
      }
    }
    
    protected void 驶(Void paramVoid)
    {
      super.onPostExecute(paramVoid);
      m.始("ResourceInstaller", "ResourceInstallTask -- onPostExecute, mExtraPackageInfo = " + c.式(c.this));
      c.士(c.this).post(new e(this));
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.c
 * JD-Core Version:    0.7.0.1
 */