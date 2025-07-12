package com.unity3d.player;

import android.app.Activity;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

abstract class c
  implements SurfaceHolder.Callback
{
  private final Activity a = (Activity)o.a.a();
  private final int b = 3;
  private SurfaceView c;
  
  c(int paramInt) {}
  
  final void a()
  {
    this.a.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        if (c.a(c.this) == null)
        {
          c.a(c.this, new SurfaceView(o.a.a()));
          c.a(c.this).getHolder().setType(c.b(c.this));
          c.a(c.this).getHolder().addCallback(c.this);
          o.a.a(c.a(c.this));
          c.a(c.this).setVisibility(0);
        }
      }
    });
  }
  
  final void b()
  {
    this.a.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        if (c.a(c.this) != null) {
          o.a.b(c.a(c.this));
        }
        c.a(c.this, null);
      }
    });
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder) {}
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.c
 * JD-Core Version:    0.7.0.1
 */