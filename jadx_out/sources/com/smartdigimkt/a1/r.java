package com.smartdigimkt.a1;

import android.os.Trace;

/* loaded from: classes5.dex */
public abstract class r {
    public static void a(String str) {
        if (t.f39303a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void a() {
        if (t.f39303a >= 18) {
            Trace.endSection();
        }
    }
}
