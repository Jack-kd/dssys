package org.eclipse.jetty.io.bio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocket;

/* loaded from: classes5.dex */
public class a extends b {

    /* renamed from: j, reason: collision with root package name */
    public static final R1.c f52385j = R1.b.a(a.class);

    /* renamed from: g, reason: collision with root package name */
    public final Socket f52386g;

    /* renamed from: h, reason: collision with root package name */
    public final InetSocketAddress f52387h;

    /* renamed from: i, reason: collision with root package name */
    public final InetSocketAddress f52388i;

    public a(Socket socket) {
        super(socket.getInputStream(), socket.getOutputStream());
        this.f52386g = socket;
        this.f52387h = (InetSocketAddress) socket.getLocalSocketAddress();
        this.f52388i = (InetSocketAddress) socket.getRemoteSocketAddress();
        super.l(socket.getSoTimeout());
    }

    @Override // L1.k
    public void close() throws IOException {
        this.f52386g.close();
        this.f52389b = null;
        this.f52390c = null;
    }

    @Override // L1.k
    public String d() {
        InetSocketAddress inetSocketAddress = this.f52387h;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f52387h.getAddress().isAnyLocalAddress()) ? "0.0.0.0" : this.f52387h.getAddress().getHostAddress();
    }

    @Override // L1.k
    public int getLocalPort() {
        InetSocketAddress inetSocketAddress = this.f52387h;
        if (inetSocketAddress == null) {
            return -1;
        }
        return inetSocketAddress.getPort();
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public void h() throws IOException {
        if (this.f52386g instanceof SSLSocket) {
            super.h();
        } else {
            w();
        }
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public boolean isOpen() {
        Socket socket;
        return (!super.isOpen() || (socket = this.f52386g) == null || socket.isClosed()) ? false : true;
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public void j() throws IOException {
        if (this.f52386g instanceof SSLSocket) {
            super.j();
        } else {
            x();
        }
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public void l(int i2) throws SocketException {
        if (i2 != b()) {
            this.f52386g.setSoTimeout(i2 > 0 ? i2 : 0);
        }
        super.l(i2);
    }

    @Override // L1.k
    public Object m() {
        return this.f52386g;
    }

    @Override // L1.k
    public String n() {
        InetSocketAddress inetSocketAddress = this.f52387h;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f52387h.getAddress().isAnyLocalAddress()) ? "0.0.0.0" : this.f52387h.getAddress().getCanonicalHostName();
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public boolean o() {
        Socket socket = this.f52386g;
        return socket instanceof SSLSocket ? super.o() : socket.isClosed() || this.f52386g.isOutputShutdown();
    }

    @Override // org.eclipse.jetty.io.bio.b, L1.k
    public boolean s() {
        Socket socket = this.f52386g;
        return socket instanceof SSLSocket ? super.s() : socket.isClosed() || this.f52386g.isInputShutdown();
    }

    public String toString() {
        return this.f52387h + " <--> " + this.f52388i;
    }

    @Override // org.eclipse.jetty.io.bio.b
    public void u() throws IOException {
        try {
            if (s()) {
                return;
            }
            h();
        } catch (IOException e2) {
            f52385j.h(e2);
            this.f52386g.close();
        }
    }

    public void w() throws IOException {
        if (this.f52386g.isClosed()) {
            return;
        }
        if (!this.f52386g.isInputShutdown()) {
            this.f52386g.shutdownInput();
        }
        if (this.f52386g.isOutputShutdown()) {
            this.f52386g.close();
        }
    }

    public final void x() throws IOException {
        if (this.f52386g.isClosed()) {
            return;
        }
        if (!this.f52386g.isOutputShutdown()) {
            this.f52386g.shutdownOutput();
        }
        if (this.f52386g.isInputShutdown()) {
            this.f52386g.close();
        }
    }

    public a(Socket socket, int i2) throws SocketException {
        super(socket.getInputStream(), socket.getOutputStream());
        this.f52386g = socket;
        this.f52387h = (InetSocketAddress) socket.getLocalSocketAddress();
        this.f52388i = (InetSocketAddress) socket.getRemoteSocketAddress();
        socket.setSoTimeout(i2 > 0 ? i2 : 0);
        super.l(i2);
    }
}
