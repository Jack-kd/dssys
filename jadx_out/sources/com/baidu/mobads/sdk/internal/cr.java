package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* loaded from: classes2.dex */
public class cr {

    /* renamed from: a, reason: collision with root package name */
    private static volatile cr f11406a;

    private cr() {
    }

    public static cr a() {
        if (f11406a == null) {
            synchronized (cr.class) {
                try {
                    if (f11406a == null) {
                        f11406a = new cr();
                    }
                } finally {
                }
            }
        }
        return f11406a;
    }

    private NetworkCapabilities c(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31160b) != 0) {
                return null;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
            return connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        } catch (Throwable unused) {
            return null;
        }
    }

    public NetworkInfo b(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext.checkCallingOrSelfPermission(com.kuaishou.weapon.p0.g.f31160b) == 0) {
                return ((ConnectivityManager) applicationContext.getSystemService("connectivity")).getActiveNetworkInfo();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Boolean a(Context context) {
        try {
            boolean z2 = false;
            if (bn.a(context).a() < 29) {
                NetworkInfo networkInfoB = b(context);
                if (networkInfoB != null && networkInfoB.isConnected() && networkInfoB.getType() == 1) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            }
            NetworkCapabilities networkCapabilitiesC = c(context);
            if (networkCapabilitiesC != null && networkCapabilitiesC.hasCapability(12) && networkCapabilitiesC.hasCapability(16) && networkCapabilitiesC.hasTransport(1)) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } catch (Throwable unused) {
            return Boolean.FALSE;
        }
    }
}
