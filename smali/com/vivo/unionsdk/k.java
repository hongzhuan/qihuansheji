package com.vivo.unionsdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class k
{
  private static boolean 士;
  private static String 始;
  private static String 式;
  private static String 示;
  private static boolean 藛;
  private static boolean 藞;
  private static String 藟;
  private static String 藠;
  private static final byte[] 藡;
  private static final boolean 藥;
  private static String 驶 = null;
  
  static
  {
    始 = "ro.vivo.product.solution";
    式 = "QCOM";
    示 = "MTK";
    士 = false;
    藛 = false;
    藞 = false;
    藟 = "";
    藠 = "";
    藡 = new byte[0];
    藥 = j.驶("ro.vivo.op.entry", "no").contains("CTCC");
    驶 = j.驶(始, "");
    藛 = 式.equals(驶);
    士 = 示.equals(驶);
    if (Build.VERSION.SDK_INT < 21) {
      if (!士) {}
    }
    for (;;)
    {
      Object localObject2;
      try
      {
        Class localClass = Class.forName("com.mediatek.common.featureoption.FeatureOption");
        localObject2 = localClass.getDeclaredField("MTK_GEMINI_SUPPORT");
        ((Field)localObject2).setAccessible(true);
        藞 = ((Field)localObject2).getBoolean(localClass.newInstance());
        localClass.getDeclaredField("MTK_VT3G324M_SUPPORT").setAccessible(true);
        m.始("ImeiUtis", "isMtk " + 士 + " isMulSimCard " + 藞);
        return;
      }
      catch (Exception localException1)
      {
        m.示("ImeiUtis", "Exception " + localException1.getMessage());
        continue;
      }
      if (藛)
      {
        藞 = false;
        try
        {
          Object localObject1 = Class.forName("android.telephony.MSimTelephonyManager");
          localObject2 = ((Class)localObject1).getMethod("getDefault", new Class[0]);
          if (localObject2 == null) {
            continue;
          }
          localObject2 = ((Method)localObject2).invoke(null, new Object[0]);
          localObject1 = ((Class)localObject1).getMethod("isMultiSimEnabled", new Class[0]);
          if (localObject1 == null) {
            continue;
          }
          藞 = ((Boolean)((Method)localObject1).invoke(localObject2, new Object[0])).booleanValue();
        }
        catch (Exception localException2)
        {
          m.示("ImeiUtis", "Exception qcom error" + localException2.getMessage());
        }
        continue;
        藞 = 式();
      }
    }
  }
  
  private static String 始()
  {
    try
    {
      Object localObject = Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "phone" });
      localObject = Class.forName("com.android.internal.telephony.ITelephony$Stub").getMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { localObject });
      if (localObject != null)
      {
        localObject = (String)localObject.getClass().getMethod("getImei", new Class[0]).invoke(localObject, new Object[0]);
        return localObject;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return "";
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        localClassNotFoundException.printStackTrace();
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        localNoSuchMethodException.printStackTrace();
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        localInvocationTargetException.printStackTrace();
      }
    }
  }
  
  private static String 始(int paramInt)
  {
    try
    {
      Object localObject1 = Class.forName("android.telephony.MSimTelephonyManager");
      Object localObject2 = ((Class)localObject1).getMethod("getDefault", new Class[0]);
      if (localObject2 != null)
      {
        localObject2 = ((Method)localObject2).invoke(null, new Object[0]);
        localObject1 = ((Class)localObject1).getMethod("getDeviceId", new Class[] { Integer.TYPE });
        if (localObject1 != null)
        {
          localObject1 = (String)((Method)localObject1).invoke(localObject2, new Object[] { Integer.valueOf(paramInt) });
          return localObject1;
        }
      }
    }
    catch (Exception localException)
    {
      return "";
    }
    return "";
  }
  
  private static String 始(Context paramContext)
  {
    try
    {
      Method localMethod = Class.forName("android.telephony.FtTelephonyAdapter").getMethod("getFtTelephony", new Class[] { Context.class });
      if (localMethod == null) {
        break label113;
      }
      paramContext = localMethod.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        break label113;
      }
      paramContext = (String)paramContext.getClass().getMethod("getImei", new Class[] { Integer.TYPE }).invoke(paramContext, new Object[] { Integer.valueOf(0) });
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = "";
        continue;
        label113:
        paramContext = "";
      }
    }
    m.驶("ImeiUtis", "funtouchSDKImei=" + paramContext);
    return paramContext;
  }
  
  private static boolean 式()
  {
    try
    {
      Object localObject1 = Class.forName("android.telephony.TelephonyManager");
      Object localObject2 = ((Class)localObject1).getMethod("getDefault", new Class[0]);
      if (localObject2 != null)
      {
        localObject2 = ((Method)localObject2).invoke(null, new Object[0]);
        localObject1 = ((Class)localObject1).getMethod("isMultiSimEnabled", new Class[0]);
        if (localObject1 != null)
        {
          boolean bool = ((Boolean)((Method)localObject1).invoke(localObject2, new Object[0])).booleanValue();
          return bool;
        }
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    return false;
  }
  
  public static String 驶()
  {
    if (TextUtils.isEmpty(藠)) {}
    synchronized (藡)
    {
      try
      {
        藠 = 驶(new File("/sys/block/mmcblk0/device/cid"), 0, null).trim();
        return 藠;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          try
          {
            藠 = 驶(new File("/sys/ufs/ufsid"), 0, null).trim();
          }
          catch (IOException localIOException2)
          {
            localIOException2.printStackTrace();
          }
        }
      }
    }
  }
  
  private static String 驶(int paramInt)
  {
    try
    {
      Object localObject1 = Class.forName("com.mediatek.telephony.TelephonyManagerEx");
      Object localObject2 = ((Class)localObject1).getMethod("getDefault", new Class[0]);
      if (localObject2 != null)
      {
        localObject2 = ((Method)localObject2).invoke(null, new Object[0]);
        localObject1 = ((Class)localObject1).getMethod("getDeviceId", new Class[] { Integer.TYPE });
        if (localObject1 != null)
        {
          localObject1 = (String)((Method)localObject1).invoke(localObject2, new Object[] { Integer.valueOf(paramInt) });
          return localObject1;
        }
      }
    }
    catch (Exception localException)
    {
      return "";
    }
    return "";
  }
  
  /* Error */
  public static String 驶(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   3: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +291 -> 297
    //   9: aload_0
    //   10: ldc 185
    //   12: invokevirtual 263	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   15: checkcast 265	android/telephony/TelephonyManager
    //   18: astore 8
    //   20: getstatic 79	android/os/Build$VERSION:SDK_INT	I
    //   23: bipush 22
    //   25: if_icmplt +10 -> 35
    //   28: aload_0
    //   29: invokestatic 267	com/vivo/unionsdk/k:始	(Landroid/content/Context;)Ljava/lang/String;
    //   32: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   35: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   38: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   41: ifeq +15 -> 56
    //   44: getstatic 69	com/vivo/unionsdk/k:藥	Z
    //   47: ifeq +254 -> 301
    //   50: invokestatic 269	com/vivo/unionsdk/k:始	()Ljava/lang/String;
    //   53: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   56: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   59: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   62: ifeq +176 -> 238
    //   65: iconst_m1
    //   66: istore_1
    //   67: iload_1
    //   68: istore_2
    //   69: iload_1
    //   70: istore_3
    //   71: iload_1
    //   72: istore 4
    //   74: iload_1
    //   75: istore 5
    //   77: iload_1
    //   78: istore 6
    //   80: aload 8
    //   82: invokevirtual 195	java/lang/Object:getClass	()Ljava/lang/Class;
    //   85: ldc_w 271
    //   88: iconst_0
    //   89: anewarray 83	java/lang/Class
    //   92: invokevirtual 150	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   95: astore_0
    //   96: iload_1
    //   97: istore_2
    //   98: iload_1
    //   99: istore_3
    //   100: iload_1
    //   101: istore 4
    //   103: iload_1
    //   104: istore 5
    //   106: iload_1
    //   107: istore 6
    //   109: aload_0
    //   110: invokevirtual 274	java/lang/reflect/Method:isAccessible	()Z
    //   113: istore 7
    //   115: iload_1
    //   116: istore_2
    //   117: iload_1
    //   118: istore_3
    //   119: iload_1
    //   120: istore 4
    //   122: iload_1
    //   123: istore 5
    //   125: iload_1
    //   126: istore 6
    //   128: aload_0
    //   129: iconst_1
    //   130: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   133: iload_1
    //   134: istore_2
    //   135: iload_1
    //   136: istore_3
    //   137: iload_1
    //   138: istore 4
    //   140: iload_1
    //   141: istore 5
    //   143: iload_1
    //   144: istore 6
    //   146: aload_0
    //   147: aload 8
    //   149: iconst_0
    //   150: anewarray 4	java/lang/Object
    //   153: invokevirtual 156	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   156: checkcast 209	java/lang/Integer
    //   159: invokevirtual 279	java/lang/Integer:intValue	()I
    //   162: istore_1
    //   163: iload_1
    //   164: istore_2
    //   165: iload_1
    //   166: istore_3
    //   167: iload_1
    //   168: istore 4
    //   170: iload_1
    //   171: istore 5
    //   173: iload_1
    //   174: istore 6
    //   176: aload_0
    //   177: iload 7
    //   179: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   182: iload_1
    //   183: iconst_1
    //   184: if_icmpgt +202 -> 386
    //   187: aload 8
    //   189: invokevirtual 195	java/lang/Object:getClass	()Ljava/lang/Class;
    //   192: ldc 197
    //   194: iconst_0
    //   195: anewarray 83	java/lang/Class
    //   198: invokevirtual 150	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   201: astore_0
    //   202: aload_0
    //   203: invokevirtual 274	java/lang/reflect/Method:isAccessible	()Z
    //   206: istore 7
    //   208: aload_0
    //   209: iconst_1
    //   210: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   213: aload_0
    //   214: aload 8
    //   216: iconst_0
    //   217: anewarray 4	java/lang/Object
    //   220: invokevirtual 156	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   223: checkcast 63	java/lang/String
    //   226: checkcast 63	java/lang/String
    //   229: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   232: aload_0
    //   233: iload 7
    //   235: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   238: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   241: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   244: ifeq +38 -> 282
    //   247: aload 8
    //   249: invokevirtual 281	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   252: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   255: ldc 110
    //   257: new 112	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   264: ldc_w 283
    //   267: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   273: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokestatic 228	com/vivo/unionsdk/m:驶	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   285: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   288: ifeq +9 -> 297
    //   291: ldc_w 285
    //   294: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   297: getstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   300: areturn
    //   301: getstatic 42	com/vivo/unionsdk/k:藞	Z
    //   304: ifeq -248 -> 56
    //   307: getstatic 38	com/vivo/unionsdk/k:士	Z
    //   310: ifeq +13 -> 323
    //   313: iconst_0
    //   314: invokestatic 287	com/vivo/unionsdk/k:驶	(I)Ljava/lang/String;
    //   317: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   320: goto -264 -> 56
    //   323: iconst_0
    //   324: invokestatic 289	com/vivo/unionsdk/k:始	(I)Ljava/lang/String;
    //   327: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   330: goto -274 -> 56
    //   333: astore_0
    //   334: aload_0
    //   335: invokevirtual 290	java/lang/NumberFormatException:printStackTrace	()V
    //   338: iload_2
    //   339: istore_1
    //   340: goto -158 -> 182
    //   343: astore_0
    //   344: aload_0
    //   345: invokevirtual 202	java/lang/NoSuchMethodException:printStackTrace	()V
    //   348: iload_3
    //   349: istore_1
    //   350: goto -168 -> 182
    //   353: astore_0
    //   354: aload_0
    //   355: invokevirtual 203	java/lang/IllegalAccessException:printStackTrace	()V
    //   358: iload 4
    //   360: istore_1
    //   361: goto -179 -> 182
    //   364: astore_0
    //   365: aload_0
    //   366: invokevirtual 200	java/lang/IllegalArgumentException:printStackTrace	()V
    //   369: iload 5
    //   371: istore_1
    //   372: goto -190 -> 182
    //   375: astore_0
    //   376: aload_0
    //   377: invokevirtual 204	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   380: iload 6
    //   382: istore_1
    //   383: goto -201 -> 182
    //   386: aload 8
    //   388: invokevirtual 195	java/lang/Object:getClass	()Ljava/lang/Class;
    //   391: ldc 197
    //   393: iconst_1
    //   394: anewarray 83	java/lang/Class
    //   397: dup
    //   398: iconst_0
    //   399: getstatic 213	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   402: aastore
    //   403: invokevirtual 150	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   406: astore_0
    //   407: aload_0
    //   408: invokevirtual 274	java/lang/reflect/Method:isAccessible	()Z
    //   411: istore 7
    //   413: aload_0
    //   414: iconst_1
    //   415: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   418: aload_0
    //   419: aload 8
    //   421: iconst_1
    //   422: anewarray 4	java/lang/Object
    //   425: dup
    //   426: iconst_0
    //   427: iconst_0
    //   428: invokestatic 217	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   431: aastore
    //   432: invokevirtual 156	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   435: checkcast 63	java/lang/String
    //   438: checkcast 63	java/lang/String
    //   441: putstatic 46	com/vivo/unionsdk/k:藟	Ljava/lang/String;
    //   444: aload_0
    //   445: iload 7
    //   447: invokevirtual 275	java/lang/reflect/Method:setAccessible	(Z)V
    //   450: goto -212 -> 238
    //   453: astore_0
    //   454: aload_0
    //   455: invokevirtual 202	java/lang/NoSuchMethodException:printStackTrace	()V
    //   458: goto -220 -> 238
    //   461: astore_0
    //   462: aload_0
    //   463: invokevirtual 203	java/lang/IllegalAccessException:printStackTrace	()V
    //   466: goto -228 -> 238
    //   469: astore_0
    //   470: aload_0
    //   471: invokevirtual 200	java/lang/IllegalArgumentException:printStackTrace	()V
    //   474: goto -236 -> 238
    //   477: astore_0
    //   478: aload_0
    //   479: invokevirtual 204	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   482: goto -244 -> 238
    //   485: astore_0
    //   486: ldc 110
    //   488: new 112	java/lang/StringBuilder
    //   491: dup
    //   492: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   495: ldc_w 292
    //   498: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: aload_0
    //   502: invokevirtual 293	java/lang/SecurityException:toString	()Ljava/lang/String;
    //   505: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   511: invokestatic 142	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;)V
    //   514: goto -232 -> 282
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	517	0	paramContext	Context
    //   66	317	1	i	int
    //   68	271	2	j	int
    //   70	279	3	k	int
    //   72	287	4	m	int
    //   75	295	5	n	int
    //   78	303	6	i1	int
    //   113	333	7	bool	boolean
    //   18	402	8	localTelephonyManager	android.telephony.TelephonyManager
    // Exception table:
    //   from	to	target	type
    //   80	96	333	java/lang/NumberFormatException
    //   109	115	333	java/lang/NumberFormatException
    //   128	133	333	java/lang/NumberFormatException
    //   146	163	333	java/lang/NumberFormatException
    //   176	182	333	java/lang/NumberFormatException
    //   80	96	343	java/lang/NoSuchMethodException
    //   109	115	343	java/lang/NoSuchMethodException
    //   128	133	343	java/lang/NoSuchMethodException
    //   146	163	343	java/lang/NoSuchMethodException
    //   176	182	343	java/lang/NoSuchMethodException
    //   80	96	353	java/lang/IllegalAccessException
    //   109	115	353	java/lang/IllegalAccessException
    //   128	133	353	java/lang/IllegalAccessException
    //   146	163	353	java/lang/IllegalAccessException
    //   176	182	353	java/lang/IllegalAccessException
    //   80	96	364	java/lang/IllegalArgumentException
    //   109	115	364	java/lang/IllegalArgumentException
    //   128	133	364	java/lang/IllegalArgumentException
    //   146	163	364	java/lang/IllegalArgumentException
    //   176	182	364	java/lang/IllegalArgumentException
    //   80	96	375	java/lang/reflect/InvocationTargetException
    //   109	115	375	java/lang/reflect/InvocationTargetException
    //   128	133	375	java/lang/reflect/InvocationTargetException
    //   146	163	375	java/lang/reflect/InvocationTargetException
    //   176	182	375	java/lang/reflect/InvocationTargetException
    //   187	238	453	java/lang/NoSuchMethodException
    //   386	450	453	java/lang/NoSuchMethodException
    //   187	238	461	java/lang/IllegalAccessException
    //   386	450	461	java/lang/IllegalAccessException
    //   187	238	469	java/lang/IllegalArgumentException
    //   386	450	469	java/lang/IllegalArgumentException
    //   187	238	477	java/lang/reflect/InvocationTargetException
    //   386	450	477	java/lang/reflect/InvocationTargetException
    //   247	282	485	java/lang/SecurityException
  }
  
  private static String 驶(File paramFile, int paramInt, String paramString)
  {
    File localFile = null;
    int j = 1;
    int i = 0;
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(localFileInputStream);
    for (;;)
    {
      long l;
      Object localObject;
      try
      {
        l = paramFile.length();
        if (paramInt > 0) {
          break label455;
        }
        if ((l > 0L) && (paramInt == 0))
        {
          break label455;
          paramFile = new byte[i + 1];
          paramInt = localBufferedInputStream.read(paramFile);
          if (paramInt <= 0) {
            return "";
          }
          if (paramInt <= i)
          {
            paramFile = new String(paramFile, 0, paramInt);
            return paramFile;
          }
          if (paramString == null)
          {
            paramFile = new String(paramFile, 0, i);
            return paramFile;
          }
          paramFile = new String(paramFile, 0, i) + paramString;
          return paramFile;
        }
        if (paramInt < 0)
        {
          paramFile = null;
          if (localFile != null) {
            i = 1;
          }
          localObject = localFile;
          if (localFile == null)
          {
            k = -paramInt;
            localObject = new byte[k];
          }
          int k = localBufferedInputStream.read((byte[])localObject);
          if (k == localObject.length) {
            break label446;
          }
          if ((paramFile == null) && (k <= 0)) {
            return "";
          }
          if (paramFile == null)
          {
            paramFile = new String((byte[])localObject, 0, k);
            return paramFile;
          }
          if (k > 0)
          {
            System.arraycopy(paramFile, k, paramFile, 0, paramFile.length - k);
            System.arraycopy(localObject, 0, paramFile, paramFile.length - k, k);
            i = j;
            break label485;
            paramFile = new String(paramFile);
            return paramFile;
            paramFile = paramString + new String(paramFile);
            return paramFile;
          }
        }
        else
        {
          paramFile = new ByteArrayOutputStream();
          paramString = new byte[1024];
          paramInt = localBufferedInputStream.read(paramString);
          if (paramInt > 0) {
            paramFile.write(paramString, 0, paramInt);
          }
          if (paramInt == paramString.length) {
            continue;
          }
          paramFile = paramFile.toString();
          return paramFile;
        }
      }
      finally
      {
        localBufferedInputStream.close();
        localFileInputStream.close();
      }
      break label485;
      label446:
      localFile = paramFile;
      paramFile = (File)localObject;
      continue;
      label455:
      i = paramInt;
      if (l > 0L) {
        if (paramInt != 0)
        {
          i = paramInt;
          if (l >= paramInt) {}
        }
        else
        {
          i = (int)l;
          continue;
          label485:
          if (paramString != null) {
            if (i != 0) {}
          }
        }
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.k
 * JD-Core Version:    0.7.0.1
 */