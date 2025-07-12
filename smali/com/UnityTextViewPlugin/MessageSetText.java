package com.UnityTextViewPlugin;

final class MessageSetText
  extends MessageWrapper
{
  private final String mText;
  
  public MessageSetText(int paramInt, String paramString)
  {
    super(paramInt);
    this.mText = paramString;
  }
  
  protected final void doProcess(MyTextView paramMyTextView)
  {
    paramMyTextView.setText(this.mText);
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.UnityTextViewPlugin.MessageSetText
 * JD-Core Version:    0.7.0.1
 */