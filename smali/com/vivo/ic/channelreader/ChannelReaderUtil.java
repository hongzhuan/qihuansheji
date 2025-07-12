package com.vivo.ic.channelreader;

import android.util.Log;
import com.vivo.ic.channelunit.item.ChannalInfo;
import com.vivo.ic.channelunit.item.V1ChannelComment;
import com.vivo.ic.channelunit.item.V2ChannelBlock;
import java.io.File;

public class ChannelReaderUtil
{
  public static Long getChannelFileMD5(File paramFile, ChannalInfo paramChannalInfo)
  {
    Long localLong2 = V1ChannelReader.getChannelFileMD5Hash(paramFile, paramChannalInfo);
    Long localLong1 = localLong2;
    if (localLong2 == null) {
      localLong1 = V2ChannelReader.getChannelFileMD5Hash(paramFile, paramChannalInfo);
    }
    return localLong1;
  }
  
  public static int getMode(File paramFile, String paramString)
  {
    try
    {
      V2ChannelBlock localV2ChannelBlock = V2ChannelReader.getIDValueOffset(paramFile, 1896449818, paramString);
      if ((localV2ChannelBlock != null) && (localV2ChannelBlock.mChannelBlockOffset > 0L) && (localV2ChannelBlock.mException == null))
      {
        Log.d("ChannelUnit", "getMode pkg " + paramString + ", type V2");
        return 2;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      if (V1ChannelReader.containV1Signature(paramFile))
      {
        Log.d("ChannelUnit", "getMode pkg " + paramString + ", type V1");
        return 1;
      }
      Log.d("ChannelUnit", "getMode pkg " + paramString + ", cannot find mode");
    }
    return -1;
  }
  
  public static ChannalInfo readChannel(File paramFile, String paramString)
  {
    localChannalInfo = ChannalInfo.EMPTY_CHANNEL;
    for (;;)
    {
      boolean bool;
      try
      {
        V1ChannelComment localV1ChannelComment = V1ChannelReader.readChannel(paramFile, paramString);
        if (localV1ChannelComment != null)
        {
          bool = localV1ChannelComment.isRight();
          if (bool)
          {
            paramFile = localV1ChannelComment;
            return paramFile;
          }
        }
      }
      catch (Exception localException)
      {
        localChannalInfo.mException = localException;
        localChannalInfo.mPkg = paramString;
      }
      try
      {
        paramFile = V2ChannelReader.readChannl(paramFile, paramString);
        if (paramFile != null)
        {
          bool = paramFile.isRight();
          if (bool) {
            continue;
          }
        }
      }
      catch (Exception paramFile)
      {
        for (;;)
        {
          localChannalInfo.mException = paramFile;
          localChannalInfo.mPkg = paramString;
        }
      }
    }
    Log.d("ChannelUnit", "read channel " + paramString + ", info " + localChannalInfo.toString());
    return ChannalInfo.EMPTY_CHANNEL;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelreader.ChannelReaderUtil
 * JD-Core Version:    0.7.0.1
 */