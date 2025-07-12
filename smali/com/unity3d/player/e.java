package com.unity3d.player;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;

public final class e
  implements g
{
  private static final SurfaceTexture a = new SurfaceTexture(-1);
  private volatile boolean b;
  
  private void a(final View paramView, int paramInt)
  {
    Handler localHandler = paramView.getHandler();
    if (localHandler == null)
    {
      a(paramView, this.b);
      return;
    }
    localHandler.postDelayed(new Runnable()
    {
      public final void run()
      {
        e.this.a(paramView, e.a(e.this));
      }
    }, paramInt);
  }
  
  public final void a(final View paramView)
  {
    paramView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener()
    {
      public final void onSystemUiVisibilityChange(int paramAnonymousInt)
      {
        e.a(e.this, paramView);
      }
    });
  }
  
  public final void a(View paramView, boolean paramBoolean)
  {
    this.b = paramBoolean;
    if (this.b) {}
    for (int i = paramView.getSystemUiVisibility() | 0x1;; i = paramView.getSystemUiVisibility() & 0xFFFFFFFE)
    {
      paramView.setSystemUiVisibility(i);
      return;
    }
  }
  
  public final boolean a()
  {
    return this.b;
  }
  
  public final boolean a(Camera paramCamera)
  {
    try
    {
      paramCamera.setPreviewTexture(a);
      return true;
    }
    catch (Exception paramCamera) {}
    return false;
  }
  
  public final void b(View paramView)
  {
    if (this.b)
    {
      a(paramView, false);
      this.b = true;
      a(paramView, 500);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.e
 * JD-Core Version:    0.7.0.1
 */