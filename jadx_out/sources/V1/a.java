package V1;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f622a = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f623b = new AtomicLong();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicLong f624c = new AtomicLong();

    public void a(long j2) {
        long jAddAndGet = this.f623b.addAndGet(j2);
        if (j2 > 0) {
            this.f624c.addAndGet(j2);
        }
        org.eclipse.jetty.util.a.a(this.f622a, jAddAndGet);
    }

    public void b() {
        a(-1L);
    }

    public void c() {
        a(1L);
    }
}
