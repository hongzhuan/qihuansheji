package org.apache.commons.codec.net;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

@Deprecated
public class BCodec
  extends RFC1522Codec
  implements StringEncoder, StringDecoder
{
  public BCodec()
  {
    throw new RuntimeException("Stub!");
  }
  
  public BCodec(String paramString)
  {
    throw new RuntimeException("Stub!");
  }
  
  public Object decode(Object paramObject)
    throws DecoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String decode(String paramString)
    throws DecoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected byte[] doDecoding(byte[] paramArrayOfByte)
    throws DecoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected byte[] doEncoding(byte[] paramArrayOfByte)
    throws EncoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  public Object encode(Object paramObject)
    throws EncoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String encode(String paramString)
    throws EncoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String encode(String paramString1, String paramString2)
    throws EncoderException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String getDefaultCharset()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected String getEncoding()
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.commons.codec.net.BCodec
 * JD-Core Version:    0.7.0.1
 */