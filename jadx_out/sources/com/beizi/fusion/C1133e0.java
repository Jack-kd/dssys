package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1133e0 extends x9 {

    /* renamed from: com.beizi.fusion.e0$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1133e0 f13588a = new C1133e0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public pd a(Context context) {
        return new C1131d0(context);
    }

    private C1133e0() {
        if (b.f13588a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1133e0 a() {
        return b.f13588a;
    }
}
