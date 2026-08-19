package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class r0 extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static r0 f15839a = new r0();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public q0 a(Context context) {
        return new q0(context);
    }

    private r0() {
        if (b.f15839a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static r0 a() {
        return b.f15839a;
    }
}
