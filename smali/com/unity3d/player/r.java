package com.unity3d.player;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import java.io.FileInputStream;
import java.io.IOException;

public final class r
  extends FrameLayout
  implements SensorEventListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback, MediaController.MediaPlayerControl
{
  private static final boolean A;
  private static boolean a;
  private final UnityPlayer b;
  private final Context c;
  private final SurfaceView d;
  private final SurfaceHolder e;
  private final String f;
  private final int g;
  private final int h;
  private final boolean i;
  private final long j;
  private final long k;
  private final FrameLayout l;
  private final SensorManager m;
  private final Display n;
  private int o;
  private int p;
  private int q;
  private int r;
  private MediaPlayer s;
  private MediaController t;
  private boolean u = false;
  private boolean v = false;
  private int w = 0;
  private boolean x = false;
  private int y = 0;
  private boolean z;
  
  static
  {
    boolean bool2 = false;
    a = false;
    boolean bool1 = bool2;
    if (Build.MANUFACTURER.equalsIgnoreCase("Amazon")) {
      if ((!Build.MODEL.equalsIgnoreCase("KFTT")) && (!Build.MODEL.equalsIgnoreCase("KFJWI")) && (!Build.MODEL.equalsIgnoreCase("KFJWA")) && (!Build.MODEL.equalsIgnoreCase("KFSOWI")) && (!Build.MODEL.equalsIgnoreCase("KFTHWA")) && (!Build.MODEL.equalsIgnoreCase("KFTHWI")) && (!Build.MODEL.equalsIgnoreCase("KFAPWA")))
      {
        bool1 = bool2;
        if (!Build.MODEL.equalsIgnoreCase("KFAPWI")) {}
      }
      else
      {
        bool1 = true;
      }
    }
    A = bool1;
  }
  
  protected r(UnityPlayer paramUnityPlayer, Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, long paramLong1, long paramLong2)
  {
    super(paramContext);
    this.b = paramUnityPlayer;
    this.c = paramContext;
    this.l = this;
    this.d = new SurfaceView(paramContext);
    this.e = this.d.getHolder();
    this.e.addCallback(this);
    this.e.setType(3);
    this.l.setBackgroundColor(paramInt1);
    this.l.addView(this.d);
    this.m = ((SensorManager)this.c.getSystemService("sensor"));
    this.n = ((WindowManager)this.c.getSystemService("window")).getDefaultDisplay();
    this.f = paramString;
    this.g = paramInt2;
    this.h = paramInt3;
    this.i = paramBoolean;
    this.j = paramLong1;
    this.k = paramLong2;
    if (a) {
      a("fileName: " + this.f);
    }
    if (a) {
      a("backgroundColor: " + paramInt1);
    }
    if (a) {
      a("controlMode: " + this.g);
    }
    if (a) {
      a("scalingMode: " + this.h);
    }
    if (a) {
      a("isURL: " + this.i);
    }
    if (a) {
      a("videoOffset: " + this.j);
    }
    if (a) {
      a("videoLength: " + this.k);
    }
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.m.registerListener(this, this.m.getDefaultSensor(1), 1);
    this.z = true;
  }
  
  private void a()
  {
    doCleanUp();
    for (;;)
    {
      try
      {
        this.s = new MediaPlayer();
        if (this.i)
        {
          this.s.setDataSource(this.c, Uri.parse(this.f));
          this.s.setDisplay(this.e);
          this.s.setOnBufferingUpdateListener(this);
          this.s.setOnCompletionListener(this);
          this.s.setOnPreparedListener(this);
          this.s.setOnVideoSizeChangedListener(this);
          this.s.setAudioStreamType(3);
          this.s.prepare();
          if ((this.g != 0) && (this.g != 1)) {
            break;
          }
          this.t = new MediaController(this.c);
          this.t.setMediaPlayer(this);
          this.t.setAnchorView(this.d);
          this.t.setEnabled(true);
          this.t.show();
          return;
        }
        if (this.k != 0L)
        {
          FileInputStream localFileInputStream1 = new FileInputStream(this.f);
          this.s.setDataSource(localFileInputStream1.getFD(), this.j, this.k);
          localFileInputStream1.close();
          continue;
        }
        localObject = getResources().getAssets();
      }
      catch (Exception localException)
      {
        if (a) {
          a("error: " + localException.getMessage() + localException);
        }
        onDestroy();
        return;
      }
      try
      {
        Object localObject = ((AssetManager)localObject).openFd(this.f);
        this.s.setDataSource(((AssetFileDescriptor)localObject).getFileDescriptor(), ((AssetFileDescriptor)localObject).getStartOffset(), ((AssetFileDescriptor)localObject).getLength());
        ((AssetFileDescriptor)localObject).close();
      }
      catch (IOException localIOException)
      {
        FileInputStream localFileInputStream2 = new FileInputStream(this.f);
        this.s.setDataSource(localFileInputStream2.getFD());
        localFileInputStream2.close();
      }
    }
  }
  
  private static void a(String paramString)
  {
    Log.v("Video", paramString);
  }
  
  private void b()
  {
    if (isPlaying()) {}
    do
    {
      return;
      if (a) {
        a("startVideoPlayback");
      }
      updateVideoLayout();
    } while (this.x);
    start();
  }
  
  public static int calculateDeviceOrientation(SensorEvent paramSensorEvent, Display paramDisplay)
  {
    float f3 = paramSensorEvent.values[0];
    float f1 = paramSensorEvent.values[1];
    float f2 = paramSensorEvent.values[2];
    float f4 = 1.0F / (float)Math.sqrt(f3 * f3 + f1 * f1 + f2 * f2);
    f3 *= f4;
    f1 *= f4;
    f4 = f2 * f4;
    int i2 = paramDisplay.getOrientation();
    int i1;
    if (paramDisplay.getHeight() > paramDisplay.getWidth())
    {
      i1 = 1;
      if ((i2 & 0x1) != 0) {
        break label237;
      }
      i2 = 1;
      label92:
      if ((i2 ^ i1) == 0) {
        break label260;
      }
      f2 = -f3;
    }
    for (;;)
    {
      if (A) {
        f1 = -f1;
      }
      for (;;)
      {
        if (-1.0F < f2) {
          i1 = 1;
        }
        for (f3 = f2;; f3 = -1.0F)
        {
          if (f3 < -f2)
          {
            f3 = -f2;
            i1 = 2;
          }
          for (;;)
          {
            f2 = f3;
            if (f3 < f1)
            {
              i1 = 3;
              f2 = f1;
            }
            f3 = f2;
            if (f2 < -f1)
            {
              f3 = -f1;
              i1 = 4;
            }
            f1 = f3;
            if (f3 < f4)
            {
              i1 = 5;
              f1 = f4;
            }
            f2 = f1;
            if (f1 < -f4)
            {
              f2 = -f4;
              i1 = 6;
            }
            if (f2 < 0.5D * Math.sqrt(3.0D)) {
              i1 = 0;
            }
            return i1;
            i1 = 0;
            break;
            label237:
            i2 = 0;
            break label92;
          }
          i1 = 0;
        }
      }
      label260:
      f2 = f1;
      f1 = f3;
    }
  }
  
  public final boolean canPause()
  {
    return true;
  }
  
  public final boolean canSeekBackward()
  {
    return true;
  }
  
  public final boolean canSeekForward()
  {
    return true;
  }
  
  protected final void doCleanUp()
  {
    if (this.s != null)
    {
      this.s.release();
      this.s = null;
    }
    this.q = 0;
    this.r = 0;
    this.v = false;
    this.u = false;
  }
  
  public final int getBufferPercentage()
  {
    if (this.i) {
      return this.w;
    }
    return 100;
  }
  
  public final int getCurrentPosition()
  {
    if (this.s == null) {
      return 0;
    }
    return this.s.getCurrentPosition();
  }
  
  public final int getDuration()
  {
    if (this.s == null) {
      return 0;
    }
    return this.s.getDuration();
  }
  
  public final boolean isPlaying()
  {
    int i1;
    if ((this.v) && (this.u))
    {
      i1 = 1;
      if (this.s != null) {
        break label36;
      }
      if (i1 != 0) {
        break label34;
      }
    }
    label34:
    label36:
    while ((this.s.isPlaying()) || (i1 == 0))
    {
      return true;
      i1 = 0;
      break;
      return false;
    }
    return false;
  }
  
  public final void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    if (a) {
      a("onBufferingUpdate percent:" + paramInt);
    }
    this.w = paramInt;
  }
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (a) {
      a("onCompletion called");
    }
    onDestroy();
  }
  
  public final void onControllerHide() {}
  
  protected final void onDestroy()
  {
    onPause();
    doCleanUp();
    UnityPlayer localUnityPlayer = this.b;
    UnityPlayer.a(new Runnable()
    {
      public final void run()
      {
        r.a(r.this).hideVideoPlayer();
      }
    });
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || ((this.g == 2) && (paramInt != 0) && (!paramKeyEvent.isSystem())))
    {
      onDestroy();
      return true;
    }
    if (this.t != null) {
      return this.t.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected final void onPause()
  {
    if (a) {
      a("onPause called");
    }
    this.m.unregisterListener(this);
    if (!this.x)
    {
      pause();
      this.x = false;
    }
    if (this.s != null) {
      this.y = this.s.getCurrentPosition();
    }
    this.z = false;
  }
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (a) {
      a("onPrepared called");
    }
    this.v = true;
    if ((this.v) && (this.u)) {
      b();
    }
  }
  
  protected final void onResume()
  {
    if (a) {
      a("onResume called");
    }
    if (!this.z)
    {
      this.m.registerListener(this, this.m.getDefaultSensor(1), 1);
      if (!this.x) {
        start();
      }
    }
    this.z = true;
  }
  
  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (paramSensorEvent.sensor.getType() == 1)
    {
      int i1 = calculateDeviceOrientation(paramSensorEvent, this.n);
      this.b.nativeDeviceOrientation(i1);
    }
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if ((this.g == 2) && ((i1 & 0xFF) == 0))
    {
      onDestroy();
      return true;
    }
    if (this.t != null) {
      return this.t.onTouchEvent(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public final void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (a) {
      a("onVideoSizeChanged called " + paramInt1 + "x" + paramInt2);
    }
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      if (a) {
        a("invalid video width(" + paramInt1 + ") or height(" + paramInt2 + ")");
      }
    }
    do
    {
      return;
      this.u = true;
      this.q = paramInt1;
      this.r = paramInt2;
    } while ((!this.v) || (!this.u));
    b();
  }
  
  public final void pause()
  {
    if (this.s == null) {
      return;
    }
    this.s.pause();
    this.x = true;
  }
  
  public final void seekTo(int paramInt)
  {
    if (this.s == null) {
      return;
    }
    this.s.seekTo(paramInt);
  }
  
  public final void start()
  {
    if (this.s == null) {
      return;
    }
    this.s.start();
    this.x = false;
  }
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a) {
      a("surfaceChanged called " + paramInt1 + " " + paramInt2 + "x" + paramInt3);
    }
    this.o = paramInt2;
    this.p = paramInt3;
  }
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (a) {
      a("surfaceCreated called");
    }
    a();
    seekTo(this.y);
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (a) {
      a("surfaceDestroyed called");
    }
    doCleanUp();
  }
  
  protected final void updateVideoLayout()
  {
    if (a) {
      a("updateVideoLayout");
    }
    Object localObject = (WindowManager)this.c.getSystemService("window");
    this.o = ((WindowManager)localObject).getDefaultDisplay().getWidth();
    this.p = ((WindowManager)localObject).getDefaultDisplay().getHeight();
    int i2 = this.o;
    int i1 = this.p;
    float f1;
    if ((this.h == 1) || (this.h == 2))
    {
      f1 = this.q / this.r;
      if (this.o / this.p <= f1) {
        i1 = (int)(this.o / f1);
      }
    }
    for (;;)
    {
      if (a) {
        a("frameWidth = " + i2 + "; frameHeight = " + i1);
      }
      localObject = new FrameLayout.LayoutParams(i2, i1, 17);
      this.l.updateViewLayout(this.d, (ViewGroup.LayoutParams)localObject);
      return;
      i2 = (int)(this.p * f1);
      continue;
      if (this.h == 0)
      {
        i2 = this.q;
        i1 = this.r;
      }
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.r
 * JD-Core Version:    0.7.0.1
 */