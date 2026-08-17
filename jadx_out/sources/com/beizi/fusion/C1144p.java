package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1144p extends x9 {

    /* renamed from: com.beizi.fusion.p$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1144p f15482a = new C1144p();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public s9 a(Context context) {
        return new C1145q(context);
    }

    private C1144p() {
        if (b.f15482a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1144p a() {
        return b.f15482a;
    }
}
