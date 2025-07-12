package com.android.internal.http.multipart;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class FilePartSource
  implements PartSource
{
  public FilePartSource(File paramFile)
    throws FileNotFoundException
  {
    throw new RuntimeException("Stub!");
  }
  
  public FilePartSource(String paramString, File paramFile)
    throws FileNotFoundException
  {
    throw new RuntimeException("Stub!");
  }
  
  public InputStream createInputStream()
    throws IOException
  {
    throw new RuntimeException("Stub!");
  }
  
  public String getFileName()
  {
    throw new RuntimeException("Stub!");
  }
  
  public long getLength()
  {
    throw new RuntimeException("Stub!");
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.android.internal.http.multipart.FilePartSource
 * JD-Core Version:    0.7.0.1
 */