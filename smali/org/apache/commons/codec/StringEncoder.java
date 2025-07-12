package org.apache.commons.codec;

@Deprecated
public abstract interface StringEncoder
  extends Encoder
{
  public abstract String encode(String paramString)
    throws EncoderException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.commons.codec.StringEncoder
 * JD-Core Version:    0.7.0.1
 */