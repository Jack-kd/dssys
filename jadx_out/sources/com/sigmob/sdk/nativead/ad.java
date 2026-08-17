package com.sigmob.sdk.nativead;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes4.dex */
public class ad extends Handler {

    /* renamed from: b, reason: collision with root package name */
    static final int f38359b = 87108;

    /* renamed from: c, reason: collision with root package name */
    long f38360c;

    /* renamed from: d, reason: collision with root package name */
    boolean f38361d;

    public ad() {
        this.f38360c = 100L;
        this.f38361d = true;
    }

    public void a() {
        sendEmptyMessageDelayed(f38359b, this.f38360c);
    }

    public boolean b() {
        return this.f38361d;
    }

    public ad(Looper looper) {
        super(looper);
        this.f38360c = 100L;
        this.f38361d = true;
    }

    public void a(boolean z2) {
        this.f38361d = z2;
    }
}
