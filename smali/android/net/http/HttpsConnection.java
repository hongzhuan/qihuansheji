package android.net.http;

import android.content.Context;
import java.io.File;
import org.apache.http.HttpHost;

public class HttpsConnection
  extends Connection
{
  protected SslCertificate mCertificate;
  protected AndroidHttpClientConnection mHttpClientConnection;
  
  HttpsConnection()
  {
    super((Context)null, (HttpHost)null, (RequestFeeder)null);
    throw new RuntimeException("Stub!");
  }
  
  public static void initializeEngine(File paramFile)
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     android.net.http.HttpsConnection
 * JD-Core Version:    0.7.0.1
 */