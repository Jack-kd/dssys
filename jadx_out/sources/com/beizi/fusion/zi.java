package com.beizi.fusion;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;

/* loaded from: classes2.dex */
public abstract class zi {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r2) {
        /*
            if (r2 != 0) goto L9
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_UNKNOWN
            int r2 = r2.b()
            return r2
        L9:
            android.content.Context r0 = r2.getApplicationContext()
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            if (r0 == 0) goto L24
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r2 = com.beizi.fusion.cl.b(r2, r1)     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L24
            android.net.NetworkInfo r2 = r0.getActiveNetworkInfo()     // Catch: java.lang.Throwable -> L24
            goto L25
        L24:
            r2 = 0
        L25:
            if (r2 != 0) goto L2e
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_UNKNOWN
            int r2 = r2.b()
            return r2
        L2e:
            int r0 = r2.getType()
            r1 = 1
            if (r0 != r1) goto L3c
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_WIFI
            int r2 = r2.b()
            return r2
        L3c:
            if (r0 != 0) goto L8c
            int r0 = r2.getSubtype()
            java.lang.String r2 = r2.getSubtypeName()
            switch(r0) {
                case 1: goto L85;
                case 2: goto L85;
                case 3: goto L7e;
                case 4: goto L85;
                case 5: goto L7e;
                case 6: goto L7e;
                case 7: goto L85;
                case 8: goto L7e;
                case 9: goto L7e;
                case 10: goto L7e;
                case 11: goto L85;
                case 12: goto L7e;
                case 13: goto L77;
                case 14: goto L7e;
                case 15: goto L7e;
                case 16: goto L85;
                case 17: goto L7e;
                case 18: goto L77;
                case 19: goto L49;
                case 20: goto L70;
                default: goto L49;
            }
        L49:
            java.lang.String r0 = "TD-SCDMA"
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 != 0) goto L69
            java.lang.String r0 = "WCDMA"
            boolean r0 = r0.equalsIgnoreCase(r2)
            if (r0 != 0) goto L69
            java.lang.String r0 = "CDMA2000"
            boolean r2 = r0.equalsIgnoreCase(r2)
            if (r2 == 0) goto L62
            goto L69
        L62:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_UNKNOWN
            int r2 = r2.b()
            return r2
        L69:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_3G
            int r2 = r2.b()
            return r2
        L70:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_5G
            int r2 = r2.b()
            return r2
        L77:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_4G
            int r2 = r2.b()
            return r2
        L7e:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_3G
            int r2 = r2.b()
            return r2
        L85:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_2G
            int r2 = r2.b()
            return r2
        L8c:
            com.beizi.fusion.x6 r2 = com.beizi.fusion.x6.CONNECT_TYPE_UNKNOWN
            int r2 = r2.b()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.zi.a(android.content.Context):int");
    }

    public static boolean b(Context context) {
        if (cl.b(context, com.kuaishou.weapon.p0.g.f31160b)) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a() throws SocketException {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                ArrayList list = Collections.list(networkInterfaces);
                int size = list.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = list.get(i2);
                    i2++;
                    String name = ((NetworkInterface) obj).getName();
                    if ("tun0".equals(name) || "ppp0".equals(name)) {
                        return true;
                    }
                }
            }
        } catch (SocketException e2) {
            rm.a(e2);
        }
        return false;
    }
}
