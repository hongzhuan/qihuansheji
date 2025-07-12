package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

@Deprecated
abstract class RFC1522Codec
{
  RFC1522Codec()
  {
    throw new RuntimeException("Stub!");
  }
  
  protected String decodeText(String paramString)
    throws DecoderException, UnsupportedEncodingException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected abstract byte[] doDecoding(byte[] paramArrayOfByte)
    throws DecoderException;
  
  protected abstract byte[] doEncoding(byte[] paramArrayOfByte)
    throws EncoderException;
  
  protected String encodeText(String paramString1, String paramString2)
    throws EncoderException, UnsupportedEncodingException
  {
    throw new RuntimeException("Stub!");
  }
  
  protected abstract String getEncoding();
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.commons.codec.net.RFC1522Codec
 * JD-Core Version:    0.7.0.1
 */