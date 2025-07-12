package com.vivo.unionsdk.a;

import com.vivo.unionsdk.m;

class g
  implements Runnable
{
  g(f paramf) {}
  
  public void run()
  {
    boolean bool = f.驶(this.驶);
    m.驶("SdkToApkInvoker", "initInvoker, mApkVersion = " + f.始(this.驶) + ", result=" + bool);
    if ((!bool) && (this.驶.示 != null)) {
      this.驶.示.驶(3);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.a.g
 * JD-Core Version:    0.7.0.1
 */