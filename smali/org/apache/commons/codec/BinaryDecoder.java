package org.apache.commons.codec;

@Deprecated
public abstract interface BinaryDecoder
  extends Decoder
{
  public abstract byte[] decode(byte[] paramArrayOfByte)
    throws DecoderException;
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.commons.codec.BinaryDecoder
 * JD-Core Version:    0.7.0.1
 */