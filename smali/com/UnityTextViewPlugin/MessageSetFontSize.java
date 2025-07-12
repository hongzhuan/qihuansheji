package com.UnityTextViewPlugin;

final class MessageSetFontSize
  extends MessageWrapper
{
  private final float mFontSize;
  
  public MessageSetFontSize(int paramInt, float paramFloat)
  {
    super(paramInt);
    this.mFontSize = paramFloat;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView.setTextSize(this.mFontSize);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetFontSize
 * JD-Core Version:    0.7.0.1
 */