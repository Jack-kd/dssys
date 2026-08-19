package com.beizi.fusion;

import android.content.Context;

/* renamed from: com.beizi.fusion.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1154z extends x9 {

    /* renamed from: com.beizi.fusion.z$b */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static C1154z f17731a = new C1154z();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public t9 a(Context context) {
        return new C1153y(context);
    }

    private C1154z() {
        if (b.f17731a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static C1154z a() {
        return b.f17731a;
    }
}
