package com.UnityTextViewPlugin;

import android.app.Activity;
import android.view.ViewGroup;

final class MessageCreateTextView
  extends MessageWrapper
{
  private final MyTextView mTextView;
  
  public MessageCreateTextView(MyTextView paramMyTextView)
  {
    super(paramMyTextView.getId());
    this.mTextView = paramMyTextView;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView = (ViewGroup)paramMyTextView.getParent();
    sUnityActivity.addContentView(paramMyTextView, paramMyTextView.getLayoutParams());
  }
  
  public void process()
  {
    doProcess(this.mTextView);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageCreateTextView
 * JD-Core Version:    0.7.0.1
 */