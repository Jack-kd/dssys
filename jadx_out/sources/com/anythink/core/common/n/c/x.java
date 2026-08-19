package com.anythink.core.common.n.c;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class x {

    /* renamed from: c, reason: collision with root package name */
    public static final x f7140c = new x() { // from class: com.anythink.core.common.n.c.x.1
        @Override // com.anythink.core.common.n.c.x
        public final x a(long j2) {
            return this;
        }

        @Override // com.anythink.core.common.n.c.x
        public final void g() {
        }

        @Override // com.anythink.core.common.n.c.x
        public final x a(long j2, TimeUnit timeUnit) {
            return this;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private boolean f7141a;

    /* renamed from: b, reason: collision with root package name */
    private long f7142b;

    /* renamed from: d, reason: collision with root package name */
    private long f7143d;

    private static long a(long j2, long j3) {
        return (j2 != 0 && (j3 == 0 || j2 < j3)) ? j2 : j3;
    }

    private x b(long j2, TimeUnit timeUnit) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("duration <= 0: ".concat(String.valueOf(j2)));
        }
        if (timeUnit != null) {
            return a(System.nanoTime() + timeUnit.toNanos(j2));
        }
        throw new IllegalArgumentException("unit == null");
    }

    public boolean b_() {
        return this.f7141a;
    }

    public long c_() {
        if (this.f7141a) {
            return this.f7142b;
        }
        throw new IllegalStateException("No deadline");
    }

    public x d_() {
        this.f7143d = 0L;
        return this;
    }

    public long e_() {
        return this.f7143d;
    }

    public x f() {
        this.f7141a = false;
        return this;
    }

    public void g() throws InterruptedIOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f7141a && this.f7142b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public x a(long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException("timeout < 0: ".concat(String.valueOf(j2)));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f7143d = timeUnit.toNanos(j2);
        return this;
    }

    public x a(long j2) {
        this.f7141a = true;
        this.f7142b = j2;
        return this;
    }

    private void a(Object obj) throws InterruptedException, InterruptedIOException {
        try {
            boolean zB_ = b_();
            long jE_ = e_();
            long jNanoTime = 0;
            if (!zB_ && jE_ == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zB_ && jE_ != 0) {
                jE_ = Math.min(jE_, c_() - jNanoTime2);
            } else if (zB_) {
                jE_ = c_() - jNanoTime2;
            }
            if (jE_ > 0) {
                long j2 = jE_ / C.MICROS_PER_SECOND;
                obj.wait(j2, (int) (jE_ - (C.MICROS_PER_SECOND * j2)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jE_) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }
}
