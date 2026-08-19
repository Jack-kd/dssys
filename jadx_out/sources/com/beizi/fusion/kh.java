package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class kh extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static kh f14744a = new kh();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public md a(Context context) {
        return new lh(context);
    }

    private kh() {
        if (b.f14744a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static kh a() {
        return b.f14744a;
    }
}
