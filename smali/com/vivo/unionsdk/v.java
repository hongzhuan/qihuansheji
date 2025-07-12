package com.vivo.unionsdk;

import android.content.Context;
import android.os.Process;

public class v
  implements Thread.UncaughtExceptionHandler
{
  private static v 驶 = new v();
  private Thread.UncaughtExceptionHandler 始;
  private Context 式;
  
  private void 始(Context paramContext)
  {
    this.式 = paramContext.getApplicationContext();
    paramContext = Thread.getDefaultUncaughtExceptionHandler();
    if ((paramContext instanceof v)) {
      return;
    }
    this.始 = paramContext;
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public static void 驶(Context paramContext)
  {
    驶.始(paramContext);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    w.驶().藞();
    if (!驶(paramThrowable)) {
      this.始.uncaughtException(paramThread, paramThrowable);
    }
  }
  
  public boolean 驶(Throwable paramThrowable)
  {
    int i = 0;
    for (;;)
    {
      if ((i >= 5) || (paramThrowable == null)) {
        return false;
      }
      if ((paramThrowable != null) && ((paramThrowable instanceof SecurityException)))
      {
        m.示("UnionCrashHandler", "exist for SecurityException----------", paramThrowable);
        Process.killProcess(Process.myPid());
        return true;
      }
      paramThrowable = paramThrowable.getCause();
      i += 1;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.v
 * JD-Core Version:    0.7.0.1
 */