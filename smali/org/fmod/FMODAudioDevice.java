package org.fmod;

import android.media.AudioTrack;
import android.util.Log;
import java.nio.ByteBuffer;

public class FMODAudioDevice
  implements Runnable
{
  private static int i = 0;
  private static int j = 1;
  private static int k = 2;
  private static int l = 3;
  private volatile Thread a = null;
  private volatile boolean b = false;
  private volatile a c = null;
  private AudioTrack d = null;
  private boolean e = false;
  private ByteBuffer f = null;
  private byte[] g = null;
  private volatile a h;
  
  private void blockStreaming()
  {
    try
    {
      if ((isInitialized()) && (this.c == null))
      {
        this.c = new a();
        this.c.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private native int fmodBlockStreaming();
  
  private native int fmodGetInfo(int paramInt);
  
  private native int fmodInitJni();
  
  private native int fmodProcess(ByteBuffer paramByteBuffer);
  
  private native int fmodUnblockStreaming();
  
  private void releaseAudioTrack()
  {
    if (this.d != null)
    {
      if (this.d.getState() == 1) {
        this.d.stop();
      }
      this.d.release();
      this.d = null;
    }
    this.f = null;
    this.g = null;
    this.e = false;
  }
  
  /* Error */
  private void unblockStreaming()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	org/fmod/FMODAudioDevice:c	Lorg/fmod/FMODAudioDevice$a;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +35 -> 43
    //   11: aload_0
    //   12: getfield 48	org/fmod/FMODAudioDevice:c	Lorg/fmod/FMODAudioDevice$a;
    //   15: invokestatic 100	org/fmod/FMODAudioDevice$a:a	(Lorg/fmod/FMODAudioDevice$a;)V
    //   18: aload_0
    //   19: getfield 48	org/fmod/FMODAudioDevice:c	Lorg/fmod/FMODAudioDevice$a;
    //   22: ldc2_w 101
    //   25: invokevirtual 106	org/fmod/FMODAudioDevice$a:join	(J)V
    //   28: aload_0
    //   29: getfield 48	org/fmod/FMODAudioDevice:c	Lorg/fmod/FMODAudioDevice$a;
    //   32: invokevirtual 109	org/fmod/FMODAudioDevice$a:isAlive	()Z
    //   35: ifne -24 -> 11
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 48	org/fmod/FMODAudioDevice:c	Lorg/fmod/FMODAudioDevice$a;
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_1
    //   52: goto -9 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	FMODAudioDevice
    //   6	2	1	locala	a
    //   46	4	1	localObject	Object
    //   51	1	1	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   11	43	46	finally
    //   11	43	51	java/lang/InterruptedException
  }
  
  public void close()
  {
    try
    {
      stop();
      unblockStreaming();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  native int fmodProcessMicData(ByteBuffer paramByteBuffer, int paramInt);
  
  public boolean isInitialized()
  {
    return fmodGetInfo(i) > 0;
  }
  
  public boolean isRunning()
  {
    return (this.a != null) && (this.a.isAlive());
  }
  
  public void run()
  {
    int m = 3;
    boolean bool;
    for (;;)
    {
      if (this.b) {
        if (!isInitialized())
        {
          try
          {
            Thread.sleep(10L);
          }
          catch (InterruptedException localInterruptedException)
          {
            this.b = false;
          }
        }
        else
        {
          if ((this.e) || (m <= 0)) {
            break label340;
          }
          releaseAudioTrack();
          int i2 = fmodGetInfo(i);
          int i1 = Math.round(AudioTrack.getMinBufferSize(i2, 3, 2) * 1.1F) & 0xFFFFFFFC;
          int i3 = fmodGetInfo(j);
          int i4 = fmodGetInfo(k);
          int n = i1;
          if (i3 * i4 * 4 > i1) {
            n = i4 * i3 * 4;
          }
          this.d = new AudioTrack(3, i2, 3, 2, n, 1);
          if (this.d.getState() == 1)
          {
            bool = true;
            label148:
            this.e = bool;
            if (!this.e) {
              break label281;
            }
            this.f = ByteBuffer.allocateDirect(i3 * 2 * 2);
            this.g = new byte[this.f.capacity()];
            this.d.play();
            m = 3;
          }
        }
      }
    }
    label281:
    label340:
    for (;;)
    {
      if (this.e)
      {
        if (fmodGetInfo(l) == 1)
        {
          fmodProcess(this.f);
          this.f.get(this.g, 0, this.f.capacity());
          this.d.write(this.g, 0, this.f.capacity());
          this.f.position(0);
          break;
          bool = false;
          break label148;
          Log.e("FMOD", "AudioTrack failed to initialize (status " + this.d.getState() + ")");
          releaseAudioTrack();
          m -= 1;
          continue;
        }
        releaseAudioTrack();
        break;
        releaseAudioTrack();
        return;
      }
      break;
    }
  }
  
  public void start()
  {
    try
    {
      if (this.a != null) {
        stop();
      }
      this.a = new Thread(this, "FMODAudioDevice");
      this.a.setPriority(10);
      this.b = true;
      fmodInitJni();
      unblockStreaming();
      this.a.start();
      if (this.h != null) {
        this.h.b();
      }
      return;
    }
    finally {}
  }
  
  public int startAudioRecord(int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      if (this.h == null)
      {
        this.h = new a(this, paramInt1, paramInt2);
        this.h.b();
      }
      paramInt1 = this.h.a();
      return paramInt1;
    }
    finally {}
  }
  
  public void stop()
  {
    try
    {
      while (this.a != null)
      {
        this.b = false;
        try
        {
          this.a.join();
          this.a = null;
          blockStreaming();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      if (this.h != null) {
        this.h.c();
      }
      return;
    }
    finally {}
  }
  
  public void stopAudioRecord()
  {
    try
    {
      if (this.h != null)
      {
        this.h.c();
        this.h = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private final class a
    extends Thread
  {
    private Object b = new Object();
    
    a()
    {
      super();
    }
    
    private void a()
    {
      synchronized (this.b)
      {
        this.b.notifyAll();
        return;
      }
    }
    
    public final void run()
    {
      if (FMODAudioDevice.this.fmodBlockStreaming() != 0) {
        throw new RuntimeException("Unable to block fmod streaming thread");
      }
      try
      {
        synchronized (this.b)
        {
          this.b.wait();
          label34:
          if (FMODAudioDevice.this.fmodUnblockStreaming() != 0) {
            throw new RuntimeException("Unable to unblock fmod streaming thread");
          }
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label34;
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.fmod.FMODAudioDevice
 * JD-Core Version:    0.7.0.1
 */