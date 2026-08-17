package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class gh extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static gh f14066a = new gh();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public kd a(Context context) {
        return new fh();
    }

    private gh() {
        if (b.f14066a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static gh a() {
        return b.f14066a;
    }
}
