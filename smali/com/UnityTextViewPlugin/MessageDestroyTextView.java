package com.UnityTextViewPlugin;

import android.view.ViewGroup;

final class MessageDestroyTextView
  extends MessageWrapper
{
  public MessageDestroyTextView(int paramInt)
  {
    super(paramInt);
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView = (ViewGroup)paramMyTextView.getParent();
    ((ViewGroup)paramMyTextView.getParent()).removeView(paramMyTextView);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageDestroyTextView
 * JD-Core Version:    0.7.0.1
 */