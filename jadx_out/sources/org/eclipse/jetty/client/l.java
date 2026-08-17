package org.eclipse.jetty.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import javax.net.SocketFactory;
import org.eclipse.jetty.client.g;

/* loaded from: classes5.dex */
public class l extends org.eclipse.jetty.util.component.a implements g.b {

    /* renamed from: c, reason: collision with root package name */
    public static final R1.c f52130c = R1.b.a(l.class);

    /* renamed from: b, reason: collision with root package name */
    public final g f52131b;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ org.eclipse.jetty.client.a f52132b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ HttpDestination f52133c;

        public a(org.eclipse.jetty.client.a aVar, HttpDestination httpDestination) {
            this.f52132b = aVar;
            this.f52133c = httpDestination;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    try {
                        L1.j jVar = this.f52132b;
                        while (true) {
                            L1.j jVarHandle = jVar.handle();
                            if (jVarHandle == jVar) {
                                this.f52133c.s(this.f52132b, true);
                                return;
                            }
                            jVar = jVarHandle;
                        }
                    } catch (IOException e2) {
                        l.f52130c.a(e2);
                    }
                } catch (IOException e3) {
                    if (e3 instanceof InterruptedIOException) {
                        l.f52130c.h(e3);
                    } else {
                        l.f52130c.a(e3);
                        this.f52133c.p(e3);
                    }
                    this.f52133c.s(this.f52132b, true);
                }
            } catch (Throwable th) {
                try {
                    this.f52133c.s(this.f52132b, true);
                } catch (IOException e4) {
                    l.f52130c.a(e4);
                }
                throw th;
            }
        }
    }

    public l(g gVar) {
        this.f52131b = gVar;
    }

    @Override // org.eclipse.jetty.client.g.b
    public void t(HttpDestination httpDestination) throws InterruptedException, IOException {
        Socket socketC0 = httpDestination.n() ? httpDestination.k().c0() : SocketFactory.getDefault().createSocket();
        socketC0.setSoTimeout(0);
        socketC0.setTcpNoDelay(true);
        socketC0.connect((httpDestination.l() ? httpDestination.i() : httpDestination.e()).c(), this.f52131b.d0());
        d dVar = new d(this.f52131b.z(), this.f52131b.H(), new org.eclipse.jetty.io.bio.a(socketC0));
        dVar.r(httpDestination);
        httpDestination.q(dVar);
        this.f52131b.m0().dispatch(new a(dVar, httpDestination));
    }
}
