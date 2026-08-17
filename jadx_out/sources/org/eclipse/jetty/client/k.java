package org.eclipse.jetty.client;

import W1.e;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.nio.channels.UnresolvedAddressException;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLEngine;
import org.eclipse.jetty.client.g;
import org.eclipse.jetty.io.nio.SelectChannelEndPoint;
import org.eclipse.jetty.io.nio.f;

/* loaded from: classes5.dex */
public class k extends org.eclipse.jetty.util.component.b implements g.b, org.eclipse.jetty.util.component.e {

    /* renamed from: h, reason: collision with root package name */
    public static final R1.c f52119h = R1.b.a(k.class);

    /* renamed from: e, reason: collision with root package name */
    public final g f52120e;

    /* renamed from: f, reason: collision with root package name */
    public final b f52121f;

    /* renamed from: g, reason: collision with root package name */
    public final Map f52122g;

    public class a extends e.a {

        /* renamed from: g, reason: collision with root package name */
        public final SocketChannel f52123g;

        /* renamed from: h, reason: collision with root package name */
        public final HttpDestination f52124h;

        public a(SocketChannel socketChannel, HttpDestination httpDestination) {
            this.f52123g = socketChannel;
            this.f52124h = httpDestination;
        }

        @Override // W1.e.a
        public void e() throws InterruptedException, IOException {
            if (this.f52123g.isConnectionPending()) {
                k.f52119h.i("Channel {} timed out while connecting, closing it", this.f52123g);
                h();
                k.this.f52122g.remove(this.f52123g);
                this.f52124h.o(new SocketTimeoutException());
            }
        }

        public final void h() throws IOException {
            try {
                this.f52123g.close();
            } catch (IOException e2) {
                k.f52119h.h(e2);
            }
        }
    }

    public static class c implements L1.c {

        /* renamed from: b, reason: collision with root package name */
        public L1.c f52128b;

        /* renamed from: c, reason: collision with root package name */
        public SSLEngine f52129c;

        public c(L1.c cVar, SSLEngine sSLEngine) {
            this.f52129c = sSLEngine;
            this.f52128b = cVar;
        }

        @Override // L1.i
        public void a(L1.j jVar) {
            this.f52128b.a(jVar);
        }

        @Override // L1.k
        public int b() {
            return this.f52128b.b();
        }

        @Override // L1.k
        public boolean c() {
            return this.f52128b.c();
        }

        @Override // L1.k
        public void close() {
            this.f52128b.close();
        }

        @Override // L1.k
        public String d() {
            return this.f52128b.d();
        }

        @Override // L1.c
        public void e() {
            this.f52128b.q();
        }

        @Override // L1.k
        public boolean f(long j2) {
            return this.f52128b.f(j2);
        }

        @Override // L1.k
        public void flush() {
            this.f52128b.flush();
        }

        @Override // L1.k
        public int g(L1.d dVar, L1.d dVar2, L1.d dVar3) {
            return this.f52128b.g(dVar, dVar2, dVar3);
        }

        @Override // L1.i
        public L1.j getConnection() {
            return this.f52128b.getConnection();
        }

        @Override // L1.k
        public int getLocalPort() {
            return this.f52128b.getLocalPort();
        }

        @Override // L1.k
        public int getRemotePort() {
            return this.f52128b.getRemotePort();
        }

        @Override // L1.k
        public void h() {
            this.f52128b.h();
        }

        @Override // L1.k
        public int i(L1.d dVar) {
            return this.f52128b.i(dVar);
        }

        @Override // L1.k
        public boolean isOpen() {
            return this.f52128b.isOpen();
        }

        @Override // L1.k
        public void j() {
            this.f52128b.j();
        }

        @Override // L1.c
        public boolean k() {
            return this.f52128b.k();
        }

        @Override // L1.k
        public void l(int i2) {
            this.f52128b.l(i2);
        }

        @Override // L1.k
        public Object m() {
            return this.f52128b.m();
        }

        @Override // L1.k
        public String n() {
            return this.f52128b.n();
        }

        @Override // L1.k
        public boolean o() {
            return this.f52128b.o();
        }

        @Override // L1.k
        public String p() {
            return this.f52128b.p();
        }

        @Override // L1.c
        public void q() {
            this.f52128b.q();
        }

        @Override // L1.c
        public void r(e.a aVar, long j2) {
            this.f52128b.r(aVar, j2);
        }

        @Override // L1.k
        public boolean s() {
            return this.f52128b.s();
        }

        @Override // L1.k
        public int t(L1.d dVar) {
            return this.f52128b.t(dVar);
        }

        public String toString() {
            return "Upgradable:" + this.f52128b.toString();
        }

        public void u() {
            org.eclipse.jetty.client.c cVar = (org.eclipse.jetty.client.c) this.f52128b.getConnection();
            org.eclipse.jetty.io.nio.g gVar = new org.eclipse.jetty.io.nio.g(this.f52129c, this.f52128b);
            this.f52128b.a(gVar);
            this.f52128b = gVar.C();
            gVar.C().a(cVar);
            k.f52119h.i("upgrade {} to {} for {}", this, gVar, cVar);
        }
    }

