package O1;

import L1.d;
import L1.i;
import L1.j;
import L1.k;
import N1.f;
import R1.b;
import R1.c;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.io.EofException;

/* loaded from: classes5.dex */
public class a extends N1.a {

    /* renamed from: N, reason: collision with root package name */
    public static final c f402N = b.a(a.class);

    /* renamed from: K, reason: collision with root package name */
    public ServerSocket f403K;

    /* renamed from: M, reason: collision with root package name */
    public volatile int f405M = -1;

    /* renamed from: L, reason: collision with root package name */
    public final Set f404L = new HashSet();

    /* renamed from: O1.a$a, reason: collision with other inner class name */
    public class RunnableC0008a extends org.eclipse.jetty.io.bio.a implements Runnable, i {

        /* renamed from: k, reason: collision with root package name */
        public volatile j f406k;

        /* renamed from: l, reason: collision with root package name */
        public final Socket f407l;

        public RunnableC0008a(Socket socket) {
            super(socket, a.this.f240A);
            this.f406k = a.this.B0(this);
            this.f407l = socket;
        }

        @Override // org.eclipse.jetty.io.bio.a, L1.k
        public void close() throws IOException {
            if (this.f406k instanceof N1.c) {
                ((N1.c) this.f406k).r().b().a();
            }
            super.close();
        }

