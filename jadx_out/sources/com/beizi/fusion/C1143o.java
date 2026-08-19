package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1143o extends x9 {

    /* renamed from: com.beizi.fusion.o$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1143o f15388a = new C1143o();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1142n a(Context context) {
        return new C1142n(context);
    }

    private C1143o() {
        if (b.f15388a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1143o a() {
        return b.f15388a;
    }
}
