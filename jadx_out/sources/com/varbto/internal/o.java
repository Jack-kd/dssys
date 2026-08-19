package com.varbto.internal;

import android.content.Context;
import k1.s;
import k1.t;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f50561b;

    public o(Context context) {
        this.f50561b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String strB = t.b(this.f50561b);
            if (strB == null) {
                strB = "";
            }
            t.f51309a = strB;
            try {
                s.c("SystemInfoCollector", "initStaticHeader() >>> ok, length=" + t.f51309a.length(), new Object[0]);
            } catch (Throwable unused) {
            }
        } catch (Throwable th) {
            t.d("initStaticHeader() >>> failed", th);
            t.f51309a = "";
        }
    }
}
