package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class bn extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static bn f13172a = new bn();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ye a(Context context) {
        return new u7().a(context);
    }

    private bn() {
        if (b.f13172a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static bn a() {
        return b.f13172a;
    }
}
