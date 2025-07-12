package org.apache.http.client.params;

import org.apache.http.auth.params.AuthPNames;
import org.apache.http.conn.params.ConnConnectionPNames;
import org.apache.http.conn.params.ConnManagerPNames;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.cookie.params.CookieSpecPNames;
import org.apache.http.params.CoreProtocolPNames;

@Deprecated
public abstract interface AllClientPNames
  extends CoreProtocolPNames, ClientPNames, AuthPNames, CookieSpecPNames, ConnConnectionPNames, ConnManagerPNames, ConnRoutePNames
{}


/* Location:           E:\quarkCloudDrive\downloadWorkspace\AndroidKiller\projects\base\ProjectSrc\smali\
 * Qualified Name:     org.apache.http.client.params.AllClientPNames
 * JD-Core Version:    0.7.0.1
 */