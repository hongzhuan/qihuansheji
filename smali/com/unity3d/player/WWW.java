package com.unity3d.player;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class WWW
  extends Thread
{
  private int a;
  private int b;
  private String c;
  private byte[] d;
  private Map e;
  
  WWW(int paramInt, String paramString, byte[] paramArrayOfByte, Map paramMap)
  {
    this.b = paramInt;
    this.c = paramString;
    this.d = paramArrayOfByte;
    this.e = paramMap;
    this.a = 0;
    start();
  }
  
  private static native void doneCallback(int paramInt);
  
  private static native void errorCallback(int paramInt, String paramString);
  
  private static native boolean headerCallback(int paramInt, String paramString);
  
  private static native void progressCallback(int paramInt1, float paramFloat1, float paramFloat2, double paramDouble, int paramInt2);
  
  private static native boolean readCallback(int paramInt1, byte[] paramArrayOfByte, int paramInt2);
  
  protected boolean headerCallback(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append(": ");
    localStringBuilder.append(paramString2);
    localStringBuilder.append("\n\r");
    return headerCallback(this.b, localStringBuilder.toString());
  }
  
  protected boolean headerCallback(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return false;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      Iterator localIterator = ((List)localEntry.getValue()).iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append(": ");
        localStringBuilder.append(str);
        localStringBuilder.append("\n\r");
      }
    }
    return headerCallback(this.b, localStringBuilder.toString());
  }
  
  protected void progressCallback(int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong1, long paramLong2)
  {
    float f2;
    double d1;
    float f1;
    if (paramInt4 > 0)
    {
      f2 = paramInt3 / paramInt4;
      paramInt1 = Math.max(paramInt4 - paramInt3, 0);
      d1 = 1000.0D * paramInt3 / Math.max(paramLong1 - paramLong2, 0.1D);
      double d2 = paramInt1 / d1;
      if (!Double.isInfinite(d2))
      {
        d1 = d2;
        if (!Double.isNaN(d2)) {}
      }
      else
      {
        d1 = 0.0D;
      }
      f1 = 1.0F;
    }
    for (;;)
    {
      progressCallback(this.b, f1, f2, d1, paramInt4);
      do
      {
        return;
      } while (paramInt2 <= 0);
      f2 = 0.0F;
      f1 = paramInt1 / paramInt2;
      d1 = 0.0D;
    }
  }
  
  protected boolean readCallback(byte[] paramArrayOfByte, int paramInt)
  {
    return readCallback(this.b, paramArrayOfByte, paramInt);
  }
  
  public void run()
  {
    int i = this.a + 1;
    this.a = i;
    if (i > 5)
    {
      errorCallback(this.b, "Too many redirects");
      return;
    }
    Object localObject1;
    try
    {
      localObject1 = new URL(this.c);
      URLConnection localURLConnection = ((URL)localObject1).openConnection();
      if ((((URL)localObject1).getProtocol().equalsIgnoreCase("file")) && (((URL)localObject1).getHost() != null) && (((URL)localObject1).getHost().length() != 0))
      {
        errorCallback(this.b, ((URL)localObject1).getHost() + ((URL)localObject1).getFile() + " is not an absolute path!");
        return;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      errorCallback(this.b, localMalformedURLException.toString());
      return;
    }
    catch (IOException localIOException1)
    {
      errorCallback(this.b, localIOException1.toString());
      return;
    }
    Object localObject3;
    if (this.e != null)
    {
      localObject2 = this.e.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        localIOException1.addRequestProperty((String)((Map.Entry)localObject3).getKey(), (String)((Map.Entry)localObject3).getValue());
      }
    }
    int j;
    if (this.d != null)
    {
      localIOException1.setDoOutput(true);
      try
      {
        localObject2 = localIOException1.getOutputStream();
        i = 0;
        while (i < this.d.length)
        {
          j = Math.min(1428, this.d.length - i);
          ((OutputStream)localObject2).write(this.d, i, j);
          i += j;
          progressCallback(i, this.d.length, 0, 0, 0L, 0L);
        }
        if (!(localException1 instanceof HttpURLConnection)) {
          break label429;
        }
      }
      catch (Exception localException1)
      {
        errorCallback(this.b, localException1.toString());
        return;
      }
    }
    else
    {
      localObject2 = (HttpURLConnection)localException1;
      try
      {
        i = ((HttpURLConnection)localObject2).getResponseCode();
        localObject3 = ((HttpURLConnection)localObject2).getHeaderFields();
        if ((localObject3 != null) && ((i == 301) || (i == 302)))
        {
          localObject3 = (List)((Map)localObject3).get("Location");
          if ((localObject3 != null) && (!((List)localObject3).isEmpty()))
          {
            ((HttpURLConnection)localObject2).disconnect();
            this.c = ((String)((List)localObject3).get(0));
            run();
            return;
          }
        }
      }
      catch (IOException localIOException2)
      {
        errorCallback(this.b, localIOException2.toString());
        return;
      }
    }
    label429:
    Object localObject2 = localIOException2.getHeaderFields();
    boolean bool2 = headerCallback((Map)localObject2);
    boolean bool1;
    if (localObject2 != null)
    {
      bool1 = bool2;
      if (((Map)localObject2).containsKey("content-length")) {}
    }
    else
    {
      bool1 = bool2;
      if (localIOException2.getContentLength() != -1)
      {
        if ((!bool2) && (!headerCallback("content-length", String.valueOf(localIOException2.getContentLength())))) {
          break label593;
        }
        bool1 = true;
      }
    }
    if (localObject2 != null)
    {
      bool2 = bool1;
      if (((Map)localObject2).containsKey("content-type")) {}
    }
    else
    {
      bool2 = bool1;
      if (localIOException2.getContentType() != null) {
        if ((!bool1) && (!headerCallback("content-type", localIOException2.getContentType()))) {
          break label599;
        }
      }
    }
    label593:
    label599:
    for (bool2 = true;; bool2 = false)
    {
      if (!bool2) {
        break label605;
      }
      errorCallback(this.b, this.c + " aborted");
      return;
      bool1 = false;
      break;
    }
    label605:
    if (localIOException2.getContentLength() > 0)
    {
      j = localIOException2.getContentLength();
      if ((!((URL)localObject1).getProtocol().equalsIgnoreCase("file")) && (!((URL)localObject1).getProtocol().equalsIgnoreCase("jar"))) {
        break label794;
      }
      if (j != 0) {
        break label738;
      }
      i = 32768;
    }
    for (;;)
    {
      label652:
      int k = 0;
      for (;;)
      {
        long l;
        try
        {
          l = System.currentTimeMillis();
          localObject1 = new byte[i];
          InputStream localInputStream = localIOException2.getInputStream();
          i = 0;
          if (i == -1) {
            break label776;
          }
          if (!readCallback((byte[])localObject1, i)) {
            break label748;
          }
          errorCallback(this.b, this.c + " aborted");
          return;
        }
        catch (Exception localException2)
        {
          errorCallback(this.b, localException2.toString());
          return;
        }
        j = 0;
        break;
        label738:
        i = Math.min(j, 32768);
        break label652;
        label748:
        k += i;
        progressCallback(0, 0, k, j, System.currentTimeMillis(), l);
        i = localException2.read((byte[])localObject1);
      }
      label776:
      progressCallback(0, 0, k, k, 0L, 0L);
      doneCallback(this.b);
      return;
      label794:
      i = 1428;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.WWW
 * JD-Core Version:    0.7.0.1
 */