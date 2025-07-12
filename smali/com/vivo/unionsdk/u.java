package com.vivo.unionsdk;

import android.app.Activity;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;

public class u
{
  private static u 驶;
  private HashMap 始 = new HashMap();
  
  public static u 驶()
  {
    try
    {
      if (驶 == null) {
        驶 = new u();
      }
      u localu = 驶;
      return localu;
    }
    finally {}
  }
  
  public boolean 始(String paramString, Activity paramActivity)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    paramString = (HashSet)this.始.get(paramString);
    if (paramString == null) {
      return false;
    }
    paramString.remove(paramActivity);
    return true;
  }
  
  /* Error */
  public void 驶(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/vivo/unionsdk/u:始	Ljava/util/HashMap;
    //   4: aload_1
    //   5: invokevirtual 33	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   8: checkcast 35	java/util/HashSet
    //   11: astore_1
    //   12: aload_1
    //   13: ifnonnull +4 -> 17
    //   16: return
    //   17: aload_1
    //   18: invokevirtual 46	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   21: astore_2
    //   22: aload_2
    //   23: invokeinterface 52 1 0
    //   28: ifeq +54 -> 82
    //   31: aload_2
    //   32: invokeinterface 56 1 0
    //   37: checkcast 58	android/app/Activity
    //   40: astore_3
    //   41: aload_3
    //   42: ifnull -20 -> 22
    //   45: aload_3
    //   46: invokevirtual 61	android/app/Activity:finish	()V
    //   49: goto -27 -> 22
    //   52: astore_2
    //   53: ldc 63
    //   55: new 65	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 66	java/lang/StringBuilder:<init>	()V
    //   62: ldc 68
    //   64: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 84	com/vivo/unionsdk/m:始	(Ljava/lang/String;Ljava/lang/String;)V
    //   77: aload_1
    //   78: invokevirtual 87	java/util/HashSet:clear	()V
    //   81: return
    //   82: aload_1
    //   83: invokevirtual 87	java/util/HashSet:clear	()V
    //   86: return
    //   87: astore_2
    //   88: aload_1
    //   89: invokevirtual 87	java/util/HashSet:clear	()V
    //   92: aload_2
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	u
    //   0	94	1	paramString	String
    //   21	11	2	localIterator	java.util.Iterator
    //   52	16	2	localException	java.lang.Exception
    //   87	6	2	localObject	Object
    //   40	6	3	localActivity	Activity
    // Exception table:
    //   from	to	target	type
    //   17	22	52	java/lang/Exception
    //   22	41	52	java/lang/Exception
    //   45	49	52	java/lang/Exception
    //   17	22	87	finally
    //   22	41	87	finally
    //   45	49	87	finally
    //   53	77	87	finally
  }
  
  public boolean 驶(String paramString, Activity paramActivity)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty(paramString))) {
      return false;
    }
    HashSet localHashSet2 = (HashSet)this.始.get(paramString);
    HashSet localHashSet1 = localHashSet2;
    if (localHashSet2 == null)
    {
      localHashSet1 = new HashSet();
      this.始.put(paramString, localHashSet1);
    }
    localHashSet1.add(paramActivity);
    return true;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.u
 * JD-Core Version:    0.7.0.1
 */