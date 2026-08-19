package com.kwai.library.ipneigh;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public final class c {
    private static d F(Context context, boolean z2) {
        return b(context, false, false);
    }

    private static d b(Context context, boolean z2, boolean z3) {
        String strJ;
        try {
            if (!b.isWifiConnected(context)) {
                return new d("", false, "");
            }
            String strGs = b.gs(((WifiManager) context.getApplicationContext().getSystemService("wifi")).getDhcpInfo().gateway);
            if (z2) {
                strJ = "";
            } else {
                strJ = a.iO("timeout 5 ip neigh show " + strGs);
            }
            if (z2 || TextUtils.isEmpty(strJ)) {
                strJ = KwaiIpNeigh.j(strGs, false);
            }
            return new d(b.iQ(strJ), !TextUtils.isEmpty(r3), strJ);
        } catch (Throwable th) {
            return new d("", false, th.getMessage());
        }
    }

    public static d eV(Context context) {
        return F(context, false);
    }
}