    public k(g gVar) {
        b bVar = new b();
        this.f52121f = bVar;
        this.f52122g = new ConcurrentHashMap();
        this.f52120e = gVar;
        Q(gVar, false);
        Q(bVar, true);
    }

    @Override // org.eclipse.jetty.client.g.b
    public void t(HttpDestination httpDestination) throws InterruptedException, IOException {
        AbstractInterruptibleChannel abstractInterruptibleChannel = null;
        try {
            SocketChannel socketChannelOpen = SocketChannel.open();
            org.eclipse.jetty.client.b bVarI = httpDestination.l() ? httpDestination.i() : httpDestination.e();
            socketChannelOpen.socket().setTcpNoDelay(true);
            if (this.f52120e.p0()) {
                socketChannelOpen.socket().connect(bVarI.c(), this.f52120e.d0());
                socketChannelOpen.configureBlocking(false);
                this.f52121f.g0(socketChannelOpen, httpDestination);
                return;
            }
            socketChannelOpen.configureBlocking(false);
            socketChannelOpen.connect(bVarI.c());
            this.f52121f.g0(socketChannelOpen, httpDestination);
            a aVar = new a(socketChannelOpen, httpDestination);
            this.f52120e.u0(aVar, r2.d0());
            this.f52122g.put(socketChannelOpen, aVar);
        } catch (IOException e2) {
            if (0 != 0) {
                abstractInterruptibleChannel.close();
            }
            httpDestination.o(e2);
        } catch (UnresolvedAddressException e3) {
            if (0 != 0) {
                abstractInterruptibleChannel.close();
            }
            httpDestination.o(e3);
        }
    }

    public class b extends org.eclipse.jetty.io.nio.f {

        /* renamed from: o, reason: collision with root package name */
        public R1.c f52126o = k.f52119h;

        public b() {
        }

        @Override // org.eclipse.jetty.io.nio.f
        public void X(SocketChannel socketChannel, Throwable th, Object obj) throws InterruptedException {
            e.a aVar = (e.a) k.this.f52122g.remove(socketChannel);
            if (aVar != null) {
                aVar.c();
            }
            if (obj instanceof HttpDestination) {
                ((HttpDestination) obj).o(th);
            } else {
                super.X(socketChannel, th, obj);
            }
        }

        @Override // org.eclipse.jetty.io.nio.f
        public void Y(SelectChannelEndPoint selectChannelEndPoint) {
        }

        @Override // org.eclipse.jetty.io.nio.f
        public void Z(SelectChannelEndPoint selectChannelEndPoint) {
        }

        @Override // org.eclipse.jetty.io.nio.f
        public boolean dispatch(Runnable runnable) {
            return k.this.f52120e.f52093l.dispatch(runnable);
        }

        @Override // org.eclipse.jetty.io.nio.f
        public org.eclipse.jetty.io.nio.a e0(SocketChannel socketChannel, L1.c cVar, Object obj) {
            return new org.eclipse.jetty.client.c(k.this.f52120e.z(), k.this.f52120e.H(), cVar);
        }

        @Override // org.eclipse.jetty.io.nio.f
        public SelectChannelEndPoint f0(SocketChannel socketChannel, f.d dVar, SelectionKey selectionKey) throws InterruptedException {
            L1.c cVar;
            e.a aVar = (e.a) k.this.f52122g.remove(socketChannel);
            if (aVar != null) {
                aVar.c();
            }
            if (this.f52126o.f()) {
                this.f52126o.i("Channels with connection pending: {}", Integer.valueOf(k.this.f52122g.size()));
            }
            HttpDestination httpDestination = (HttpDestination) selectionKey.attachment();
            SelectChannelEndPoint selectChannelEndPoint = new SelectChannelEndPoint(socketChannel, dVar, selectionKey, (int) k.this.f52120e.g0());
            if (httpDestination.n()) {
                this.f52126o.i("secure to {}, proxied={}", socketChannel, Boolean.valueOf(httpDestination.l()));
                cVar = new c(selectChannelEndPoint, h0(httpDestination.k(), socketChannel));
            } else {
                cVar = selectChannelEndPoint;
            }
            L1.j jVarE0 = dVar.i().e0(socketChannel, cVar, selectionKey.attachment());
            cVar.a(jVarE0);
            org.eclipse.jetty.client.a aVar2 = (org.eclipse.jetty.client.a) jVarE0;
            aVar2.r(httpDestination);
            if (httpDestination.n() && !httpDestination.l()) {
                ((c) cVar).u();
            }
            httpDestination.q(aVar2);
            return selectChannelEndPoint;
        }

        public final synchronized SSLEngine h0(U1.b bVar, SocketChannel socketChannel) {
            SSLEngine sSLEngineB0;
            try {
                sSLEngineB0 = socketChannel != null ? bVar.b0(socketChannel.socket().getInetAddress().getHostAddress(), socketChannel.socket().getPort()) : bVar.a0();
                sSLEngineB0.setUseClientMode(true);
                sSLEngineB0.beginHandshake();
            } catch (Throwable th) {
                throw th;
            }
            return sSLEngineB0;
        }

        @Override // org.eclipse.jetty.io.nio.f
        public void a0(L1.i iVar, L1.j jVar) {
        }
    }
}
