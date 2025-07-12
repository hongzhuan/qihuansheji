package com.vivo.unionsdk.c;

import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Xml;
import com.vivo.unionsdk.j;
import com.vivo.unionsdk.m;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;

public class h
{
  public static b 驶(Context paramContext, InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    b localb = new b();
    label746:
    label749:
    label752:
    label755:
    for (;;)
    {
      try
      {
        localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(paramInputStream, "UTF-8");
        i = localXmlPullParser.getEventType();
        localIntentFilter = null;
        localObject = null;
        if (i == 1) {
          continue;
        }
        str = localXmlPullParser.getName();
        switch (i)
        {
        }
      }
      catch (Exception paramContext)
      {
        m.始("XmlParser", "TraceXmlParserTask exception:", paramContext);
        if (paramInputStream == null) {
          continue;
        }
      }
      finally
      {
        try
        {
          XmlPullParser localXmlPullParser;
          IntentFilter localIntentFilter;
          paramInputStream.close();
          return localb;
          if ("receiver".equals(str))
          {
            localObject = new a(localXmlPullParser.getAttributeValue(null, "name"));
            if (j.驶(localXmlPullParser.getAttributeValue(null, "include"), true)) {
              break label749;
            }
            localb.式((a)localObject);
            break label749;
          }
          if ("service".equals(str))
          {
            localObject = new g(localXmlPullParser.getAttributeValue(null, "name"));
            if (j.驶(localXmlPullParser.getAttributeValue(null, "include"), true)) {
              break label752;
            }
            localb.驶((g)localObject);
            break label752;
          }
          if ("intent-filter".equals(str))
          {
            localIntentFilter = new IntentFilter();
            ((a)localObject).驶(localIntentFilter);
            continue;
          }
          if ("action".equals(str))
          {
            localIntentFilter.addAction(localXmlPullParser.getAttributeValue(null, "name"));
            continue;
          }
          if ("category".equals(str))
          {
            localIntentFilter.addCategory(localXmlPullParser.getAttributeValue(null, "name"));
            continue;
          }
          if ("data".equals(str))
          {
            str = localXmlPullParser.getAttributeValue(null, "scheme");
            if (!TextUtils.isEmpty(str)) {
              localIntentFilter.addDataScheme(str.replace("@_pkg_@", paramContext.getPackageName()));
            }
            str = localXmlPullParser.getAttributeValue(null, "host");
            if (!TextUtils.isEmpty(str)) {
              localIntentFilter.addDataAuthority(str, null);
            }
            str = localXmlPullParser.getAttributeValue(null, "path");
            if (TextUtils.isEmpty(str)) {
              break label755;
            }
            localIntentFilter.addDataPath(str, 0);
            break label755;
          }
          if ("uses-permission".equals(str))
          {
            localObject = new g(localXmlPullParser.getAttributeValue(null, "name"));
            localb.始((g)localObject);
            continue;
          }
          if (!"meta-data".equals(str)) {
            continue;
          }
          String str = localXmlPullParser.getAttributeValue(null, "name");
          Object localObject = localXmlPullParser.getAttributeValue(null, "value");
          if ("vivo_union_sdk".equals(str)) {
            localObject = String.valueOf("4.2.4.0");
          }
          localObject = new c(str, (String)localObject);
          localb.驶((c)localObject);
          continue;
          continue;
          if (paramInputStream == null) {
            continue;
          }
          try
          {
            paramInputStream.close();
          }
          catch (IOException paramContext) {}
          continue;
          paramContext = finally;
          if (paramInputStream == null) {}
        }
        catch (IOException paramContext)
        {
          try
          {
            paramInputStream.close();
            throw paramContext;
            paramContext = paramContext;
          }
          catch (IOException paramInputStream)
          {
            continue;
          }
        }
        int i = 0;
        continue;
        continue;
      }
      i = localXmlPullParser.next();
      continue;
      if ("activity".equals(str))
      {
        str = localXmlPullParser.getAttributeValue(null, "name");
        localObject = str;
        if (!TextUtils.isEmpty(str)) {
          localObject = str.replace("@_pkg_@", paramContext.getPackageName());
        }
        localObject = new a((String)localObject);
        if (!j.驶(localXmlPullParser.getAttributeValue(null, "include"), true))
        {
          localb.始((a)localObject);
          break label746;
        }
        localb.驶((a)localObject);
        str = localXmlPullParser.getAttributeValue(null, "theme");
        if (TextUtils.isEmpty(str)) {
          continue;
        }
        str = str.substring(str.lastIndexOf("/") + 1, str.length());
        if (TextUtils.isEmpty(str)) {
          continue;
        }
        i = paramContext.getResources().getIdentifier(str, "style", "android");
        ((a)localObject).驶(i);
        break label746;
      }
      continue;
      continue;
    }
  }
}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     com.vivo.unionsdk.c.h
 * JD-Core Version:    0.7.0.1
 */