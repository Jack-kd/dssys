package L1;

import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class b implements j {

    /* renamed from: d, reason: collision with root package name */
    public static final R1.c f219d = R1.b.a(b.class);

    /* renamed from: b, reason: collision with root package name */
    public final long f220b;

    /* renamed from: c, reason: collision with root package name */
    public final k f221c;

    public b(k kVar) {
        this.f221c = kVar;
        this.f220b = System.currentTimeMillis();
    }

    @Override // L1.j
    public void a(long j2) {
        try {
            f219d.i("onIdleExpired {}ms {} {}", Long.valueOf(j2), this, this.f221c);
            if (!this.f221c.s() && !this.f221c.o()) {
                this.f221c.j();
                return;
            }
            this.f221c.close();
        } catch (IOException e2) {
            f219d.h(e2);
            try {
                this.f221c.close();
            } catch (IOException e3) {
                f219d.h(e3);
            }
        }
    }

    @Override // L1.j
    public long d() {
        return this.f220b;
    }

    public k e() {
        return this.f221c;
    }

    public String toString() {
        return String.format("%s@%x", getClass().getSimpleName(), Integer.valueOf(hashCode()));
    }

    public b(k kVar, long j2) {
        this.f221c = kVar;
        this.f220b = j2;
    }
}
