package org.eclipse.jetty.io.nio;

import L1.i;
import L1.j;
import W1.e;
import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.base.mta.PointCategory;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Locale;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.nio.f;

/* loaded from: classes5.dex */
public class SelectChannelEndPoint extends org.eclipse.jetty.io.nio.b implements L1.c, i {

    /* renamed from: B, reason: collision with root package name */
    public static final R1.c f52406B = R1.b.b("org.eclipse.jetty.io.nio");

    /* renamed from: A, reason: collision with root package name */
    public boolean f52407A;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f52408k;

    /* renamed from: l, reason: collision with root package name */
    public final f.d f52409l;

    /* renamed from: m, reason: collision with root package name */
    public final f f52410m;

    /* renamed from: n, reason: collision with root package name */
    public SelectionKey f52411n;

    /* renamed from: o, reason: collision with root package name */
    public final Runnable f52412o;

    /* renamed from: p, reason: collision with root package name */
    public int f52413p;

    /* renamed from: q, reason: collision with root package name */
    public volatile org.eclipse.jetty.io.nio.a f52414q;

    /* renamed from: r, reason: collision with root package name */
    public int f52415r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f52416s;

    /* renamed from: t, reason: collision with root package name */
    public volatile boolean f52417t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f52418u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f52419v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f52420w;

    /* renamed from: x, reason: collision with root package name */
    public volatile long f52421x;

    /* renamed from: y, reason: collision with root package name */
    public volatile boolean f52422y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f52423z;

    /* renamed from: org.eclipse.jetty.io.nio.SelectChannelEndPoint$3, reason: invalid class name */
    class AnonymousClass3 extends InterruptedIOException {
        final /* synthetic */ InterruptedException val$e;

        public AnonymousClass3(InterruptedException interruptedException) {
            this.val$e = interruptedException;
            initCause(interruptedException);
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SelectChannelEndPoint.this.B();
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ long f52425b;

        public b(long j2) {
            this.f52425b = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SelectChannelEndPoint.this.E(this.f52425b);
            } finally {
                SelectChannelEndPoint.this.G(true);
            }
        }
    }

    public SelectChannelEndPoint(SocketChannel socketChannel, f.d dVar, SelectionKey selectionKey, int i2) {
        super(socketChannel, i2);
        this.f52408k = System.getProperty("os.name").toLowerCase(Locale.ENGLISH).contains(PointCategory.WIN);
        this.f52412o = new a();
        this.f52417t = true;
        this.f52410m = dVar.i();
        this.f52409l = dVar;
        this.f52415r = 0;
        this.f52416s = false;
        this.f52420w = true;
        this.f52411n = selectionKey;
        G(true);
    }

    public f.d A() {
        return this.f52409l;
    }

