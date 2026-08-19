package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public final class q2 {

    /* renamed from: a, reason: collision with root package name */
    private final a f15712a;

    public static class a extends pa {
        public a(Context context, boolean z2) {
            super(context, z2);
        }
    }

    public q2(Context context) {
        this.f15712a = new a(context.getApplicationContext(), true);
    }

    public void a(String str, String str2, byte[] bArr, ua uaVar) {
        this.f15712a.a(str2);
        this.f15712a.a(str, bArr, uaVar);
    }
}
