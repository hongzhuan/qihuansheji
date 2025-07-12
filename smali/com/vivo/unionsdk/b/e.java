package com.vivo.unionsdk.b;

import android.os.AsyncTask;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class e
  extends AsyncTask
{
  private String 始;
  private b 式;
  private c 示;
  private HashMap 驶;
  
  public e(HashMap paramHashMap, String paramString, b paramb, c paramc)
  {
    this.驶 = paramHashMap;
    this.始 = paramString;
    this.式 = paramb;
    this.示 = paramc;
  }
  
  private String 驶(Map paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      if (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), paramString));
        localStringBuilder.append('=');
        paramMap = (String)paramMap.getValue();
        if (paramMap == null) {}
        for (paramMap = "";; paramMap = URLEncoder.encode(paramMap, paramString))
        {
          localStringBuilder.append(paramMap);
          localStringBuilder.append('&');
          break;
        }
      }
      paramMap = localStringBuilder.toString();
      return paramMap;
    }
    catch (UnsupportedEncodingException paramMap) {}
    return null;
  }
  
  /* Error */
  protected java.lang.Object doInBackground(java.lang.Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: new 93	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: getfield 21	com/vivo/unionsdk/b/e:始	Ljava/lang/String;
    //   8: invokespecial 96	java/net/URL:<init>	(Ljava/lang/String;)V
    //   11: invokevirtual 100	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   14: checkcast 102	java/net/HttpURLConnection
    //   17: astore_1
    //   18: aload_1
    //   19: ldc 104
    //   21: invokevirtual 107	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: sipush 5000
    //   28: invokevirtual 111	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   31: aload_1
    //   32: iconst_1
    //   33: invokevirtual 115	java/net/HttpURLConnection:setDoInput	(Z)V
    //   36: aload_0
    //   37: getfield 19	com/vivo/unionsdk/b/e:驶	Ljava/util/HashMap;
    //   40: ifnull +79 -> 119
    //   43: aload_0
    //   44: getfield 19	com/vivo/unionsdk/b/e:驶	Ljava/util/HashMap;
    //   47: invokestatic 120	com/vivo/unionsdk/ar:驶	(Ljava/util/HashMap;)[Ljava/lang/String;
    //   50: astore_2
    //   51: aload_2
    //   52: arraylength
    //   53: iconst_1
    //   54: if_icmple +446 -> 500
    //   57: aload_2
    //   58: iconst_0
    //   59: aaload
    //   60: astore_3
    //   61: aload_2
    //   62: iconst_1
    //   63: aaload
    //   64: astore_2
    //   65: aload_3
    //   66: invokestatic 126	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   69: ifne +20 -> 89
    //   72: aload_2
    //   73: invokestatic 126	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   76: ifne +13 -> 89
    //   79: aload_0
    //   80: getfield 19	com/vivo/unionsdk/b/e:驶	Ljava/util/HashMap;
    //   83: aload_3
    //   84: aload_2
    //   85: invokevirtual 132	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   88: pop
    //   89: new 134	java/io/PrintWriter
    //   92: dup
    //   93: aload_1
    //   94: invokevirtual 138	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   97: invokespecial 141	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   100: astore_2
    //   101: aload_2
    //   102: aload_0
    //   103: aload_0
    //   104: getfield 19	com/vivo/unionsdk/b/e:驶	Ljava/util/HashMap;
    //   107: ldc 143
    //   109: invokespecial 145	com/vivo/unionsdk/b/e:驶	(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    //   112: invokevirtual 148	java/io/PrintWriter:write	(Ljava/lang/String;)V
    //   115: aload_2
    //   116: invokevirtual 151	java/io/PrintWriter:flush	()V
    //   119: aload_1
    //   120: invokevirtual 155	java/net/HttpURLConnection:getResponseCode	()I
    //   123: sipush 200
    //   126: if_icmpne +143 -> 269
    //   129: aload_0
    //   130: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   133: astore_2
    //   134: aload_2
    //   135: ifnull +134 -> 269
    //   138: aload_0
    //   139: getfield 25	com/vivo/unionsdk/b/e:示	Lcom/vivo/unionsdk/b/c;
    //   142: new 157	org/json/JSONObject
    //   145: dup
    //   146: aload_1
    //   147: invokevirtual 160	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   150: invokespecial 161	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   153: invokevirtual 166	com/vivo/unionsdk/b/c:驶	(Lorg/json/JSONObject;)Lcom/vivo/unionsdk/b/f;
    //   156: astore_2
    //   157: aload_0
    //   158: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   161: aload_2
    //   162: invokeinterface 171 2 0
    //   167: iconst_0
    //   168: ifeq +11 -> 179
    //   171: new 173	java/lang/NullPointerException
    //   174: dup
    //   175: invokespecial 174	java/lang/NullPointerException:<init>	()V
    //   178: athrow
    //   179: aload_1
    //   180: ifnull +7 -> 187
    //   183: aload_1
    //   184: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   187: aconst_null
    //   188: areturn
    //   189: astore_2
    //   190: aload_0
    //   191: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   194: new 179	com/vivo/unionsdk/b/a
    //   197: dup
    //   198: iconst_1
    //   199: invokespecial 181	com/vivo/unionsdk/b/a:<init>	(I)V
    //   202: invokeinterface 184 2 0
    //   207: goto -40 -> 167
    //   210: astore_3
    //   211: aload_1
    //   212: astore_2
    //   213: aload_2
    //   214: astore_1
    //   215: aload_3
    //   216: invokevirtual 187	java/net/MalformedURLException:printStackTrace	()V
    //   219: aload_2
    //   220: astore_1
    //   221: aload_0
    //   222: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   225: ifnull +22 -> 247
    //   228: aload_2
    //   229: astore_1
    //   230: aload_0
    //   231: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   234: new 179	com/vivo/unionsdk/b/a
    //   237: dup
    //   238: iconst_0
    //   239: invokespecial 181	com/vivo/unionsdk/b/a:<init>	(I)V
    //   242: invokeinterface 184 2 0
    //   247: iconst_0
    //   248: ifeq +11 -> 259
    //   251: new 173	java/lang/NullPointerException
    //   254: dup
    //   255: invokespecial 174	java/lang/NullPointerException:<init>	()V
    //   258: athrow
    //   259: aload_2
    //   260: ifnull -73 -> 187
    //   263: aload_2
    //   264: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   267: aconst_null
    //   268: areturn
    //   269: aload_0
    //   270: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   273: ifnull -106 -> 167
    //   276: aload_0
    //   277: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   280: new 179	com/vivo/unionsdk/b/a
    //   283: dup
    //   284: iconst_2
    //   285: invokespecial 181	com/vivo/unionsdk/b/a:<init>	(I)V
    //   288: invokeinterface 184 2 0
    //   293: goto -126 -> 167
    //   296: astore_3
    //   297: aload_1
    //   298: astore_2
    //   299: aload_2
    //   300: astore_1
    //   301: aload_3
    //   302: invokevirtual 188	java/lang/Exception:printStackTrace	()V
    //   305: aload_2
    //   306: astore_1
    //   307: aload_0
    //   308: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   311: ifnull +22 -> 333
    //   314: aload_2
    //   315: astore_1
    //   316: aload_0
    //   317: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   320: new 179	com/vivo/unionsdk/b/a
    //   323: dup
    //   324: iconst_0
    //   325: invokespecial 181	com/vivo/unionsdk/b/a:<init>	(I)V
    //   328: invokeinterface 184 2 0
    //   333: iconst_0
    //   334: ifeq +11 -> 345
    //   337: new 173	java/lang/NullPointerException
    //   340: dup
    //   341: invokespecial 174	java/lang/NullPointerException:<init>	()V
    //   344: athrow
    //   345: aload_2
    //   346: ifnull -159 -> 187
    //   349: aload_2
    //   350: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   353: aconst_null
    //   354: areturn
    //   355: astore_2
    //   356: aload_2
    //   357: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   360: aload_0
    //   361: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   364: ifnull -185 -> 179
    //   367: aload_0
    //   368: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   371: aconst_null
    //   372: invokeinterface 184 2 0
    //   377: goto -198 -> 179
    //   380: astore_1
    //   381: aload_1
    //   382: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   385: aload_0
    //   386: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   389: ifnull -130 -> 259
    //   392: aload_0
    //   393: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   396: aconst_null
    //   397: invokeinterface 184 2 0
    //   402: goto -143 -> 259
    //   405: astore_1
    //   406: aload_1
    //   407: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   410: aload_0
    //   411: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   414: ifnull -69 -> 345
    //   417: aload_0
    //   418: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   421: aconst_null
    //   422: invokeinterface 184 2 0
    //   427: goto -82 -> 345
    //   430: astore_2
    //   431: aconst_null
    //   432: astore_1
    //   433: iconst_0
    //   434: ifeq +11 -> 445
    //   437: new 173	java/lang/NullPointerException
    //   440: dup
    //   441: invokespecial 174	java/lang/NullPointerException:<init>	()V
    //   444: athrow
    //   445: aload_1
    //   446: ifnull +7 -> 453
    //   449: aload_1
    //   450: invokevirtual 177	java/net/HttpURLConnection:disconnect	()V
    //   453: aload_2
    //   454: athrow
    //   455: astore_3
    //   456: aload_3
    //   457: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   460: aload_0
    //   461: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   464: ifnull -19 -> 445
    //   467: aload_0
    //   468: getfield 23	com/vivo/unionsdk/b/e:式	Lcom/vivo/unionsdk/b/b;
    //   471: aconst_null
    //   472: invokeinterface 184 2 0
    //   477: goto -32 -> 445
    //   480: astore_2
    //   481: goto -48 -> 433
    //   484: astore_2
    //   485: goto -52 -> 433
    //   488: astore_3
    //   489: aconst_null
    //   490: astore_2
    //   491: goto -192 -> 299
    //   494: astore_3
    //   495: aconst_null
    //   496: astore_2
    //   497: goto -284 -> 213
    //   500: aconst_null
    //   501: astore_2
    //   502: aconst_null
    //   503: astore_3
    //   504: goto -439 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	507	0	this	e
    //   0	507	1	paramArrayOfObject	java.lang.Object[]
    //   50	112	2	localObject1	java.lang.Object
    //   189	1	2	localException1	java.lang.Exception
    //   212	138	2	arrayOfObject	java.lang.Object[]
    //   355	2	2	localIOException1	java.io.IOException
    //   430	24	2	localObject2	java.lang.Object
    //   480	1	2	localObject3	java.lang.Object
    //   484	1	2	localObject4	java.lang.Object
    //   490	12	2	localObject5	java.lang.Object
    //   60	24	3	localCharSequence	java.lang.CharSequence
    //   210	6	3	localMalformedURLException1	java.net.MalformedURLException
    //   296	6	3	localException2	java.lang.Exception
    //   455	2	3	localIOException2	java.io.IOException
    //   488	1	3	localException3	java.lang.Exception
    //   494	1	3	localMalformedURLException2	java.net.MalformedURLException
    //   503	1	3	localObject6	java.lang.Object
    // Exception table:
    //   from	to	target	type
    //   138	167	189	java/lang/Exception
    //   18	57	210	java/net/MalformedURLException
    //   65	89	210	java/net/MalformedURLException
    //   89	119	210	java/net/MalformedURLException
    //   119	134	210	java/net/MalformedURLException
    //   138	167	210	java/net/MalformedURLException
    //   190	207	210	java/net/MalformedURLException
    //   269	293	210	java/net/MalformedURLException
    //   18	57	296	java/lang/Exception
    //   65	89	296	java/lang/Exception
    //   89	119	296	java/lang/Exception
    //   119	134	296	java/lang/Exception
    //   190	207	296	java/lang/Exception
    //   269	293	296	java/lang/Exception
    //   171	179	355	java/io/IOException
    //   251	259	380	java/io/IOException
    //   337	345	405	java/io/IOException
    //   0	18	430	finally
    //   437	445	455	java/io/IOException
    //   18	57	480	finally
    //   65	89	480	finally
    //   89	119	480	finally
    //   119	134	480	finally
    //   138	167	480	finally
    //   190	207	480	finally
    //   269	293	480	finally
    //   215	219	484	finally
    //   221	228	484	finally
    //   230	247	484	finally
    //   301	305	484	finally
    //   307	314	484	finally
    //   316	333	484	finally
    //   0	18	488	java/lang/Exception
    //   0	18	494	java/net/MalformedURLException
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.b.e
 * JD-Core Version:    0.7.0.1
 */