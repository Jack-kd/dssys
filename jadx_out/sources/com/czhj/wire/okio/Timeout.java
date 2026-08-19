package com.czhj.wire.okio;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class Timeout {
    public static final Timeout NONE = new Timeout() { // from class: com.czhj.wire.okio.Timeout.1
        @Override // com.czhj.wire.okio.Timeout
        public Timeout deadlineNanoTime(long j2) {
            return this;
        }

        @Override // com.czhj.wire.okio.Timeout
        public void throwIfReached() throws IOException {
        }

        @Override // com.czhj.wire.okio.Timeout
        public Timeout timeout(long j2, TimeUnit timeUnit) {
            return this;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private boolean f29852a;

    /* renamed from: b, reason: collision with root package name */
    private long f29853b;

    /* renamed from: c, reason: collision with root package name */
    private long f29854c;

    public static long a(long j2, long j3) {
        return (j2 != 0 && (j3 == 0 || j2 < j3)) ? j2 : j3;
    }

    public Timeout clearDeadline() {
        this.f29852a = false;
        return this;
    }

    public Timeout clearTimeout() {
        this.f29854c = 0L;
        return this;
    }

    public final Timeout deadline(long j2, TimeUnit timeUnit) {
        if (j2 > 0) {
            if (timeUnit != null) {
                return deadlineNanoTime(System.nanoTime() + timeUnit.toNanos(j2));
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("duration <= 0: " + j2);
    }

    public long deadlineNanoTime() {
        if (this.f29852a) {
            return this.f29853b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean hasDeadline() {
        return this.f29852a;
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f29852a && this.f29853b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public Timeout timeout(long j2, TimeUnit timeUnit) {
        if (j2 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f29854c = timeUnit.toNanos(j2);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j2);
    }

    public long timeoutNanos() {
        return this.f29854c;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedException, InterruptedIOException {
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j2 = jTimeoutNanos / C.MICROS_PER_SECOND;
                obj.wait(j2, (int) (jTimeoutNanos - (C.MICROS_PER_SECOND * j2)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public Timeout deadlineNanoTime(long j2) {
        this.f29852a = true;
        this.f29853b = j2;
        return this;
    }
}
