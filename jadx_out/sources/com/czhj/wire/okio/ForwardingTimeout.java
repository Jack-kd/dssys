package com.czhj.wire.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ForwardingTimeout extends Timeout {

    /* renamed from: a, reason: collision with root package name */
    private Timeout f29778a;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f29778a = timeout;
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout clearDeadline() {
        return this.f29778a.clearDeadline();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout clearTimeout() {
        return this.f29778a.clearTimeout();
    }

    @Override // com.czhj.wire.okio.Timeout
    public long deadlineNanoTime() {
        return this.f29778a.deadlineNanoTime();
    }

    public final Timeout delegate() {
        return this.f29778a;
    }

    @Override // com.czhj.wire.okio.Timeout
    public boolean hasDeadline() {
        return this.f29778a.hasDeadline();
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f29778a = timeout;
        return this;
    }

    @Override // com.czhj.wire.okio.Timeout
    public void throwIfReached() throws IOException {
        this.f29778a.throwIfReached();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout timeout(long j2, TimeUnit timeUnit) {
        return this.f29778a.timeout(j2, timeUnit);
    }

    @Override // com.czhj.wire.okio.Timeout
    public long timeoutNanos() {
        return this.f29778a.timeoutNanos();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout deadlineNanoTime(long j2) {
        return this.f29778a.deadlineNanoTime(j2);
    }
}
