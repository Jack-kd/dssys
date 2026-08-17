package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class wp extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static wp f17353a = new wp();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public no a(Context context) {
        return new no(context);
    }

    private wp() {
        if (b.f17353a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static wp a() {
        return b.f17353a;
    }
}
