package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public class fn extends x9 {

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static fn f13891a = new fn();
    }

    @Override // com.beizi.fusion.x9
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public hb a(Context context) {
        return new en();
    }

    private fn() {
        if (b.f13891a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static fn a() {
        return b.f13891a;
    }
}
