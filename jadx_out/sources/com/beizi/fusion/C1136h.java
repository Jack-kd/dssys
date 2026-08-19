package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1136h extends x9 {

    /* renamed from: com.beizi.fusion.h$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1136h f14141a = new C1136h();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1135g a(Context context) {
        return new C1135g(context);
    }

    private C1136h() {
        if (b.f14141a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1136h a() {
        return b.f14141a;
    }
}
