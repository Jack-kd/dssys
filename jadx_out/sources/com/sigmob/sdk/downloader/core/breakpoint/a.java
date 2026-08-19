package com.sigmob.sdk.downloader.core.breakpoint;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final long f37282a;

    /* renamed from: b, reason: collision with root package name */
    private final long f37283b;

    /* renamed from: c, reason: collision with root package name */
    private final AtomicLong f37284c;

    public a(long j2, long j3) {
        this(j2, j3, 0L);
    }

    public long a() {
        return this.f37284c.get();
    }

    public long b() {
        return this.f37282a;
    }

    public long c() {
        return this.f37282a + this.f37284c.get();
    }

    public long d() {
        return this.f37283b;
    }

    public long e() {
        long j2 = this.f37283b;
        if (j2 == -1) {
            return -1L;
        }
        return (this.f37282a + j2) - 1;
    }

    public void f() {
        this.f37284c.set(0L);
    }

    public a g() {
        return new a(this.f37282a, this.f37283b, this.f37284c.get());
    }

    public String toString() {
        return "[" + this.f37282a + ", " + e() + ")-current:" + this.f37284c;
    }

    public a(long j2, long j3, long j4) {
        if (j2 < 0 || ((j3 < 0 && j3 != -1) || j4 < 0)) {
            throw new IllegalArgumentException();
        }
        this.f37282a = j2;
        this.f37283b = j3;
        this.f37284c = new AtomicLong(j4);
    }

    public void a(long j2) {
        this.f37284c.addAndGet(j2);
    }
}
