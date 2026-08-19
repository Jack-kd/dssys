package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class v4 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static v4 f16638a = new v4();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public mb a(Context context) {
        return new u4();
    }

    private v4() {
        if (b.f16638a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static v4 a() {
        return b.f16638a;
    }
}
