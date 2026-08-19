package com.ubix.ssp.open;

import android.content.Context;
import com.ubix.ssp.open.manager.InitManager;

/* loaded from: classes5.dex */
public class UBiXInitManger {

    /* renamed from: a, reason: collision with root package name */
    private static InitManager f48513a;

    /* renamed from: b, reason: collision with root package name */
    public static a f48514b = a.ONLINE;

    public enum a {
        TEST,
        ONLINE
    }

    public static InitManager getInstance(Context context) {
        if (f48513a == null) {
            synchronized (UBiXInitManger.class) {
                try {
                    if (f48513a == null) {
                        f48513a = new com.ubix.ssp.ad.e.u.a(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f48513a;
    }

    public String getSdkVersion() {
        return "2.10.2.11";
    }
}
