package com.czhj.wire.okio;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class PushableTimeout extends Timeout {

    /* renamed from: a, reason: collision with root package name */
    private Timeout f29830a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f29831b;

    /* renamed from: c, reason: collision with root package name */
    private long f29832c;

    /* renamed from: d, reason: collision with root package name */
    private long f29833d;

    public void a() {
        this.f29830a.timeout(this.f29833d, TimeUnit.NANOSECONDS);
        if (this.f29831b) {
            this.f29830a.deadlineNanoTime(this.f29832c);
        } else {
            this.f29830a.clearDeadline();
        }
    }

    public void a(Timeout timeout) {
        long jDeadlineNanoTime;
        this.f29830a = timeout;
        boolean zHasDeadline = timeout.hasDeadline();
        this.f29831b = zHasDeadline;
        this.f29832c = zHasDeadline ? timeout.deadlineNanoTime() : -1L;
        long jTimeoutNanos = timeout.timeoutNanos();
        this.f29833d = jTimeoutNanos;
        timeout.timeout(Timeout.a(jTimeoutNanos, timeoutNanos()), TimeUnit.NANOSECONDS);
        if (this.f29831b && hasDeadline()) {
            jDeadlineNanoTime = Math.min(deadlineNanoTime(), this.f29832c);
        } else if (!hasDeadline()) {
            return;
        } else {
            jDeadlineNanoTime = deadlineNanoTime();
        }
        timeout.deadlineNanoTime(jDeadlineNanoTime);
    }
}
