package android.net.http;

import java.io.IOException;
import javax.net.ssl.SSLSocket;

public class CertificateChainValidator
{
  CertificateChainValidator()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static CertificateChainValidator getInstance()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static void handleTrustStorageUpdate()
  {
    throw new RuntimeException("Stub!");
  }
  
  public static SslError verifyServerCertificates(byte[][] paramArrayOfByte, String paramString1, String paramString2)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public SslError doHandshakeAndValidateServerCertificates(HttpsConnection paramHttpsConnection, SSLSocket paramSSLSocket, String paramString)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     android.net.http.CertificateChainValidator
 * JD-Core Version:    0.7.0.1
 */