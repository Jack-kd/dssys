package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class t0 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static t0 f16289a = new t0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public s0 a(Context context) {
        return new s0(context);
    }

    private t0() {
        if (b.f16289a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static t0 a() {
        return b.f16289a;
    }
}
