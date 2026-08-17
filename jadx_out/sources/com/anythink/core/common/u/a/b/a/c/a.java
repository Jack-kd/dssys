package com.anythink.core.common.u.a.b.a.c;

import com.anythink.core.common.u.a.b.a.b;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class a<T extends b> {

    /* renamed from: c, reason: collision with root package name */
    private final InterfaceC0082a<T> f7798c;

    /* renamed from: d, reason: collision with root package name */
    private final float f7799d = 1.5f;

    /* renamed from: e, reason: collision with root package name */
    private final int f7800e = 20;

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f7801f = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    private int f7797b = 5;

    /* renamed from: a, reason: collision with root package name */
    private final Queue<T> f7796a = new ConcurrentLinkedQueue();

    /* renamed from: com.anythink.core.common.u.a.b.a.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0082a<T extends b> {
        T a();
    }

    public a(InterfaceC0082a<T> interfaceC0082a) {
        this.f7798c = interfaceC0082a;
    }

    private void b() {
        int iMin;
        synchronized (this) {
            try {
                double d2 = this.f7801f.get();
                int i2 = this.f7797b;
                if (d2 > i2 * 0.8d && (iMin = Math.min((int) (i2 * 1.5f), 20)) > this.f7797b) {
                    this.f7797b = iMin;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final T a() {
        int iMin;
        T tPoll = this.f7796a.poll();
        if (tPoll == null) {
            tPoll = (T) this.f7798c.a();
        }
        this.f7801f.incrementAndGet();
        synchronized (this) {
            try {
                double d2 = this.f7801f.get();
                int i2 = this.f7797b;
                if (d2 > i2 * 0.8d && (iMin = Math.min((int) (i2 * 1.5f), 20)) > this.f7797b) {
                    this.f7797b = iMin;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tPoll;
    }

    public final void a(T t2) {
        if (t2 != null) {
            t2.c();
            if (this.f7796a.size() < this.f7797b) {
                t2.c();
                this.f7796a.offer(t2);
            }
            this.f7801f.decrementAndGet();
        }
    }
}
