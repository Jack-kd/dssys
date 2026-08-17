package org.eclipse.jetty.http;

import java.io.IOException;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EofException;

/* loaded from: classes5.dex */
public abstract class a implements c {

    /* renamed from: t, reason: collision with root package name */
    public static final R1.c f52140t = R1.b.a(a.class);

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f52141u = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    public final Buffers f52142a;

    /* renamed from: b, reason: collision with root package name */
    public final L1.k f52143b;

    /* renamed from: f, reason: collision with root package name */
    public L1.d f52147f;

    /* renamed from: g, reason: collision with root package name */
    public L1.d f52148g;

    /* renamed from: h, reason: collision with root package name */
    public String f52149h;

    /* renamed from: o, reason: collision with root package name */
    public L1.d f52156o;

    /* renamed from: p, reason: collision with root package name */
    public L1.d f52157p;

    /* renamed from: q, reason: collision with root package name */
    public L1.d f52158q;

    /* renamed from: r, reason: collision with root package name */
    public L1.d f52159r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f52160s;

    /* renamed from: c, reason: collision with root package name */
    public int f52144c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f52145d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f52146e = 11;

    /* renamed from: i, reason: collision with root package name */
    public long f52150i = 0;

    /* renamed from: j, reason: collision with root package name */
    public long f52151j = -3;

    /* renamed from: k, reason: collision with root package name */
    public boolean f52152k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f52153l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f52154m = false;

    /* renamed from: n, reason: collision with root package name */
    public Boolean f52155n = null;

    public a(Buffers buffers, L1.k kVar) {
        this.f52142a = buffers;
        this.f52143b = kVar;
    }

    @Override // org.eclipse.jetty.http.c
    public void a() {
        L1.d dVar = this.f52157p;
        if (dVar != null && dVar.length() == 0) {
            this.f52142a.b(this.f52157p);
            this.f52157p = null;
        }
        L1.d dVar2 = this.f52156o;
        if (dVar2 == null || dVar2.length() != 0) {
            return;
        }
        this.f52142a.b(this.f52156o);
        this.f52156o = null;
    }

    @Override // org.eclipse.jetty.http.c
    public boolean b() {
        return this.f52144c == 4;
    }

    @Override // org.eclipse.jetty.http.c
    public void c(boolean z2) {
        this.f52155n = Boolean.valueOf(z2);
    }

    @Override // org.eclipse.jetty.http.c
    public void complete() {
        if (this.f52144c == 0) {
            throw new IllegalStateException("State==HEADER");
        }
        long j2 = this.f52151j;
        if (j2 < 0 || j2 == this.f52150i || this.f52153l) {
            return;
        }
        R1.c cVar = f52140t;
        if (cVar.f()) {
            cVar.i("ContentLength written==" + this.f52150i + " != contentLength==" + this.f52151j, new Object[0]);
        }
        this.f52155n = Boolean.FALSE;
    }

