package com.anythink.core.common.h;

import android.os.SystemClock;
import com.anythink.core.basead.adx.api.ATAdxSetting;

/* loaded from: classes2.dex */
public final class ce {

    /* renamed from: a, reason: collision with root package name */
    private final String f4188a = ce.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private com.anythink.core.e.m f4189b;

    /* renamed from: c, reason: collision with root package name */
    private as f4190c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f4191d;

    /* renamed from: e, reason: collision with root package name */
    private long f4192e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f4193f;

    /* renamed from: g, reason: collision with root package name */
    private int f4194g;

    /* renamed from: h, reason: collision with root package name */
    private int f4195h;

    /* renamed from: i, reason: collision with root package name */
    private int f4196i;

    /* renamed from: j, reason: collision with root package name */
    private long f4197j;

    /* renamed from: k, reason: collision with root package name */
    private int f4198k;

    /* renamed from: l, reason: collision with root package name */
    private long f4199l;

    public ce(as asVar, com.anythink.core.e.m mVar) {
        int i2 = asVar.f3811c;
        this.f4190c = asVar;
        this.f4189b = mVar;
        boolean z2 = false;
        this.f4191d = (ATAdxSetting.getInstance().isAdxNetworkMode(mVar.i()) || mVar.G() != 1 || i2 == 8 || i2 == 16) ? false : true;
        this.f4192e = mVar.s();
        if (mVar.q() != 1 && mVar.G() == 1) {
            z2 = true;
        }
        this.f4193f = z2;
        this.f4194g = i2 == 9 ? mVar.o() : mVar.H();
        this.f4195h = i2 == 9 ? mVar.p() : mVar.at();
        this.f4196i = mVar.c();
        this.f4197j = mVar.a();
        this.f4198k = mVar.b();
        this.f4199l = -1L;
    }

    private long q() {
        return this.f4189b.L();
    }

    private long r() {
        return this.f4197j;
    }

    private long s() {
        return this.f4198k;
    }

    public final com.anythink.core.e.m a() {
        return this.f4189b;
    }

    public final boolean b() {
        return com.anythink.core.common.b.e.c(this.f4189b, this.f4191d);
    }

    public final long c() {
        return this.f4192e;
    }

    public final boolean d() {
        return com.anythink.core.common.b.e.c(this.f4189b, this.f4193f);
    }

    public final int e() {
        return this.f4194g;
    }

    public final int f() {
        return com.anythink.core.common.b.e.a(this.f4189b, this.f4195h);
    }

    public final int g() {
        return this.f4189b.aF();
    }

    public final long h() {
        return this.f4189b.ak();
    }

    public final long i() {
        if (!this.f4190c.f3818j) {
            return this.f4189b.J();
        }
        long j2 = this.f4199l;
        if (j2 >= 0) {
            return j2;
        }
        long jElapsedRealtime = (r0.f3816h - (SystemClock.elapsedRealtime() - this.f4190c.f3819k)) - 100;
        this.f4199l = jElapsedRealtime;
        if (jElapsedRealtime < 0) {
            this.f4199l = 0L;
        }
        return this.f4199l;
    }

    public final int j() {
        return this.f4189b.z();
    }

    public final long k() {
        return this.f4189b.aa();
    }

    public final long l() {
        return this.f4189b.W();
    }

    public final long m() {
        return this.f4189b.al();
    }

    public final long n() {
        return this.f4189b.Q();
    }

    public final boolean o() {
        com.anythink.core.e.m mVar = this.f4189b;
        return mVar != null && mVar.aW() == 1;
    }

    public final int p() {
        return this.f4196i;
    }

    public final String toString() {
        return "WaterfallSetting{canLoadFailRetry=" + this.f4191d + ", loadFailRetryDelayTime=" + this.f4192e + ", cannBiddingFailRetry=" + this.f4193f + ", requestType=" + this.f4194g + ", requestNum=" + this.f4195h + ", cacheNum:" + this.f4189b.aF() + '}';
    }
}
