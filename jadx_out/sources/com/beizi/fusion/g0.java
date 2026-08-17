package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class g0 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static g0 f13917a = new g0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public u9 a(Context context) {
        return new f0();
    }

    private g0() {
        if (b.f13917a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static g0 a() {
        return b.f13917a;
    }
}
