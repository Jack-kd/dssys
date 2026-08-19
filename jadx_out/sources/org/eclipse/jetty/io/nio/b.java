package org.eclipse.jetty.io.nio;

import L1.k;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SocketChannel;

/* loaded from: classes5.dex */
public abstract class b implements k {

    /* renamed from: j, reason: collision with root package name */
    public static final R1.c f52427j = R1.b.a(b.class);

    /* renamed from: b, reason: collision with root package name */
    public final ByteChannel f52428b;

    /* renamed from: c, reason: collision with root package name */
    public final ByteBuffer[] f52429c = new ByteBuffer[2];

    /* renamed from: d, reason: collision with root package name */
    public final Socket f52430d;

    /* renamed from: e, reason: collision with root package name */
    public final InetSocketAddress f52431e;

    /* renamed from: f, reason: collision with root package name */
    public final InetSocketAddress f52432f;

    /* renamed from: g, reason: collision with root package name */
    public volatile int f52433g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f52434h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f52435i;

    public b(ByteChannel byteChannel, int i2) throws SocketException {
        this.f52428b = byteChannel;
        this.f52433g = i2;
        Socket socket = byteChannel instanceof SocketChannel ? ((SocketChannel) byteChannel).socket() : null;
        this.f52430d = socket;
        if (socket == null) {
            this.f52432f = null;
            this.f52431e = null;
        } else {
            this.f52431e = (InetSocketAddress) socket.getLocalSocketAddress();
            this.f52432f = (InetSocketAddress) socket.getRemoteSocketAddress();
            socket.setSoTimeout(this.f52433g);
        }
    }

    @Override // L1.k
    public int b() {
        return this.f52433g;
    }

    @Override // L1.k
    public boolean c() {
        Closeable closeable = this.f52428b;
        return !(closeable instanceof SelectableChannel) || ((SelectableChannel) closeable).isBlocking();
    }

    @Override // L1.k
    public void close() throws IOException {
        f52427j.i("close {}", this);
        this.f52428b.close();
    }

