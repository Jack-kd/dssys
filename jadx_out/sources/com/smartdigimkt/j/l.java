package com.smartdigimkt.j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: classes5.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40795a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f40796b;

    public l(m mVar, Context context) {
        this.f40796b = mVar;
        this.f40795a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f40795a.getSystemService("connectivity");
            if (connectivityManager != null) {
                Context context = this.f40795a;
                char[] cArr = com.smartdigimkt.c5.k.f39779a;
                try {
                    if (context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f31160b, context.getPackageName()) == 0) {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (com.smartdigimkt.c5.k.g(this.f40795a) && activeNetworkInfo.getType() == 1) {
                            this.f40796b.f40797a.c();
                        }
                    }
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