    @Override // org.eclipse.jetty.http.c
    public void d(int i2, String str) {
        if (this.f52144c != 0) {
            throw new IllegalStateException("STATE!=START");
        }
        this.f52148g = null;
        this.f52145d = i2;
        if (str != null) {
            byte[] bArrC = org.eclipse.jetty.util.m.c(str);
            int length = bArrC.length;
            if (length > 1024) {
                length = 1024;
            }
            this.f52147f = new L1.h(length);
            for (int i3 = 0; i3 < length; i3++) {
                byte b3 = bArrC[i3];
                if (b3 == 13 || b3 == 10) {
                    this.f52147f.put((byte) 32);
                } else {
                    this.f52147f.put(b3);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.http.c
    public boolean e() {
        return this.f52144c != 0;
    }

    @Override // org.eclipse.jetty.http.c
    public void f() {
        if (this.f52144c >= 3) {
            throw new IllegalStateException("Flushed");
        }
        this.f52152k = false;
        this.f52155n = null;
        this.f52150i = 0L;
        this.f52151j = -3L;
        this.f52158q = null;
        L1.d dVar = this.f52157p;
        if (dVar != null) {
            dVar.clear();
        }
    }

    @Override // org.eclipse.jetty.http.c
    public void h(boolean z2) {
        this.f52153l = z2;
    }

    @Override // org.eclipse.jetty.http.c
    public void i(L1.d dVar) {
        this.f52159r = dVar;
    }

    @Override // org.eclipse.jetty.http.c
    public boolean isIdle() {
        return this.f52144c == 0 && this.f52148g == null && this.f52145d == 0;
    }

    @Override // org.eclipse.jetty.http.c
    public boolean isPersistent() {
        Boolean bool = this.f52155n;
        return bool != null ? bool.booleanValue() : v() || this.f52146e > 10;
    }

    @Override // org.eclipse.jetty.http.c
    public void j(boolean z2) {
        this.f52160s = z2;
    }

    @Override // org.eclipse.jetty.http.c
    public boolean k() {
        long j2 = this.f52151j;
        return j2 >= 0 && this.f52150i >= j2;
    }

    @Override // org.eclipse.jetty.http.c
    public abstract int l();

    @Override // org.eclipse.jetty.http.c
    public abstract void m(g gVar, boolean z2);

    @Override // org.eclipse.jetty.http.c
    public void n(int i2, String str, String str2, boolean z2) {
        if (z2) {
            this.f52155n = Boolean.FALSE;
        }
        if (e()) {
            f52140t.i("sendError on committed: {} {}", Integer.valueOf(i2), str);
            return;
        }
        f52140t.i("sendError: {} {}", Integer.valueOf(i2), str);
        d(i2, str);
        if (str2 != null) {
            m(null, false);
            g(new L1.l(new L1.h(str2)), true);
        } else if (i2 >= 400) {
            m(null, false);
            StringBuilder sb = new StringBuilder();
            sb.append("Error: ");
            if (str == null) {
                str = "" + i2;
            }
            sb.append(str);
            g(new L1.l(new L1.h(sb.toString())), true);
        } else {
            m(null, true);
        }
        complete();
    }

    @Override // org.eclipse.jetty.http.c
    public void o(long j2) {
        if (j2 < 0) {
            this.f52151j = -3L;
        } else {
            this.f52151j = j2;
        }
    }

    public void p(long j2) throws IOException {
        if (this.f52143b.c()) {
            try {
                l();
                return;
            } catch (IOException e2) {
                this.f52143b.close();
                throw e2;
            }
        }
        if (this.f52143b.f(j2)) {
            l();
        } else {
            this.f52143b.close();
            throw new EofException("timeout");
        }
    }

    public void q() {
        if (this.f52154m) {
            L1.d dVar = this.f52157p;
            if (dVar != null) {
                dVar.clear();
                return;
            }
            return;
        }
        this.f52150i += this.f52157p.length();
        if (this.f52153l) {
            this.f52157p.clear();
        }
    }

    public void r(long j2) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = j2 + jCurrentTimeMillis;
        L1.d dVar = this.f52158q;
        L1.d dVar2 = this.f52157p;
        if ((dVar == null || dVar.length() <= 0) && ((dVar2 == null || dVar2.length() <= 0) && !u())) {
            return;
        }
        l();
        while (jCurrentTimeMillis < j3) {
            if ((dVar == null || dVar.length() <= 0) && (dVar2 == null || dVar2.length() <= 0)) {
                return;
            }
            if (!this.f52143b.isOpen() || this.f52143b.o()) {
                throw new EofException();
            }
            p(j3 - jCurrentTimeMillis);
            jCurrentTimeMillis = System.currentTimeMillis();
        }
    }

    @Override // org.eclipse.jetty.http.c
    public void reset() {
        this.f52144c = 0;
        this.f52145d = 0;
        this.f52146e = 11;
        this.f52147f = null;
        this.f52152k = false;
        this.f52153l = false;
        this.f52154m = false;
        this.f52155n = null;
        this.f52150i = 0L;
        this.f52151j = -3L;
        this.f52159r = null;
        this.f52158q = null;
        this.f52148g = null;
    }

    public boolean s() {
        return this.f52160s;
    }

    @Override // org.eclipse.jetty.http.c
    public void setVersion(int i2) {
        if (this.f52144c != 0) {
            throw new IllegalStateException("STATE!=START " + this.f52144c);
        }
        this.f52146e = i2;
        if (i2 != 9 || this.f52148g == null) {
            return;
        }
        this.f52154m = true;
    }

    public L1.d t() {
        return this.f52157p;
    }

    public boolean u() {
        L1.d dVar = this.f52157p;
        if (dVar == null || dVar.f0() != 0) {
            L1.d dVar2 = this.f52158q;
            return dVar2 != null && dVar2.length() > 0;
        }
        if (this.f52157p.length() == 0 && !this.f52157p.s0()) {
            this.f52157p.u0();
        }
        return this.f52157p.f0() == 0;
    }

    public abstract boolean v();

    public boolean w(int i2) {
        return this.f52144c == i2;
    }

    public boolean x() {
        return this.f52150i > 0;
    }

    public abstract int y();

    public void z(String str, String str2) {
        if (str == null || "GET".equals(str)) {
            this.f52148g = k.f52298b;
        } else {
            this.f52148g = k.f52297a.h(str);
        }
        this.f52149h = str2;
        if (this.f52146e == 9) {
            this.f52154m = true;
        }
    }
}
