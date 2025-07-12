package com.UnityTextViewPlugin;

import android.app.Activity;
import android.util.Log;

abstract class MessageWrapper
{
  protected static final Activity sUnityActivity = TextViewWrapper.sUnityActivity;
  private final int mTextViewId;
  
  public MessageWrapper(int paramInt)
  {
    this.mTextViewId = paramInt;
  }
  
  private static void LogTextViewDoNotExist(int paramInt)
  {
    Log.d("MessageWrapper", "*** ERROR ***: MyTextView(" + paramInt + ") DO NOT exist!");
  }
  
  protected abstract void doProcess(MyTextView paramMyTextView);
  
  public void process()
  {
    MyTextView localMyTextView = (MyTextView)sUnityActivity.findViewById(this.mTextViewId);
    if (localMyTextView == null)
    {
      LogTextViewDoNotExist(this.mTextViewId);
      return;
    }
    doProcess(localMyTextView);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageWrapper
 * JD-Core Version:    0.7.0.1
 */