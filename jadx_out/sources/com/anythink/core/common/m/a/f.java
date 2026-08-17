package com.anythink.core.common.m.a;

import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: j, reason: collision with root package name */
    private static final long f5541j = 30000;

    /* renamed from: k, reason: collision with root package name */
    private static final long f5542k = 30000;

    /* renamed from: l, reason: collision with root package name */
    private static final long f5543l = 30000;

    /* renamed from: m, reason: collision with root package name */
    private static final TimeUnit f5544m = TimeUnit.MILLISECONDS;

    /* renamed from: a, reason: collision with root package name */
    public long f5545a;

    /* renamed from: b, reason: collision with root package name */
    public TimeUnit f5546b;

    /* renamed from: c, reason: collision with root package name */
    public long f5547c;

    /* renamed from: d, reason: collision with root package name */
    public TimeUnit f5548d;

    /* renamed from: e, reason: collision with root package name */
    public long f5549e;

    /* renamed from: f, reason: collision with root package name */
    public TimeUnit f5550f;

    /* renamed from: g, reason: collision with root package name */
    public final List<e> f5551g;

    /* renamed from: h, reason: collision with root package name */
    public d f5552h;

    /* renamed from: i, reason: collision with root package name */
    public int f5553i;

    public /* synthetic */ f(byte b3) {
        this();
    }

    public static class a {

        /* renamed from: h, reason: collision with root package name */
        private d f5561h;

        /* renamed from: i, reason: collision with root package name */
        private int f5562i;

        /* renamed from: b, reason: collision with root package name */
        private long f5555b = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;

        /* renamed from: c, reason: collision with root package name */
        private TimeUnit f5556c = f.f5544m;

        /* renamed from: d, reason: collision with root package name */
        private long f5557d = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;

        /* renamed from: e, reason: collision with root package name */
        private TimeUnit f5558e = f.f5544m;

        /* renamed from: f, reason: collision with root package name */
        private long f5559f = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;

        /* renamed from: g, reason: collision with root package name */
        private TimeUnit f5560g = f.f5544m;

        /* renamed from: a, reason: collision with root package name */
        final List<e> f5554a = new ArrayList();

        public final a a(TimeUnit timeUnit) {
            this.f5555b = 60000L;
            this.f5556c = timeUnit;
            return this;
        }

        public final a b(TimeUnit timeUnit) {
            this.f5557d = 60000L;
            this.f5558e = timeUnit;
            return this;
        }

        public final a c(TimeUnit timeUnit) {
            this.f5559f = 60000L;
            this.f5560g = timeUnit;
            return this;
        }

        public final a a(d dVar) {
            this.f5561h = dVar;
            return this;
        }

        public final a a(int i2) {
            this.f5562i = i2;
            return this;
        }

        public final f a() {
            f fVar = new f((byte) 0);
            fVar.f5549e = this.f5559f;
            fVar.f5550f = this.f5560g;
            fVar.f5547c = this.f5557d;
            fVar.f5548d = this.f5558e;
            fVar.f5545a = this.f5555b;
            fVar.f5546b = this.f5556c;
            fVar.f5552h = this.f5561h;
            fVar.f5553i = this.f5562i;
            if (!this.f5554a.isEmpty()) {
                fVar.f5551g.addAll(new ArrayList(this.f5554a));
            }
            return fVar;
        }
    }

    private f() {
        this.f5551g = new ArrayList();
    }
}
