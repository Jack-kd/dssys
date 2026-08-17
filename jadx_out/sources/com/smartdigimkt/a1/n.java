package com.smartdigimkt.a1;

import android.os.SystemClock;
import com.smartdigimkt.j0.a0;

/* loaded from: classes5.dex */
public final class n implements g {

    /* renamed from: b, reason: collision with root package name */
    public boolean f39294b;

    /* renamed from: c, reason: collision with root package name */
    public long f39295c;

    /* renamed from: d, reason: collision with root package name */
    public long f39296d;

    /* renamed from: a, reason: collision with root package name */
    public final b f39293a = b.f39264a;

    /* renamed from: e, reason: collision with root package name */
    public a0 f39297e = a0.f40850e;

    public final void a(long j2) {
        this.f39295c = j2;
        if (this.f39294b) {
            ((o) this.f39293a).getClass();
            this.f39296d = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.smartdigimkt.a1.g
    public final long b() {
        long j2 = this.f39295c;
        if (!this.f39294b) {
            return j2;
        }
        ((o) this.f39293a).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f39296d;
        return (this.f39297e.f40851a == 1.0f ? com.smartdigimkt.j0.b.a(jElapsedRealtime) : jElapsedRealtime * r4.f40854d) + j2;
    }

    @Override // com.smartdigimkt.a1.g
    public final a0 a(a0 a0Var) {
        if (this.f39294b) {
            a(b());
        }
        this.f39297e = a0Var;
        return a0Var;
    }

    @Override // com.smartdigimkt.a1.g
    public final a0 a() {
        return this.f39297e;
    }
}
