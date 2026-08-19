package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class o0 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static o0 f15389a = new o0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public w9 a(Context context) {
        return new n0(context);
    }

    private o0() {
        if (b.f15389a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static o0 a() {
        return b.f15389a;
    }
}
