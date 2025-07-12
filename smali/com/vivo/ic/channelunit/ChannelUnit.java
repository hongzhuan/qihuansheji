package com.vivo.ic.channelunit;

import com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier;
import com.vivo.ic.channelunit.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.vivo.ic.channelunit.verify.ZipUtils;
import java.io.File;
import java.io.RandomAccessFile;

public class ChannelUnit
{
  public static Pair getEocd(File paramFile)
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    paramFile = new RandomAccessFile(paramFile, "r");
    Pair localPair = ApkSignatureSchemeV2Verifier.getEocd(paramFile);
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramFile, ((Long)localPair.getSecond()).longValue())) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    return localPair;
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.ic.channelunit.ChannelUnit
 * JD-Core Version:    0.7.0.1
 */