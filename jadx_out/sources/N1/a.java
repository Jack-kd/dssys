package N1;

import com.meishu.sdk.core.utils.MsAdPatternType;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EofException;

/* loaded from: classes5.dex */
public abstract class a extends org.eclipse.jetty.util.component.b implements org.eclipse.jetty.http.d, g, org.eclipse.jetty.util.component.e {

    /* renamed from: J, reason: collision with root package name */
    public static final R1.c f239J = R1.b.a(a.class);

    /* renamed from: D, reason: collision with root package name */
    public transient Thread[] f243D;

    /* renamed from: I, reason: collision with root package name */
    public final org.eclipse.jetty.http.e f248I;

    /* renamed from: e, reason: collision with root package name */
    public String f249e;

    /* renamed from: f, reason: collision with root package name */
    public m f250f;

    /* renamed from: g, reason: collision with root package name */
    public W1.d f251g;

    /* renamed from: h, reason: collision with root package name */
    public String f252h;

    /* renamed from: q, reason: collision with root package name */
    public boolean f261q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f262r;

    /* renamed from: s, reason: collision with root package name */
    public String f263s;

    /* renamed from: x, reason: collision with root package name */
    public String f268x;

    /* renamed from: y, reason: collision with root package name */
    public String f269y;

    /* renamed from: i, reason: collision with root package name */
    public int f253i = 0;

    /* renamed from: j, reason: collision with root package name */
    public String f254j = "https";

    /* renamed from: k, reason: collision with root package name */
    public int f255k = 0;

    /* renamed from: l, reason: collision with root package name */
    public String f256l = "https";

    /* renamed from: m, reason: collision with root package name */
    public int f257m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f258n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f259o = 1;

    /* renamed from: p, reason: collision with root package name */
    public int f260p = 0;

    /* renamed from: t, reason: collision with root package name */
    public String f264t = "X-Forwarded-Host";

    /* renamed from: u, reason: collision with root package name */
    public String f265u = "X-Forwarded-Server";

    /* renamed from: v, reason: collision with root package name */
    public String f266v = "X-Forwarded-For";

    /* renamed from: w, reason: collision with root package name */
    public String f267w = "X-Forwarded-Proto";

    /* renamed from: z, reason: collision with root package name */
    public boolean f270z = true;

    /* renamed from: A, reason: collision with root package name */
    public int f240A = MsAdPatternType.MIX_RENDER;

    /* renamed from: B, reason: collision with root package name */
    public int f241B = -1;

    /* renamed from: C, reason: collision with root package name */
    public int f242C = -1;

    /* renamed from: E, reason: collision with root package name */
    public final AtomicLong f244E = new AtomicLong(-1);

    /* renamed from: F, reason: collision with root package name */
    public final V1.a f245F = new V1.a();

    /* renamed from: G, reason: collision with root package name */
    public final V1.b f246G = new V1.b();

    /* renamed from: H, reason: collision with root package name */
    public final V1.b f247H = new V1.b();

    /* renamed from: N1.a$a, reason: collision with other inner class name */
    public class RunnableC0006a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public int f271b;

