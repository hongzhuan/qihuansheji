package com.unity3d.player;

import android.app.Activity;
import android.content.ContextWrapper;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.View;
import android.view.Window;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class k
  implements h
{
  private final Queue a = new ConcurrentLinkedQueue();
  private final Activity b;
  private Runnable c = new Runnable()
  {
    private static void a(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      if (l.b) {
        l.d.a(paramAnonymousView, paramAnonymousMotionEvent);
      }
    }
    
    public final void run()
    {
      for (;;)
      {
        MotionEvent localMotionEvent = (MotionEvent)k.a(k.this).poll();
        if (localMotionEvent == null) {
          break;
        }
        View localView = k.b(k.this).getWindow().getDecorView();
        int i = localMotionEvent.getSource();
        if ((i & 0x2) != 0)
        {
          switch (localMotionEvent.getAction() & 0xFF)
          {
          default: 
            a(localView, localMotionEvent);
            break;
          }
          localView.dispatchTouchEvent(localMotionEvent);
        }
        else if ((i & 0x4) != 0)
        {
          localView.dispatchTrackballEvent(localMotionEvent);
        }
        else
        {
          a(localView, localMotionEvent);
        }
      }
    }
  };
  
  public k(ContextWrapper paramContextWrapper)
  {
    this.b = ((Activity)paramContextWrapper);
  }
  
  private static int a(MotionEvent.PointerCoords[] paramArrayOfPointerCoords, float[] paramArrayOfFloat, int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < paramArrayOfPointerCoords.length)
    {
      MotionEvent.PointerCoords localPointerCoords = new MotionEvent.PointerCoords();
      paramArrayOfPointerCoords[paramInt] = localPointerCoords;
      j = i + 1;
      localPointerCoords.orientation = paramArrayOfFloat[i];
      i = j + 1;
      localPointerCoords.pressure = paramArrayOfFloat[j];
      j = i + 1;
      localPointerCoords.size = paramArrayOfFloat[i];
      i = j + 1;
      localPointerCoords.toolMajor = paramArrayOfFloat[j];
      j = i + 1;
      localPointerCoords.toolMinor = paramArrayOfFloat[i];
      i = j + 1;
      localPointerCoords.touchMajor = paramArrayOfFloat[j];
      j = i + 1;
      localPointerCoords.touchMinor = paramArrayOfFloat[i];
      int k = j + 1;
      localPointerCoords.x = paramArrayOfFloat[j];
      i = k + 1;
      localPointerCoords.y = paramArrayOfFloat[k];
      paramInt += 1;
    }
    return i;
  }
  
  private static MotionEvent.PointerCoords[] a(int paramInt, float[] paramArrayOfFloat)
  {
    MotionEvent.PointerCoords[] arrayOfPointerCoords = new MotionEvent.PointerCoords[paramInt];
    a(arrayOfPointerCoords, paramArrayOfFloat, 0);
    return arrayOfPointerCoords;
  }
  
  public final void a(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int[] paramArrayOfInt, float[] paramArrayOfFloat1, int paramInt3, float paramFloat1, float paramFloat2, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, long[] paramArrayOfLong, float[] paramArrayOfFloat2)
  {
    if (this.b != null)
    {
      paramArrayOfInt = MotionEvent.obtain(paramLong1, paramLong2, paramInt1, paramInt2, paramArrayOfInt, a(paramInt2, paramArrayOfFloat1), paramInt3, paramFloat1, paramFloat2, paramInt4, paramInt5, paramInt6, paramInt7);
      paramInt4 = 0;
      paramInt1 = 0;
      while (paramInt1 < paramInt8)
      {
        paramArrayOfFloat1 = new MotionEvent.PointerCoords[paramInt2];
        paramInt4 = a(paramArrayOfFloat1, paramArrayOfFloat2, paramInt4);
        paramArrayOfInt.addBatch(paramArrayOfLong[paramInt1], paramArrayOfFloat1, paramInt3);
        paramInt1 += 1;
      }
      this.a.add(paramArrayOfInt);
      this.b.runOnUiThread(this.c);
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.unity3d.player.k
 * JD-Core Version:    0.7.0.1
 */