package com.vivo.unionsdk;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;

public class as
{
  private static Handler 始 = new Handler(驶.getLooper());
  private static HandlerThread 驶 = new HandlerThread("vivounion_worker_thread");
  
  static
  {
    驶.start();
  }
  
  public static void 驶(Runnable paramRunnable)
  {
    驶(paramRunnable, 0L, 5);
  }
  
  private static void 驶(Runnable paramRunnable, long paramLong, int paramInt)
  {
    驶.setPriority(paramInt);
    if (驶.getThreadId() == Process.myTid())
    {
      paramRunnable.run();
      return;
    }
    始.postDelayed(paramRunnable, paramLong);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.as
 * JD-Core Version:    0.7.0.1
 */