        public RunnableC0006a(int i2) {
            this.f271b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            synchronized (a.this) {
                try {
                    if (a.this.f243D == null) {
                        return;
                    }
                    a.this.f243D[this.f271b] = threadCurrentThread;
                    String name = a.this.f243D[this.f271b].getName();
                    threadCurrentThread.setName(name + " Acceptor" + this.f271b + " " + a.this);
                    int priority = threadCurrentThread.getPriority();
                    try {
                        threadCurrentThread.setPriority(priority - a.this.f260p);
                        while (a.this.isRunning() && a.this.getConnection() != null) {
                            try {
                                try {
                                    try {
                                        a.this.a0(this.f271b);
                                    } catch (InterruptedException e2) {
                                        a.f239J.h(e2);
                                    }
                                } catch (IOException e3) {
                                    a.f239J.h(e3);
                                }
                            } catch (EofException e4) {
                                a.f239J.h(e4);
                            } catch (Throwable th) {
                                a.f239J.e(th);
                            }
                        }
                        threadCurrentThread.setPriority(priority);
                        threadCurrentThread.setName(name);
                        synchronized (a.this) {
                            try {
                                if (a.this.f243D != null) {
                                    a.this.f243D[this.f271b] = null;
                                }
                            } finally {
                            }
                        }
                    } catch (Throwable th2) {
                        threadCurrentThread.setPriority(priority);
                        threadCurrentThread.setName(name);
                        synchronized (a.this) {
                            try {
                                if (a.this.f243D != null) {
                                    a.this.f243D[this.f271b] = null;
                                }
                                throw th2;
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public a() {
        org.eclipse.jetty.http.e eVar = new org.eclipse.jetty.http.e();
        this.f248I = eVar;
        P(eVar);
    }

    @Override // N1.g
    public final int D() {
        return r0();
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers H() {
        return this.f248I.H();
    }

    @Override // N1.g
    public void a(m mVar) {
        this.f250f = mVar;
    }

    public abstract void a0(int i2);

    @Override // N1.g
    public int b() {
        return this.f240A;
    }

    @Override // N1.g
    public m c() {
        return this.f250f;
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        if (this.f250f == null) {
            throw new IllegalStateException("No server");
        }
        open();
        if (this.f251g == null) {
            W1.d dVarM0 = this.f250f.m0();
            this.f251g = dVarM0;
            Q(dVarM0, false);
        }
        super.doStart();
        synchronized (this) {
            try {
                this.f243D = new Thread[j0()];
                for (int i2 = 0; i2 < this.f243D.length; i2++) {
                    if (!this.f251g.dispatch(new RunnableC0006a(i2))) {
                        throw new IllegalStateException("!accepting");
                    }
                }
                if (this.f251g.isLowOnThreads()) {
                    f239J.g("insufficient threads configured for {}", this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f239J.k("Started {}", this);
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        Thread[] threadArr;
        try {
            close();
        } catch (IOException e2) {
            f239J.e(e2);
        }
        super.doStop();
        synchronized (this) {
            threadArr = this.f243D;
            this.f243D = null;
        }
        if (threadArr != null) {
            for (Thread thread : threadArr) {
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
    }

    public void e0(L1.k kVar, k kVar2) throws UnknownHostException {
        String strT;
        String strT2;
        org.eclipse.jetty.http.g gVarS = kVar2.d().s();
        if (k0() != null && (strT2 = gVarS.t(k0())) != null) {
            kVar2.F("javax.servlet.request.cipher_suite", strT2);
        }
        if (p0() != null && (strT = gVarS.t(p0())) != null) {
            kVar2.F("javax.servlet.request.ssl_session_id", strT);
            kVar2.W("https");
        }
        String strQ0 = q0(gVarS, m0());
        String strQ02 = q0(gVarS, o0());
        String strQ03 = q0(gVarS, l0());
        String strQ04 = q0(gVarS, n0());
        String str = this.f263s;
        InetAddress byName = null;
        if (str != null) {
            gVarS.w(org.eclipse.jetty.http.j.f52266e, str);
            kVar2.X(null);
            kVar2.Y(-1);
            kVar2.p();
        } else if (strQ0 != null) {
            gVarS.w(org.eclipse.jetty.http.j.f52266e, strQ0);
            kVar2.X(null);
            kVar2.Y(-1);
            kVar2.p();
        } else if (strQ02 != null) {
            kVar2.X(strQ02);
        }
        if (strQ03 != null) {
            kVar2.R(strQ03);
            if (this.f261q) {
                try {
                    byName = InetAddress.getByName(strQ03);
                } catch (UnknownHostException e2) {
                    f239J.h(e2);
                }
            }
            if (byName != null) {
                strQ03 = byName.getHostName();
            }
            kVar2.S(strQ03);
        }
        if (strQ04 != null) {
            kVar2.W(strQ04);
        }
    }

    @Override // N1.g
    public void f(L1.k kVar, k kVar2) throws UnknownHostException {
        if (v0()) {
            e0(kVar, kVar2);
        }
    }

    public void f0(Socket socket) throws SocketException {
        try {
            socket.setTcpNoDelay(true);
            int i2 = this.f242C;
            if (i2 >= 0) {
                socket.setSoLinger(true, i2 / 1000);
            } else {
                socket.setSoLinger(false, 0);
            }
        } catch (Exception e2) {
            f239J.h(e2);
        }
    }

    public void g0(L1.j jVar) {
        jVar.onClose();
        if (this.f244E.get() == -1) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - jVar.d();
        this.f246G.a(jVar instanceof c ? ((c) jVar).t() : 0);
        this.f245F.b();
        this.f247H.a(jCurrentTimeMillis);
    }

    @Override // N1.g
    public String getHost() {
        return this.f252h;
    }

    @Override // N1.g
    public String getName() {
        if (this.f249e == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getHost() == null ? "0.0.0.0" : getHost());
            sb.append(":");
            sb.append(getLocalPort() <= 0 ? s0() : getLocalPort());
            this.f249e = sb.toString();
        }
        return this.f249e;
    }

    @Override // N1.g
    public boolean h() {
        return this.f261q;
    }

    public void h0(L1.j jVar) {
        if (this.f244E.get() == -1) {
            return;
        }
        this.f245F.c();
    }

    public int i0() {
        return this.f258n;
    }

    public int j0() {
        return this.f259o;
    }

    public String k0() {
        return this.f268x;
    }

    public String l0() {
        return this.f266v;
    }

    public String m0() {
        return this.f264t;
    }

    public String n0() {
        return this.f267w;
    }

    public String o0() {
        return this.f265u;
    }

    public String p0() {
        return this.f269y;
    }

    public String q0(org.eclipse.jetty.http.g gVar, String str) {
        String strT;
        if (str == null || (strT = gVar.t(str)) == null) {
            return null;
        }
        int iIndexOf = strT.indexOf(44);
        return iIndexOf == -1 ? strT : strT.substring(0, iIndexOf);
    }

    @Override // N1.g
    public boolean r() {
        W1.d dVar = this.f251g;
        return dVar != null ? dVar.isLowOnThreads() : this.f250f.m0().isLowOnThreads();
    }

    public int r0() {
        return this.f241B;
    }

    @Override // N1.g
    public boolean s(k kVar) {
        return this.f262r && kVar.o().equalsIgnoreCase("https");
    }

    public int s0() {
        return this.f253i;
    }

    public boolean t0() {
        return this.f270z;
    }

    public String toString() {
        return String.format("%s@%s:%d", getClass().getSimpleName(), getHost() == null ? "0.0.0.0" : getHost(), Integer.valueOf(getLocalPort() <= 0 ? s0() : getLocalPort()));
    }

    public W1.d u0() {
        return this.f251g;
    }

    public boolean v0() {
        return this.f262r;
    }

    public void w0(String str) {
        this.f252h = str;
    }

    public void x0(int i2) {
        this.f253i = i2;
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers z() {
        return this.f248I.z();
    }

    @Override // N1.g
    public void v(L1.k kVar) {
    }
}