        public void e() throws IOException {
            if (a.this.u0() == null || !a.this.u0().dispatch(this)) {
                a.f402N.g("dispatch failed for {}", this.f406k);
                close();
            }
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            try {
                try {
                    try {
                        try {
                            try {
                                a.this.h0(this.f406k);
                                synchronized (a.this.f404L) {
                                    a.this.f404L.add(this);
                                }
                                while (a.this.isStarted() && !v()) {
                                    if (this.f406k.isIdle() && a.this.r()) {
                                        l(a.this.r0());
                                    }
                                    this.f406k = this.f406k.handle();
                                }
                                a.this.g0(this.f406k);
                                synchronized (a.this.f404L) {
                                    a.this.f404L.remove(this);
                                }
                                if (this.f407l.isClosed()) {
                                    return;
                                }
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                int iB = b();
                                this.f407l.setSoTimeout(b());
                                while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis < iB) {
                                }
                                if (this.f407l.isClosed()) {
                                    return;
                                }
                                this.f407l.close();
                            } catch (EofException e2) {
                                a.f402N.d("EOF", e2);
                                try {
                                    close();
                                } catch (IOException e3) {
                                    a.f402N.h(e3);
                                }
                                a.this.g0(this.f406k);
                                synchronized (a.this.f404L) {
                                    a.this.f404L.remove(this);
                                    if (this.f407l.isClosed()) {
                                        return;
                                    }
                                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                                    int iB2 = b();
                                    this.f407l.setSoTimeout(b());
                                    while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis2 < iB2) {
                                    }
                                    if (this.f407l.isClosed()) {
                                        return;
                                    }
                                    this.f407l.close();
                                }
                            }
                        } catch (Exception e4) {
                            a.f402N.c("handle failed?", e4);
                            try {
                                close();
                            } catch (IOException e5) {
                                a.f402N.h(e5);
                            }
                            a.this.g0(this.f406k);
                            synchronized (a.this.f404L) {
                                a.this.f404L.remove(this);
                                if (this.f407l.isClosed()) {
                                    return;
                                }
                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                int iB3 = b();
                                this.f407l.setSoTimeout(b());
                                while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis3 < iB3) {
                                }
                                if (this.f407l.isClosed()) {
                                    return;
                                }
                                this.f407l.close();
                            }
                        }
                    } catch (IOException e6) {
                        a.f402N.h(e6);
                    }
                } catch (SocketException e7) {
                    a.f402N.d("EOF", e7);
                    try {
                        close();
                    } catch (IOException e8) {
                        a.f402N.h(e8);
                    }
                    a.this.g0(this.f406k);
                    synchronized (a.this.f404L) {
                        a.this.f404L.remove(this);
                        if (this.f407l.isClosed()) {
                            return;
                        }
                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                        int iB4 = b();
                        this.f407l.setSoTimeout(b());
                        while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis4 < iB4) {
                        }
                        if (this.f407l.isClosed()) {
                            return;
                        }
                        this.f407l.close();
                    }
                } catch (HttpException e9) {
                    a.f402N.d("BAD", e9);
                    try {
                        close();
                    } catch (IOException e10) {
                        a.f402N.h(e10);
                    }
                    a.this.g0(this.f406k);
                    synchronized (a.this.f404L) {
                        a.this.f404L.remove(this);
                        if (this.f407l.isClosed()) {
                            return;
                        }
                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                        int iB5 = b();
                        this.f407l.setSoTimeout(b());
                        while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis5 < iB5) {
                        }
                        if (this.f407l.isClosed()) {
                            return;
                        }
                        this.f407l.close();
                    }
                }
            } catch (Throwable th) {
                a.this.g0(this.f406k);
                synchronized (a.this.f404L) {
                    a.this.f404L.remove(this);
                    try {
                        if (!this.f407l.isClosed()) {
                            long jCurrentTimeMillis6 = System.currentTimeMillis();
                            int iB6 = b();
                            this.f407l.setSoTimeout(b());
                            while (this.f407l.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis6 < iB6) {
                            }
                            if (!this.f407l.isClosed()) {
                                this.f407l.close();
                            }
                        }
                    } catch (IOException e11) {
                        a.f402N.h(e11);
                    }
                    throw th;
                }
            }
        }

        @Override // org.eclipse.jetty.io.bio.b, L1.k
        public int t(d dVar) throws IOException {
            int iT = super.t(dVar);
            if (iT < 0) {
                if (!s()) {
                    h();
                }
                if (o()) {
                    close();
                }
            }
            return iT;
        }
    }

    public j B0(k kVar) {
        return new f(this, kVar, c());
    }

    public ServerSocket C0(String str, int i2, int i3) {
        return str == null ? new ServerSocket(i2, i3) : new ServerSocket(i2, i3, InetAddress.getByName(str));
    }

    @Override // N1.a
    public void a0(int i2) throws IOException {
        Socket socketAccept = this.f403K.accept();
        f0(socketAccept);
        new RunnableC0008a(socketAccept).e();
    }

    @Override // N1.g
    public void close() throws IOException {
        ServerSocket serverSocket = this.f403K;
        if (serverSocket != null) {
            serverSocket.close();
        }
        this.f403K = null;
        this.f405M = -2;
    }

    @Override // N1.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        this.f404L.clear();
        super.doStart();
    }

    @Override // N1.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() throws IOException {
        super.doStop();
        HashSet hashSet = new HashSet();
        synchronized (this.f404L) {
            hashSet.addAll(this.f404L);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((RunnableC0008a) ((k) it.next())).close();
        }
    }

    @Override // N1.a, N1.g
    public void f(k kVar, N1.k kVar2) throws SocketException, UnknownHostException {
        ((RunnableC0008a) kVar).l(r() ? this.f241B : this.f240A);
        super.f(kVar, kVar2);
    }

    @Override // N1.g
    public Object getConnection() {
        return this.f403K;
    }

    @Override // N1.g
    public int getLocalPort() {
        return this.f405M;
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) throws IOException {
        super.m(appendable, str);
        HashSet hashSet = new HashSet();
        synchronized (this.f404L) {
            hashSet.addAll(this.f404L);
        }
        org.eclipse.jetty.util.component.b.S(appendable, str, hashSet);
    }

    @Override // N1.g
    public void open() throws SocketException {
        ServerSocket serverSocket = this.f403K;
        if (serverSocket == null || serverSocket.isClosed()) {
            this.f403K = C0(getHost(), s0(), i0());
        }
        this.f403K.setReuseAddress(t0());
        this.f405M = this.f403K.getLocalPort();
        if (this.f405M > 0) {
            return;
        }
        throw new IllegalStateException("port not allocated for " + this);
    }
}
