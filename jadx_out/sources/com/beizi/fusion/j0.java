package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class j0 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static j0 f14515a = new j0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public v9 a(Context context) {
        return new i0(context);
    }

    private j0() {
        if (b.f14515a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static j0 a() {
        return b.f14515a;
    }
}