    @Override // L1.k
    public String d() {
        if (this.f52430d == null) {
            return null;
        }
        InetSocketAddress inetSocketAddress = this.f52431e;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f52431e.getAddress().isAnyLocalAddress()) ? "0.0.0.0" : this.f52431e.getAddress().getHostAddress();
    }

    @Override // L1.k
    public void flush() {
    }

    @Override // L1.k
    public int g(L1.d dVar, L1.d dVar2, L1.d dVar3) {
        L1.d dVarBuffer = dVar == null ? null : dVar.buffer();
        L1.d dVarBuffer2 = dVar2 != null ? dVar2.buffer() : null;
        if ((this.f52428b instanceof GatheringByteChannel) && dVar != null && dVar.length() != 0 && (dVarBuffer instanceof e) && dVar2 != null && dVar2.length() != 0 && (dVarBuffer2 instanceof e)) {
            return u(dVar, ((e) dVarBuffer).t0(), dVar2, ((e) dVarBuffer2).t0());
        }
        int i2 = (dVar == null || dVar.length() <= 0) ? 0 : i(dVar);
        if ((dVar == null || dVar.length() == 0) && dVar2 != null && dVar2.length() > 0) {
            i2 += i(dVar2);
        }
        return (dVar == null || dVar.length() == 0) ? ((dVar2 == null || dVar2.length() == 0) && dVar3 != null && dVar3.length() > 0) ? i2 + i(dVar3) : i2 : i2;
    }

    @Override // L1.k
    public int getLocalPort() {
        if (this.f52430d == null) {
            return 0;
        }
        InetSocketAddress inetSocketAddress = this.f52431e;
        if (inetSocketAddress == null) {
            return -1;
        }
        return inetSocketAddress.getPort();
    }

    @Override // L1.k
    public int getRemotePort() {
        if (this.f52430d == null) {
            return 0;
        }
        InetSocketAddress inetSocketAddress = this.f52432f;
        if (inetSocketAddress == null) {
            return -1;
        }
        return inetSocketAddress.getPort();
    }

    @Override // L1.k
    public void h() throws IOException {
        w();
    }

    @Override // L1.k
    public int i(L1.d dVar) throws IOException {
        L1.d dVarBuffer = dVar.buffer();
        if (dVarBuffer instanceof e) {
            ByteBuffer byteBufferAsReadOnlyBuffer = ((e) dVarBuffer).t0().asReadOnlyBuffer();
            byteBufferAsReadOnlyBuffer.position(dVar.getIndex());
            byteBufferAsReadOnlyBuffer.limit(dVar.n0());
            int iWrite = this.f52428b.write(byteBufferAsReadOnlyBuffer);
            if (iWrite > 0) {
                dVar.skip(iWrite);
            }
            return iWrite;
        }
        if (dVar.p0() == null) {
            throw new IOException("Not Implemented");
        }
        int iWrite2 = this.f52428b.write(ByteBuffer.wrap(dVar.p0(), dVar.getIndex(), dVar.length()));
        if (iWrite2 > 0) {
            dVar.skip(iWrite2);
        }
        return iWrite2;
    }

    @Override // L1.k
    public boolean isOpen() {
        return this.f52428b.isOpen();
    }

    @Override // L1.k
    public void j() throws IOException {
        x();
    }

    @Override // L1.k
    public Object m() {
        return this.f52428b;
    }

    @Override // L1.k
    public String n() {
        if (this.f52430d == null) {
            return null;
        }
        InetSocketAddress inetSocketAddress = this.f52431e;
        return (inetSocketAddress == null || inetSocketAddress.getAddress() == null || this.f52431e.getAddress().isAnyLocalAddress()) ? "0.0.0.0" : this.f52431e.getAddress().getCanonicalHostName();
    }

    @Override // L1.k
    public boolean o() {
        if (this.f52435i || !this.f52428b.isOpen()) {
            return true;
        }
        Socket socket = this.f52430d;
        return socket != null && socket.isOutputShutdown();
    }

    @Override // L1.k
    public String p() {
        InetSocketAddress inetSocketAddress;
        if (this.f52430d == null || (inetSocketAddress = this.f52432f) == null) {
            return null;
        }
        return inetSocketAddress.getAddress().getHostAddress();
    }

    @Override // L1.k
    public boolean s() {
        if (this.f52434h || !this.f52428b.isOpen()) {
            return true;
        }
        Socket socket = this.f52430d;
        return socket != null && socket.isInputShutdown();
    }

    @Override // L1.k
    public int t(L1.d dVar) throws Throwable {
        int i2;
        if (this.f52434h) {
            return -1;
        }
        L1.d dVarBuffer = dVar.buffer();
        if (!(dVarBuffer instanceof e)) {
            throw new IOException("Not Implemented");
        }
        ByteBuffer byteBufferT0 = ((e) dVarBuffer).t0();
        int i3 = 0;
        try {
            synchronized (byteBufferT0) {
                try {
                    try {
                        byteBufferT0.position(dVar.n0());
                        i2 = this.f52428b.read(byteBufferT0);
                    } catch (Throwable th) {
                        dVar.q0(byteBufferT0.position());
                        byteBufferT0.position(0);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    dVar.q0(byteBufferT0.position());
                    byteBufferT0.position(0);
                    if (i2 < 0) {
                        try {
                            if (isOpen()) {
                                if (!s()) {
                                    h();
                                }
                                if (o()) {
                                    this.f52428b.close();
                                }
                            }
                        } catch (IOException e2) {
                            e = e2;
                            i3 = i2;
                            f52427j.d("Exception while filling", e);
                            try {
                                if (this.f52428b.isOpen()) {
                                    this.f52428b.close();
                                }
                            } catch (Exception e3) {
                                f52427j.h(e3);
                            }
                            if (i3 <= 0) {
                                return -1;
                            }
                            throw e;
                        }
                    }
                    return i2;
                } catch (Throwable th3) {
                    th = th3;
                    i3 = i2;
                    throw th;
                }
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public int u(L1.d dVar, ByteBuffer byteBuffer, L1.d dVar2, ByteBuffer byteBuffer2) {
        int iWrite;
        synchronized (this) {
            try {
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                byteBufferAsReadOnlyBuffer.position(dVar.getIndex());
                byteBufferAsReadOnlyBuffer.limit(dVar.n0());
                ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBuffer2.asReadOnlyBuffer();
                byteBufferAsReadOnlyBuffer2.position(dVar2.getIndex());
                byteBufferAsReadOnlyBuffer2.limit(dVar2.n0());
                ByteBuffer[] byteBufferArr = this.f52429c;
                byteBufferArr[0] = byteBufferAsReadOnlyBuffer;
                byteBufferArr[1] = byteBufferAsReadOnlyBuffer2;
                iWrite = (int) ((GatheringByteChannel) this.f52428b).write(byteBufferArr);
                int length = dVar.length();
                if (iWrite > length) {
                    dVar.clear();
                    dVar2.skip(iWrite - length);
                } else if (iWrite > 0) {
                    dVar.skip(iWrite);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iWrite;
    }

    public ByteChannel v() {
        return this.f52428b;
    }

    public final void w() throws IOException {
        Socket socket;
        f52427j.i("ishut {}", this);
        this.f52434h = true;
        if (!this.f52428b.isOpen() || (socket = this.f52430d) == null) {
            return;
        }
        try {
            try {
                if (!socket.isInputShutdown()) {
                    this.f52430d.shutdownInput();
                }
                if (this.f52435i) {
                    close();
                }
            } catch (SocketException e2) {
                R1.c cVar = f52427j;
                cVar.i(e2.toString(), new Object[0]);
                cVar.h(e2);
                if (this.f52435i) {
                    close();
                }
            }
        } catch (Throwable th) {
            if (this.f52435i) {
                close();
            }
            throw th;
        }
    }

    public final void x() throws IOException {
        Socket socket;
        f52427j.i("oshut {}", this);
        this.f52435i = true;
        if (!this.f52428b.isOpen() || (socket = this.f52430d) == null) {
            return;
        }
        try {
            try {
                if (!socket.isOutputShutdown()) {
                    this.f52430d.shutdownOutput();
                }
                if (this.f52434h) {
                    close();
                }
            } catch (SocketException e2) {
                R1.c cVar = f52427j;
                cVar.i(e2.toString(), new Object[0]);
                cVar.h(e2);
                if (this.f52434h) {
                    close();
                }
            }
        } catch (Throwable th) {
            if (this.f52434h) {
                close();
            }
            throw th;
        }
    }
}
