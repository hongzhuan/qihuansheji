package com.UnityTextViewPlugin;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ScrollView;
import com.unity3d.player.UnityPlayer;

public final class TextViewWrapper
{
  private static Handler sHandler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == TextViewWrapper.sMessageId) {
        ((MessageWrapper)paramAnonymousMessage.obj).process();
      }
    }
  };
  private static final int sMessageId;
  public static final Activity sUnityActivity = UnityPlayer.currentActivity;
  
  static
  {
    sMessageId = TextViewWrapper.class.hashCode();
  }
  
  public static int create(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, String paramString)
  {
    MyFrameLayout localMyFrameLayout = new MyFrameLayout(sUnityActivity);
    localMyFrameLayout.setLayoutParams(new FrameLayout.LayoutParams((int)(paramFloat1 + paramFloat3), (int)(paramFloat2 + paramFloat4)));
    localMyFrameLayout.setPadding((int)paramFloat1, (int)paramFloat2, 0, 0);
    Object localObject = new ScrollView(sUnityActivity);
    ((ScrollView)localObject).setId(localObject.hashCode());
    ((ScrollView)localObject).setVerticalScrollBarEnabled(true);
    ((ScrollView)localObject).setClickable(true);
    localObject = new MyTextView(sUnityActivity);
    ((MyTextView)localObject).setPadding(6, 0, 6, 0);
    ((MyTextView)localObject).setLinksClickable(false);
    ((MyTextView)localObject).setTextColor(-1);
    ((MyTextView)localObject).setClickable(true);
    ((MyTextView)localObject).setMovementMethod(ScrollingMovementMethod.getInstance());
    ((MyTextView)localObject).setText(paramString);
    ((MyTextView)localObject).setId(localObject.hashCode());
    localMyFrameLayout.addView((View)localObject);
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageCreateTextView((MyTextView)localObject)));
    return ((MyTextView)localObject).getId();
  }
  
  public static void destroy(int paramInt)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageDestroyTextView(paramInt)));
  }
  
  public static void setBackgroundColor(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = Color.argb((int)(paramFloat4 * 255.0F), (int)(paramFloat1 * 255.0F), (int)(paramFloat2 * 255.0F), (int)(255.0F * paramFloat3));
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetBackgroundColor(paramInt, i)));
  }
  
  public static void setFontSize(int paramInt, float paramFloat)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetFontSize(paramInt, paramFloat)));
  }
  
  public static void setFontStyle(int paramInt1, int paramInt2)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetFontStyle(paramInt1, paramInt2)));
  }
  
  public static void setRect(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetRect(paramInt, new RectF(paramFloat1, paramFloat2, paramFloat1 + paramFloat3, paramFloat2 + paramFloat4))));
  }
  
  public static void setText(int paramInt, String paramString)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetText(paramInt, paramString)));
  }
  
  public static void setTextAlignment(int paramInt1, int paramInt2)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetTextAlignment(paramInt1, paramInt2)));
  }
  
  public static void setTextColor(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = Color.argb((int)(paramFloat4 * 255.0F), (int)(paramFloat1 * 255.0F), (int)(paramFloat2 * 255.0F), (int)(255.0F * paramFloat3));
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetTextColor(paramInt, i)));
  }
  
  public static void setTouchEnabled(int paramInt, boolean paramBoolean)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetTouchEnabled(paramInt, paramBoolean)));
  }
  
  public static void setVisibility(int paramInt, boolean paramBoolean)
  {
    sHandler.sendMessage(sHandler.obtainMessage(sMessageId, new MessageSetVisibility(paramInt, paramBoolean)));
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.TextViewWrapper
 * JD-Core Version:    0.7.0.1
 */