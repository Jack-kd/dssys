package W1;

/* loaded from: classes5.dex */
public class e {

    /* renamed from: e, reason: collision with root package name */
    public static final R1.c f666e = R1.b.a(e.class);

    /* renamed from: a, reason: collision with root package name */
    public Object f667a;

    /* renamed from: b, reason: collision with root package name */
    public long f668b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f669c = System.currentTimeMillis();

    /* renamed from: d, reason: collision with root package name */
    public a f670d;

    public e() {
        a aVar = new a();
        this.f670d = aVar;
        this.f667a = new Object();
        aVar.f673c = this;
    }

    public void b() {
        synchronized (this.f667a) {
            a aVar = this.f670d;
            aVar.f672b = aVar;
            aVar.f671a = aVar;
        }
    }

    public a c() {
        synchronized (this.f667a) {
            try {
                long j2 = this.f669c - this.f668b;
                a aVar = this.f670d;
                a aVar2 = aVar.f671a;
                if (aVar2 == aVar) {
                    return null;
                }
                if (aVar2.f675e > j2) {
                    return null;
                }
                aVar2.g();
                aVar2.f676f = true;
                return aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long d() {
        return this.f668b;
    }

    public long e() {
        return this.f669c;
    }

    public long f() {
        synchronized (this.f667a) {
            try {
                a aVar = this.f670d;
                a aVar2 = aVar.f671a;
                if (aVar2 == aVar) {
                    return -1L;
                }
                long j2 = (this.f668b + aVar2.f675e) - this.f669c;
                if (j2 < 0) {
                    j2 = 0;
                }
                return j2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g(a aVar) {
        h(aVar, 0L);
    }

    public void h(a aVar, long j2) {
        synchronized (this.f667a) {
            try {
                if (aVar.f675e != 0) {
                    aVar.g();
                    aVar.f675e = 0L;
                }
                aVar.f673c = this;
                aVar.f676f = false;
                aVar.f674d = j2;
                aVar.f675e = this.f669c + j2;
                a aVar2 = this.f670d.f672b;
                while (aVar2 != this.f670d && aVar2.f675e > aVar.f675e) {
                    aVar2 = aVar2.f672b;
                }
                aVar2.f(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void i(long j2) {
        this.f668b = j2;
    }

    public long j() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f669c = jCurrentTimeMillis;
        return jCurrentTimeMillis;
    }

    public void k(long j2) {
        this.f669c = j2;
    }

    public void l() {
        a aVar;
        long j2 = this.f669c - this.f668b;
        while (true) {
            try {
                synchronized (this.f667a) {
                    a aVar2 = this.f670d;
                    aVar = aVar2.f671a;
                    if (aVar != aVar2 && aVar.f675e <= j2) {
                        aVar.g();
                        aVar.f676f = true;
                        aVar.d();
                    }
                    return;
                }
                aVar.e();
            } catch (Throwable th) {
                f666e.c("EXCEPTION ", th);
            }
        }
    }

    public void m(long j2) {
        this.f669c = j2;
        l();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        for (a aVar = this.f670d.f671a; aVar != this.f670d; aVar = aVar.f671a) {
            stringBuffer.append("-->");
            stringBuffer.append(aVar);
        }
        return stringBuffer.toString();
    }

    public e(Object obj) {
        a aVar = new a();
        this.f670d = aVar;
        this.f667a = obj;
        aVar.f673c = this;
    }

    public static class a {

        /* renamed from: c, reason: collision with root package name */
        public e f673c;

        /* renamed from: d, reason: collision with root package name */
        public long f674d;

        /* renamed from: e, reason: collision with root package name */
        public long f675e = 0;

        /* renamed from: f, reason: collision with root package name */
        public boolean f676f = false;

        /* renamed from: b, reason: collision with root package name */
        public a f672b = this;

        /* renamed from: a, reason: collision with root package name */
        public a f671a = this;

        public void c() {
            e eVar = this.f673c;
            if (eVar != null) {
                synchronized (eVar.f667a) {
                    g();
                    this.f675e = 0L;
                }
            }
        }

        public final void f(a aVar) {
            a aVar2 = this.f671a;
            aVar2.f672b = aVar;
            this.f671a = aVar;
            aVar.f671a = aVar2;
            this.f671a.f672b = this;
        }

        public final void g() {
            a aVar = this.f671a;
            aVar.f672b = this.f672b;
            this.f672b.f671a = aVar;
            this.f672b = this;
            this.f671a = this;
            this.f676f = false;
        }

        public void d() {
        }

        public void e() {
        }
    }
}
