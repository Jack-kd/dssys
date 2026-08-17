package com.ubix.ssp.ad.core.monitor.data.c;

import android.net.Uri;
import com.umeng.analytics.pro.g;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f45728a;

    /* renamed from: b, reason: collision with root package name */
    private final Uri f45729b;

    /* renamed from: c, reason: collision with root package name */
    private final Uri f45730c;

    private c(String str) {
        this.f45729b = Uri.parse("content://" + str + ".UbixDataContentProvider/" + g.ax);
        this.f45730c = Uri.parse("content://" + str + ".UbixDataContentProvider/data_collect");
    }

    public Uri a() {
        return this.f45729b;
    }

    public static c a(String str) {
        if (f45728a == null) {
            f45728a = new c(str);
        }
        return f45728a;
    }
}
