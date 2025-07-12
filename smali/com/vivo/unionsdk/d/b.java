package com.vivo.unionsdk.d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.vivo.ic.channelreader.ChannelReaderUtil;
import com.vivo.ic.channelreader.V1ChannelReader;
import com.vivo.ic.channelreader.V2ChannelReader;
import com.vivo.ic.channelunit.item.ChannalInfo;
import com.vivo.unionsdk.cmd.CommandClient;
import com.vivo.unionsdk.cmd.SendChannelInfoCommand;
import com.vivo.unionsdk.m;
import com.vivo.unionsdk.t;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

final class b
  implements Runnable
{
  b(Context paramContext, String paramString) {}
  
  public void run()
  {
    try
    {
      long l1 = System.currentTimeMillis();
      Object localObject2 = new File(this.驶.getPackageManager().getApplicationInfo(this.始, 0).sourceDir);
      int i = ChannelReaderUtil.getMode((File)localObject2, this.始);
      if (i == -1)
      {
        m.驶("ChannelInfoUtils", "mode = -1");
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("key", "166");
        ((HashMap)localObject1).put("issuc", "0");
        d.驶((HashMap)localObject1, this.驶, 1, this.始, null, false);
        return;
      }
      Object localObject1 = ChannelReaderUtil.readChannel((File)localObject2, this.始);
      if (i == 1) {
        localObject1 = V1ChannelReader.readChannel((File)localObject2, this.始);
      }
      while (!((ChannalInfo)localObject1).isRight()) {
        if (((ChannalInfo)localObject1).mException != null)
        {
          m.驶("ChannelInfoUtils", "读取异常 " + ((ChannalInfo)localObject1).mException.getMessage());
          localObject1 = ((ChannalInfo)localObject1).toMap();
          localObject2 = new HashMap();
          ((HashMap)localObject2).putAll((Map)localObject1);
          ((HashMap)localObject2).put("key", "166");
          ((HashMap)localObject2).put("issuc", "0");
          d.驶((HashMap)localObject2, this.驶, 1, this.始, null, false);
          return;
          if (i == 2) {
            localObject1 = V2ChannelReader.readChannl((File)localObject2, this.始);
          }
        }
        else
        {
          localObject1 = new HashMap();
          ((HashMap)localObject1).put("key", "166");
          ((HashMap)localObject1).put("issuc", "0");
          d.驶((HashMap)localObject1, this.驶, 1, this.始, null, false);
          return;
        }
      }
      long l2 = System.currentTimeMillis();
      m.始("ChannelInfoUtils", "setChannelInfo, time = " + (l2 - l1));
      localObject2 = ((ChannalInfo)localObject1).getChannel();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        t.驶(this.驶).始((String)localObject2);
        SendChannelInfoCommand localSendChannelInfoCommand = new SendChannelInfoCommand();
        localSendChannelInfoCommand.setParams((String)localObject2);
        CommandClient.getInstance().sendCommandToServer(this.始, localSendChannelInfoCommand);
      }
      m.驶("ChannelInfoUtils", "channelInfoStr = " + ((ChannalInfo)localObject1).getChannel());
      localObject1 = new HashMap();
      ((HashMap)localObject1).put("key", "166");
      ((HashMap)localObject1).put("issuc", "1");
      d.驶((HashMap)localObject1, this.驶, 1, this.始, null);
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.d.b
 * JD-Core Version:    0.7.0.1
 */