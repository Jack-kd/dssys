package com.smartdigimkt.z3;

import android.os.CountDownTimer;

/* loaded from: classes5.dex */
public final class a extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f45438a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar, long j2, long j3) {
        super(j2, j3);
        this.f45438a = bVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.f45438a.a();
        this.f45438a.c();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j2) {
        b bVar = this.f45438a;
        bVar.f45443e = j2;
        bVar.a(j2);
    }
}
