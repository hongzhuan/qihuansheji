package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

@Deprecated
public class HttpResponseWriter
  extends AbstractMessageWriter
{
  public HttpResponseWriter(SessionOutputBuffer paramSessionOutputBuffer, LineFormatter paramLineFormatter, HttpParams paramHttpParams)
  {
    super((SessionOutputBuffer)null, (LineFormatter)null, (HttpParams)null);
    throw new RuntimeException("Stub!");
  }
  
  protected void writeHeadLine(HttpMessage paramHttpMessage)
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.impl.io.HttpResponseWriter
 * JD-Core Version:    0.7.0.1
 */