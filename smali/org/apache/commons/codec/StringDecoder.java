package org.apache.commons.codec;

@Deprecated
public abstract interface StringDecoder
  extends Decoder
{
  public abstract String decode(String paramString)
    throws DecoderException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.commons.codec.StringDecoder
 * JD-Core Version:    0.7.0.1
 */