package com.vivo.unionsdk.c;

import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentFilter.AuthorityEntry;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.PatternMatcher;
import android.text.TextUtils;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.n;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

class f
  extends AsyncTask
{
  private ArrayList 始 = new ArrayList();
  private Context 驶;
  
  f(Context paramContext)
  {
    this.驶 = paramContext.getApplicationContext();
  }
  
  private void 士(b paramb, n paramn)
  {
    Object localObject1 = paramb.藛();
    paramb = paramn.士();
    if (((ArrayList)localObject1).isEmpty()) {}
    for (;;)
    {
      return;
      if (paramb == null)
      {
        paramb = ((ArrayList)localObject1).iterator();
        while (paramb.hasNext())
        {
          paramn = (c)paramb.next();
          this.始.add("Meta-data missed: " + paramn.式());
        }
      }
      else
      {
        paramn = ((ArrayList)localObject1).iterator();
        while (paramn.hasNext())
        {
          Object localObject2 = (c)paramn.next();
          localObject1 = ((c)localObject2).式();
          localObject2 = ((c)localObject2).驶();
          String str = paramb.getString((String)localObject1);
          if (TextUtils.isEmpty(str)) {
            this.始.add("Meta-data missed: " + (String)localObject1);
          } else if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!((String)localObject2).equals(str))) {
            this.始.add("Meta-data value error: " + (String)localObject1);
          }
        }
      }
    }
  }
  
  private void 始(b paramb, n paramn)
  {
    paramn = paramn.始();
    paramb = paramb.式().iterator();
    while (paramb.hasNext())
    {
      String str = ((a)paramb.next()).式();
      if ((a)paramn.get(str) != null) {
        this.始.add("Receiver unnecessary: " + str);
      }
    }
  }
  
  private void 式(b paramb, n paramn)
  {
    paramn = paramn.式();
    paramb = paramb.示().iterator();
    while (paramb.hasNext())
    {
      String str = ((g)paramb.next()).式();
      if ((g)paramn.get(str) != null) {
        this.始.add("Service unnecessary: " + str);
      }
    }
  }
  
  private void 示(b paramb, n paramn)
  {
    paramn = paramn.示();
    paramb = paramb.士().iterator();
    while (paramb.hasNext())
    {
      String str = ((g)paramb.next()).式();
      if ((g)paramn.get(str) == null) {
        this.始.add("Permission missed: " + str);
      }
    }
  }
  
  private void 驶()
  {
    int i = 0;
    Object localObject = null;
    try
    {
      String[] arrayOfString = this.驶.getAssets().list("vivounionsdk");
      localObject = arrayOfString;
    }
    catch (IOException localIOException)
    {
      int j;
      do
      {
        for (;;)
        {
          m.示("SelfTest", "verifyAssets exception: ", localIOException);
        }
        int m = localObject.length;
        j = 0;
        if (i < m)
        {
          CharSequence localCharSequence = localObject[i];
          int k;
          if (TextUtils.isEmpty(localCharSequence)) {
            k = j;
          }
          for (;;)
          {
            i += 1;
            j = k;
            break;
            k = j;
            if (localCharSequence.endsWith(".res")) {
              k = j + 1;
            }
          }
        }
        m.驶("SelfTest", "verifyAssets, resCount = " + j);
      } while (j == 1);
      this.始.add("Asset file error: vivounionsdk" + File.separator + ".res");
    }
    if (localObject == null)
    {
      this.始.add("Asset file error: vivounionsdk" + File.separator + ".res");
      return;
    }
  }
  
  private void 驶(b paramb, n paramn)
  {
    Object localObject2 = paramb.驶();
    Object localObject1 = paramb.始();
    paramb = paramn.驶();
    paramn = ((ArrayList)localObject2).iterator();
    while (paramn.hasNext())
    {
      localObject2 = (a)paramn.next();
      String str = ((a)localObject2).式();
      a locala = (a)paramb.get(str);
      if (locala == null) {
        this.始.add("Activity missed: " + str);
      } else if (((a)localObject2).驶() != locala.驶()) {
        this.始.add("Activity theme error: " + str);
      } else {
        驶(((a)localObject2).始(), locala.始(), str);
      }
    }
    paramn = ((ArrayList)localObject1).iterator();
    while (paramn.hasNext())
    {
      localObject1 = ((a)paramn.next()).式();
      if ((a)paramb.get(localObject1) != null) {
        this.始.add("Activity unnecessary: " + (String)localObject1);
      }
    }
  }
  
  private void 驶(ArrayList paramArrayList1, ArrayList paramArrayList2, String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int m = paramArrayList1.size();
    int n = paramArrayList2.size();
    if (m == 0) {
      localArrayList1.addAll(paramArrayList2);
    }
    for (;;)
    {
      if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0)) {
        this.始.add("Activity intent-filter error: " + paramString);
      }
      return;
      if (n == 0)
      {
        localArrayList2.addAll(paramArrayList1);
      }
      else
      {
        localArrayList2.addAll(paramArrayList1);
        localArrayList1.addAll(paramArrayList2);
        int i = 0;
        while (i < m)
        {
          IntentFilter localIntentFilter1 = (IntentFilter)paramArrayList1.get(i);
          int j = 0;
          int k = 0;
          while (j < n)
          {
            IntentFilter localIntentFilter2 = (IntentFilter)paramArrayList2.get(j);
            if (驶(localIntentFilter1, localIntentFilter2)) {
              k = 1;
            }
            if (k != 0) {
              localArrayList1.remove(localIntentFilter2);
            }
            j += 1;
          }
          if (k != 0) {
            localArrayList2.remove(localIntentFilter1);
          }
          i += 1;
        }
      }
    }
  }
  
  private boolean 驶(IntentFilter paramIntentFilter1, IntentFilter paramIntentFilter2)
  {
    if (!驶(paramIntentFilter1, paramIntentFilter2, 0)) {}
    while ((!驶(paramIntentFilter1, paramIntentFilter2, 1)) || (!驶(paramIntentFilter1, paramIntentFilter2, 2)) || (!驶(paramIntentFilter1, paramIntentFilter2, 3)) || (!驶(paramIntentFilter1, paramIntentFilter2, 4))) {
      return false;
    }
    return true;
  }
  
  private boolean 驶(IntentFilter paramIntentFilter1, IntentFilter paramIntentFilter2, int paramInt)
  {
    boolean bool2 = true;
    int j;
    int i;
    if (paramInt == 0)
    {
      j = paramIntentFilter1.countActions();
      i = paramIntentFilter2.countActions();
    }
    for (;;)
    {
      boolean bool1;
      if (j != i) {
        bool1 = false;
      }
      int m;
      do
      {
        return bool1;
        if (paramInt == 1)
        {
          j = paramIntentFilter1.countCategories();
          i = paramIntentFilter2.countCategories();
          break;
        }
        if (paramInt == 2)
        {
          j = paramIntentFilter1.countDataSchemes();
          i = paramIntentFilter2.countDataSchemes();
          break;
        }
        if (paramInt == 3)
        {
          j = paramIntentFilter1.countDataAuthorities();
          i = paramIntentFilter2.countDataAuthorities();
          break;
        }
        if (paramInt != 4) {
          break label314;
        }
        j = paramIntentFilter1.countDataPaths();
        i = paramIntentFilter2.countDataPaths();
        break;
        m = 0;
        bool1 = bool2;
      } while (m >= j);
      int n = 0;
      int k = 0;
      label132:
      String str2;
      String str1;
      if (n < i)
      {
        str2 = null;
        str1 = null;
        if (paramInt == 0)
        {
          str2 = paramIntentFilter1.getAction(m);
          str1 = paramIntentFilter2.getAction(n);
          label165:
          if (!str2.equals(str1)) {
            break label311;
          }
          k = 1;
        }
      }
      label311:
      for (;;)
      {
        n += 1;
        break label132;
        if (paramInt == 1)
        {
          str2 = paramIntentFilter1.getCategory(m);
          str1 = paramIntentFilter2.getCategory(n);
          break label165;
        }
        if (paramInt == 2)
        {
          str2 = paramIntentFilter1.getDataScheme(m);
          str1 = paramIntentFilter2.getDataScheme(n);
          break label165;
        }
        if (paramInt == 3)
        {
          str2 = paramIntentFilter1.getDataAuthority(m).getHost();
          str1 = paramIntentFilter2.getDataAuthority(n).getHost();
          break label165;
        }
        if (paramInt != 4) {
          break label165;
        }
        str2 = paramIntentFilter1.getDataPath(m).getPath();
        str1 = paramIntentFilter2.getDataPath(n).getPath();
        break label165;
        if (k == 0) {
          return false;
        }
        m += 1;
        break;
      }
      label314:
      i = 0;
      j = 0;
    }
  }
  
  private static byte[] 驶(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[4096];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  /* Error */
  protected Void 驶(Void... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 26	com/vivo/unionsdk/c/f:驶	Landroid/content/Context;
    //   6: invokevirtual 137	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   9: ldc_w 295
    //   12: invokevirtual 299	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +39 -> 56
    //   20: aload_0
    //   21: getfield 18	com/vivo/unionsdk/c/f:始	Ljava/util/ArrayList;
    //   24: ldc_w 301
    //   27: invokevirtual 79	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   30: pop
    //   31: aload_1
    //   32: ifnull +7 -> 39
    //   35: aload_1
    //   36: invokevirtual 304	java/io/InputStream:close	()V
    //   39: aconst_null
    //   40: areturn
    //   41: astore_1
    //   42: ldc 157
    //   44: ldc_w 306
    //   47: aload_1
    //   48: invokestatic 164	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -37 -> 16
    //   56: aload_1
    //   57: invokestatic 308	com/vivo/unionsdk/c/f:驶	(Ljava/io/InputStream;)[B
    //   60: astore_2
    //   61: aload_2
    //   62: ifnonnull +39 -> 101
    //   65: ldc 157
    //   67: ldc_w 310
    //   70: invokestatic 312	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload_1
    //   74: ifnull -35 -> 39
    //   77: aload_1
    //   78: invokevirtual 304	java/io/InputStream:close	()V
    //   81: aconst_null
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: areturn
    //   86: astore_2
    //   87: ldc 157
    //   89: ldc_w 306
    //   92: aload_2
    //   93: invokestatic 164	com/vivo/unionsdk/m:示	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   96: aconst_null
    //   97: astore_2
    //   98: goto -37 -> 61
    //   101: aload_0
    //   102: getfield 26	com/vivo/unionsdk/c/f:驶	Landroid/content/Context;
    //   105: new 314	java/io/ByteArrayInputStream
    //   108: dup
    //   109: aload_2
    //   110: invokespecial 317	java/io/ByteArrayInputStream:<init>	([B)V
    //   113: invokestatic 322	com/vivo/unionsdk/c/h:驶	(Landroid/content/Context;Ljava/io/InputStream;)Lcom/vivo/unionsdk/c/b;
    //   116: astore_2
    //   117: aload_2
    //   118: ifnonnull +27 -> 145
    //   121: aload_0
    //   122: getfield 18	com/vivo/unionsdk/c/f:始	Ljava/util/ArrayList;
    //   125: ldc_w 324
    //   128: invokevirtual 79	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   131: pop
    //   132: aload_1
    //   133: ifnull -94 -> 39
    //   136: aload_1
    //   137: invokevirtual 304	java/io/InputStream:close	()V
    //   140: aconst_null
    //   141: areturn
    //   142: astore_1
    //   143: aconst_null
    //   144: areturn
    //   145: aload_0
    //   146: getfield 26	com/vivo/unionsdk/c/f:驶	Landroid/content/Context;
    //   149: invokestatic 329	com/vivo/unionsdk/c/d:驶	(Landroid/content/Context;)Lcom/vivo/unionsdk/n;
    //   152: astore_3
    //   153: aload_3
    //   154: ifnonnull +27 -> 181
    //   157: aload_0
    //   158: getfield 18	com/vivo/unionsdk/c/f:始	Ljava/util/ArrayList;
    //   161: ldc_w 331
    //   164: invokevirtual 79	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   167: pop
    //   168: aload_1
    //   169: ifnull -130 -> 39
    //   172: aload_1
    //   173: invokevirtual 304	java/io/InputStream:close	()V
    //   176: aconst_null
    //   177: areturn
    //   178: astore_1
    //   179: aconst_null
    //   180: areturn
    //   181: aload_0
    //   182: aload_2
    //   183: aload_3
    //   184: invokespecial 333	com/vivo/unionsdk/c/f:驶	(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    //   187: aload_0
    //   188: aload_2
    //   189: aload_3
    //   190: invokespecial 335	com/vivo/unionsdk/c/f:式	(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    //   193: aload_0
    //   194: aload_2
    //   195: aload_3
    //   196: invokespecial 337	com/vivo/unionsdk/c/f:始	(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    //   199: aload_0
    //   200: aload_2
    //   201: aload_3
    //   202: invokespecial 339	com/vivo/unionsdk/c/f:示	(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    //   205: aload_0
    //   206: aload_2
    //   207: aload_3
    //   208: invokespecial 341	com/vivo/unionsdk/c/f:士	(Lcom/vivo/unionsdk/c/b;Lcom/vivo/unionsdk/n;)V
    //   211: aload_0
    //   212: invokespecial 343	com/vivo/unionsdk/c/f:驶	()V
    //   215: aload_1
    //   216: ifnull -177 -> 39
    //   219: aload_1
    //   220: invokevirtual 304	java/io/InputStream:close	()V
    //   223: aconst_null
    //   224: areturn
    //   225: astore_1
    //   226: aconst_null
    //   227: areturn
    //   228: astore_1
    //   229: aload_2
    //   230: ifnull +7 -> 237
    //   233: aload_2
    //   234: invokevirtual 304	java/io/InputStream:close	()V
    //   237: aload_1
    //   238: athrow
    //   239: astore_1
    //   240: aconst_null
    //   241: areturn
    //   242: astore_2
    //   243: goto -6 -> 237
    //   246: astore_3
    //   247: aload_1
    //   248: astore_2
    //   249: aload_3
    //   250: astore_1
    //   251: goto -22 -> 229
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	f
    //   0	254	1	paramVarArgs	Void[]
    //   1	61	2	arrayOfByte	byte[]
    //   86	7	2	localIOException1	IOException
    //   97	137	2	localObject1	Object
    //   242	1	2	localIOException2	IOException
    //   248	1	2	arrayOfVoid	Void[]
    //   152	56	3	localn	n
    //   246	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	41	java/io/IOException
    //   77	81	83	java/io/IOException
    //   56	61	86	java/io/IOException
    //   136	140	142	java/io/IOException
    //   172	176	178	java/io/IOException
    //   219	223	225	java/io/IOException
    //   2	16	228	finally
    //   42	51	228	finally
    //   35	39	239	java/io/IOException
    //   233	237	242	java/io/IOException
    //   20	31	246	finally
    //   56	61	246	finally
    //   65	73	246	finally
    //   87	96	246	finally
    //   101	117	246	finally
    //   121	132	246	finally
    //   145	153	246	finally
    //   157	168	246	finally
    //   181	215	246	finally
  }
  
  protected void 驶(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    paramVoid = new StringBuilder();
    Iterator localIterator = this.始.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramVoid.append(str + "\n\t");
    }
    if (TextUtils.isEmpty(paramVoid.toString())) {
      paramVoid.append("Pass!\n\t");
    }
    m.驶("SelfTest", "\nSelf Check Result Report:\n\t**********************************************\n\t" + paramVoid.toString() + "**********************************************");
    if (!this.始.isEmpty()) {
      throw new IllegalArgumentException("\nSelf Check Result Report:\n\t**********************************************\n\t" + paramVoid.toString() + "**********************************************");
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.c.f
 * JD-Core Version:    0.7.0.1
 */