    public void B() {
        boolean z2 = true;
        while (z2) {
            while (true) {
                try {
                    try {
                        org.eclipse.jetty.io.nio.a aVar = (org.eclipse.jetty.io.nio.a) this.f52414q.handle();
                        if (aVar == this.f52414q) {
                            try {
                                break;
                            } catch (Throwable th) {
                                if (z2) {
                                    boolean zH = H();
                                    while (!zH) {
                                        f52406B.g("SCEP.run() finally DISPATCHED", new Object[0]);
                                        zH = H();
                                    }
                                }
                                throw th;
                            }
                        }
                        f52406B.i("{} replaced {}", aVar, this.f52414q);
                        org.eclipse.jetty.io.nio.a aVar2 = this.f52414q;
                        this.f52414q = aVar;
                        this.f52410m.a0(this, aVar2);
                    } catch (IOException e2) {
                        f52406B.g(e2.toString(), new Object[0]);
                        try {
                            close();
                        } catch (IOException e3) {
                            f52406B.h(e3);
                        }
                        if (!this.f52407A && s() && isOpen()) {
                            this.f52407A = true;
                            try {
                                this.f52414q.c();
                            } finally {
                                try {
                                } finally {
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            f52406B.c("handle failed", th2);
                            try {
                                close();
                            } catch (IOException e4) {
                                f52406B.h(e4);
                            }
                            if (!this.f52407A && s() && isOpen()) {
                                this.f52407A = true;
                                try {
                                    this.f52414q.c();
                                } finally {
                                    try {
                                        f52406B.c("onInputShutdown failed", th);
                                        try {
                                            close();
                                        } catch (IOException e5) {
                                            f52406B.h(e5);
                                        }
                                    } finally {
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            if (!this.f52407A && s() && isOpen()) {
                                this.f52407A = true;
                                try {
                                    this.f52414q.c();
                                } finally {
                                    try {
                                        f52406B.c("onInputShutdown failed", th);
                                        try {
                                            close();
                                        } catch (IOException e6) {
                                            f52406B.h(e6);
                                        }
                                        boolean z3 = !H();
                                        throw th3;
                                    } finally {
                                    }
                                }
                            }
                            boolean z32 = !H();
                            throw th3;
                        }
                    }
                } catch (ClosedChannelException e7) {
                    f52406B.h(e7);
                    if (!this.f52407A && s() && isOpen()) {
                        this.f52407A = true;
                        try {
                            this.f52414q.c();
                        } finally {
                            try {
                                f52406B.c("onInputShutdown failed", th);
                                try {
                                    close();
                                } catch (IOException e8) {
                                    f52406B.h(e8);
                                }
                                I();
                            } finally {
                            }
                        }
                        I();
                    }
                } catch (EofException e9) {
                    f52406B.d("EOF", e9);
                    try {
                        close();
                    } catch (IOException e10) {
                        f52406B.h(e10);
                    }
                    if (!this.f52407A && s() && isOpen()) {
                        this.f52407A = true;
                        try {
                            this.f52414q.c();
                        } finally {
                            try {
                                f52406B.c("onInputShutdown failed", th);
                                try {
                                    close();
                                } catch (IOException e11) {
                                    f52406B.h(e11);
                                }
                            } finally {
                            }
                        }
                    }
                }
            }
            if (!this.f52407A && s() && isOpen()) {
                this.f52407A = true;
                try {
                    this.f52414q.c();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
            z2 = !H();
        }
        if (z2) {
            boolean zH2 = H();
            while (!zH2) {
                f52406B.g("SCEP.run() finally DISPATCHED", new Object[0]);
                zH2 = H();
            }
        }
    }

    public boolean C() {
        return this.f52422y;
    }

    public void D() {
        this.f52421x = System.currentTimeMillis();
    }

    public void E(long j2) {
        try {
            synchronized (this) {
                this.f52416s = true;
            }
            this.f52414q.a(j2);
            synchronized (this) {
                try {
                    this.f52416s = false;
                    if (this.f52415r == -1) {
                        e();
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                try {
                    this.f52416s = false;
                    if (this.f52415r == -1) {
                        e();
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public void F() {
        synchronized (this) {
            try {
                SelectionKey selectionKey = this.f52411n;
                if (selectionKey != null && selectionKey.isValid()) {
                    boolean z2 = this.f52418u;
                    if (!z2 && !this.f52419v) {
                        if ((this.f52411n.readyOps() & 4) == 4 && (this.f52411n.interestOps() & 4) == 4) {
                            int iInterestOps = this.f52411n.interestOps() & (-5);
                            this.f52413p = iInterestOps;
                            this.f52411n.interestOps(iInterestOps);
                            this.f52417t = true;
                        }
                        if (this.f52415r >= 1) {
                            this.f52411n.interestOps(0);
                        } else {
                            e();
                            if (this.f52415r >= 1 && !this.f52409l.i().d0()) {
                                this.f52411n.interestOps(0);
                            }
                        }
                        return;
                    }
                    if (z2 && this.f52411n.isReadable()) {
                        this.f52418u = false;
                    }
                    if (this.f52419v && this.f52411n.isWritable()) {
                        this.f52419v = false;
                    }
                    notifyAll();
                    this.f52411n.interestOps(0);
                    if (this.f52415r < 1) {
                        I();
                    }
                    return;
                }
                this.f52418u = false;
                this.f52419v = false;
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void G(boolean z2) {
        if (!z2) {
            this.f52422y = false;
        } else {
            this.f52421x = System.currentTimeMillis();
            this.f52422y = true;
        }
    }

    public boolean H() {
        synchronized (this) {
            try {
                if (this.f52415r == 2) {
                    this.f52415r = 1;
                    return false;
                }
                this.f52415r = 0;
                I();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void I() {
        boolean z2;
        synchronized (this) {
            try {
                int iInterestOps = -1;
                if (v().isOpen()) {
                    this.f52413p = ((this.f52430d.isInputShutdown() || !(this.f52418u || (this.f52415r < 1 && !this.f52414q.b()))) ? 0 : 1) | ((this.f52430d.isOutputShutdown() || !(this.f52419v || (this.f52415r < 1 && !this.f52417t))) ? 0 : 4);
                    try {
                        SelectionKey selectionKey = this.f52411n;
                        if (selectionKey != null && selectionKey.isValid()) {
                            iInterestOps = this.f52411n.interestOps();
                        }
                    } catch (Exception e2) {
                        this.f52411n = null;
                        f52406B.h(e2);
                    }
                }
                z2 = this.f52413p != iInterestOps;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            this.f52409l.c(this);
            this.f52409l.p();
        }
    }

    @Override // L1.i
    public void a(j jVar) {
        org.eclipse.jetty.io.nio.a aVar = this.f52414q;
        this.f52414q = (org.eclipse.jetty.io.nio.a) jVar;
        if (aVar == null || aVar == this.f52414q) {
            return;
        }
        this.f52410m.a0(this, aVar);
    }

    @Override // org.eclipse.jetty.io.nio.b, L1.k
    public void close() {
        if (this.f52408k) {
            try {
                SelectionKey selectionKey = this.f52411n;
                if (selectionKey != null) {
                    selectionKey.cancel();
                }
            } catch (Throwable th) {
                f52406B.h(th);
            }
        }
        try {
            try {
                super.close();
            } finally {
                I();
            }
        } catch (IOException e2) {
            f52406B.h(e2);
        }
    }

    @Override // L1.c
    public void e() {
        synchronized (this) {
            try {
                if (this.f52415r <= 0) {
                    if (this.f52416s) {
                        this.f52415r = -1;
                    } else {
                        this.f52415r = 1;
                        if (!this.f52410m.dispatch(this.f52412o)) {
                            this.f52415r = -1;
                            f52406B.g("Dispatched Failed! " + this + " to " + this.f52410m, new Object[0]);
                            I();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // L1.k
    public boolean f(long j2) {
        f.d dVar;
        synchronized (this) {
            if (o()) {
                throw new EofException();
            }
            long j3 = this.f52409l.j();
            long j4 = j3 + j2;
            boolean zC = C();
            G(true);
            try {
                this.f52419v = true;
                while (this.f52419v && !o()) {
                    try {
                        try {
                            I();
                            wait(j2 > 0 ? j4 - j3 : 10000L);
                            dVar = this.f52409l;
                        } catch (InterruptedException e2) {
                            f52406B.e(e2);
                            if (this.f52423z) {
                                throw new InterruptedIOException(e2) { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.4
                                    final /* synthetic */ InterruptedException val$e;

                                    {
                                        this.val$e = e2;
                                        initCause(e2);
                                    }
                                };
                            }
                            dVar = this.f52409l;
                        }
                        j3 = dVar.j();
                        if (this.f52419v && j2 > 0 && j3 >= j4) {
                            return false;
                        }
                    } catch (Throwable th) {
                        this.f52409l.j();
                        throw th;
                    }
                }
                return true;
            } finally {
                this.f52419v = false;
                G(zC);
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.b, L1.k
    public int g(L1.d dVar, L1.d dVar2, L1.d dVar3) {
        int iG = super.g(dVar, dVar2, dVar3);
        if (iG != 0 || ((dVar == null || !dVar.B0()) && ((dVar2 == null || !dVar2.B0()) && (dVar3 == null || !dVar3.B0())))) {
            if (iG > 0) {
                this.f52417t = true;
                D();
            }
            return iG;
        }
        synchronized (this) {
            try {
                this.f52417t = false;
                if (this.f52415r < 1) {
                    I();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iG;
    }

    @Override // L1.i
    public j getConnection() {
        return this.f52414q;
    }

    @Override // org.eclipse.jetty.io.nio.b, L1.k
    public int i(L1.d dVar) throws IOException {
        int i2 = super.i(dVar);
        if (i2 != 0 || dVar == null || !dVar.B0()) {
            if (i2 > 0) {
                this.f52417t = true;
                D();
            }
            return i2;
        }
        synchronized (this) {
            try {
                this.f52417t = false;
                if (this.f52415r < 1) {
                    I();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    @Override // L1.c
    public boolean k() {
        return false;
    }

    @Override // L1.k
    public void l(int i2) {
        this.f52433g = i2;
    }

    @Override // L1.c
    public void q() {
        synchronized (this) {
            try {
                int i2 = this.f52415r;
                if (i2 == -1 || i2 == 0) {
                    e();
                } else if (i2 == 1 || i2 == 2) {
                    this.f52415r = 2;
                }
            } finally {
            }
        }
    }

    @Override // L1.c
    public void r(e.a aVar, long j2) {
        A().n(aVar, j2);
    }

    @Override // org.eclipse.jetty.io.nio.b, L1.k
    public int t(L1.d dVar) throws Throwable {
        int iT = super.t(dVar);
        if (iT > 0) {
            D();
        }
        return iT;
    }

    public String toString() {
        SelectionKey selectionKey = this.f52411n;
        String str = "";
        if (selectionKey == null) {
            str = "-";
        } else if (selectionKey.isValid()) {
            if (selectionKey.isReadable()) {
                str = "" + t.f31269k;
            }
            if (selectionKey.isWritable()) {
                str = str + "w";
            }
        } else {
            str = "!";
        }
        return String.format("SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}", Integer.valueOf(hashCode()), this.f52430d.getRemoteSocketAddress(), this.f52430d.getLocalSocketAddress(), Integer.valueOf(this.f52415r), Boolean.valueOf(isOpen()), Boolean.valueOf(s()), Boolean.valueOf(o()), Boolean.valueOf(this.f52418u), Boolean.valueOf(this.f52419v), Boolean.valueOf(this.f52417t), Integer.valueOf(this.f52413p), str, this.f52414q);
    }

    public void y(long j2) {
        if (!C() || this.f52433g <= 0) {
            return;
        }
        long j3 = j2 - this.f52421x;
        if (j3 > this.f52433g) {
            G(false);
            this.f52410m.dispatch(new b(j3));
        }
    }

    public void z() {
        synchronized (this) {
            try {
                if (!v().isOpen()) {
                    SelectionKey selectionKey = this.f52411n;
                    if (selectionKey != null && selectionKey.isValid()) {
                        this.f52411n.cancel();
                    }
                    if (this.f52420w) {
                        this.f52420w = false;
                        this.f52409l.f(this);
                    }
                    this.f52411n = null;
                } else if (this.f52413p > 0) {
                    SelectionKey selectionKey2 = this.f52411n;
                    if (selectionKey2 != null && selectionKey2.isValid()) {
                        this.f52411n.interestOps(this.f52413p);
                    } else if (((SelectableChannel) v()).isRegistered()) {
                        I();
                    } else {
                        try {
                            this.f52411n = ((SelectableChannel) v()).register(this.f52409l.k(), this.f52413p, this);
                        } catch (Exception e2) {
                            f52406B.h(e2);
                            SelectionKey selectionKey3 = this.f52411n;
                            if (selectionKey3 != null && selectionKey3.isValid()) {
                                this.f52411n.cancel();
                            }
                            if (this.f52420w) {
                                this.f52409l.f(this);
                            }
                            this.f52420w = false;
                            this.f52411n = null;
                        }
                    }
                } else {
                    SelectionKey selectionKey4 = this.f52411n;
                    if (selectionKey4 == null || !selectionKey4.isValid()) {
                        this.f52411n = null;
                    } else {
                        this.f52411n.interestOps(0);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
