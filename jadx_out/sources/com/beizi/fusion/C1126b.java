package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1126b extends x9 {

    /* renamed from: com.beizi.fusion.b$b, reason: collision with other inner class name */
    public static class C0151b {

        /* renamed from: a, reason: collision with root package name */
        private static C1126b f13027a = new C1126b();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1124a a(Context context) {
        return new C1124a(context);
    }

    private C1126b() {
        if (C0151b.f13027a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1126b a() {
        return C0151b.f13027a;
    }
}
