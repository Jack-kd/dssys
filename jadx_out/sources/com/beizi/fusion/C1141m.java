package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1141m extends x9 {

    /* renamed from: com.beizi.fusion.m$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1141m f14956a = new C1141m();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1140l a(Context context) {
        return new C1140l(context);
    }

    private C1141m() {
        if (b.f14956a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1141m a() {
        return b.f14956a;
    }
}
