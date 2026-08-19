package com.anythink.core.common.m.d.a;

import com.anythink.core.common.m.b.h;
import com.anythink.core.common.m.d.f;
import com.anythink.core.common.v.p;
import com.byazt.rx.BaseConstants;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;

/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: c, reason: collision with root package name */
    private static final int f5700c = 0;

    /* renamed from: d, reason: collision with root package name */
    private static final int f5701d = 7;

    /* renamed from: b, reason: collision with root package name */
    protected Socket f5703b;

    /* renamed from: e, reason: collision with root package name */
    private String f5704e;

    /* renamed from: f, reason: collision with root package name */
    private int f5705f;

    /* renamed from: a, reason: collision with root package name */
    private final String f5702a = getClass().getSimpleName();

    /* renamed from: g, reason: collision with root package name */
    private byte[] f5706g = null;

    /* renamed from: h, reason: collision with root package name */
    private final byte[] f5707h = new byte[1];

    private boolean b() {
        Socket socket = this.f5703b;
        return (socket == null || !socket.isConnected() || this.f5703b.isClosed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(f fVar, f.a aVar) {
        try {
            try {
                b(fVar);
                a(fVar, aVar);
            } catch (SocketException unused) {
                synchronized (this) {
                    try {
                        Socket socket = this.f5703b;
                        if (socket != null) {
                            socket.close();
                            this.f5703b = null;
                        }
                    } catch (Exception unused2) {
                    }
                    b(fVar);
                    a(fVar, aVar);
                }
            }
        } catch (Throwable th) {
            th.getMessage();
            p.a(th.getStackTrace());
            if (aVar != null) {
                aVar.a(th);
            }
        }
    }

    public abstract void a(f fVar, f.a aVar);

    private void a(f fVar) {
        synchronized (this) {
            try {
                if (this.f5703b == null) {
                    Socket socket = new Socket();
                    this.f5703b = socket;
                    socket.setSoTimeout(BaseConstants.Time.MINUTE);
                }
                h hVarA_ = fVar.a_();
                if (hVarA_ == null) {
                    throw new IllegalArgumentException("The domain must not can be null or empty.");
                }
                this.f5704e = hVarA_.a();
                this.f5705f = hVarA_.b();
                this.f5703b.connect(new InetSocketAddress(this.f5704e, this.f5705f), KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(final f fVar, final f.a aVar) {
        com.anythink.core.common.v.b.c.a().c(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cM + "_" + fVar.a(), new Runnable() { // from class: com.anythink.core.common.m.d.a.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f5708b.c(fVar, aVar);
            }
        }));
    }

    private synchronized void b(f fVar) {
        try {
            Socket socket = this.f5703b;
            if (socket == null || !socket.isConnected() || this.f5703b.isClosed()) {
                synchronized (this) {
                    try {
                        if (this.f5703b == null) {
                            Socket socket2 = new Socket();
                            this.f5703b = socket2;
                            socket2.setSoTimeout(BaseConstants.Time.MINUTE);
                        }
                        h hVarA_ = fVar.a_();
                        if (hVarA_ != null) {
                            this.f5704e = hVarA_.a();
                            this.f5705f = hVarA_.b();
                            this.f5703b.connect(new InetSocketAddress(this.f5704e, this.f5705f), KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
                        } else {
                            throw new IllegalArgumentException("The domain must not can be null or empty.");
                        }
                    } finally {
                    }
                }
            }
            byte[] bArrC = fVar.c();
            if (bArrC != null) {
                int length = bArrC.length;
                if (bArrC.length == 0) {
                    return;
                }
                int i2 = length + 7;
                byte[] bArr = this.f5706g;
                if (bArr == null || bArr.length < i2) {
                    this.f5706g = new byte[i2];
                }
                byte[] bArr2 = this.f5706g;
                bArr2[0] = 0;
                bArr2[1] = 3;
                bArr2[2] = (byte) fVar.a();
                byte[] bArr3 = this.f5706g;
                bArr3[3] = (byte) ((length >>> 24) & 255);
                bArr3[4] = (byte) ((length >>> 16) & 255);
                bArr3[5] = (byte) ((length >>> 8) & 255);
                bArr3[6] = (byte) (length & 255);
                System.arraycopy(bArrC, 0, bArr3, 7, bArrC.length);
                OutputStream outputStream = this.f5703b.getOutputStream();
                outputStream.write(this.f5706g, 0, i2);
                outputStream.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a() {
        synchronized (this) {
            try {
                Socket socket = this.f5703b;
                if (socket != null) {
                    socket.close();
                    this.f5703b = null;
                }
            } catch (Exception unused) {
            }
        }
    }

    public final int a(InputStream inputStream) throws SocketException {
        if (inputStream.read(this.f5707h, 0, 1) != -1) {
            byte[] bArr = this.f5707h;
            byte b3 = bArr[0];
            bArr[0] = 0;
            return b3;
        }
        throw new SocketException("Socket.InputStream read length = -1!");
    }
}
