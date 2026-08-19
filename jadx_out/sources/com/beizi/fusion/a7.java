package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class a7 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static a7 f12629a = new a7();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ac a(Context context) {
        return new z6(context);
    }

    private a7() {
        if (b.f12629a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static a7 a() {
        return b.f12629a;
    }
}
