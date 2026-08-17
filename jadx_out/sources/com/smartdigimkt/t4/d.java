package com.smartdigimkt.t4;

import com.byazt.rx.BaseConstants;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;

/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: b, reason: collision with root package name */
    public String f44336b;

    /* renamed from: c, reason: collision with root package name */
    public int f44337c;

    /* renamed from: d, reason: collision with root package name */
    public Socket f44338d;

    /* renamed from: a, reason: collision with root package name */
    public final String f44335a = getClass().getSimpleName();

    /* renamed from: e, reason: collision with root package name */
    public byte[] f44339e = null;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f44340f = new byte[1];

    public static void a(d dVar, com.smartdigimkt.s4.d dVar2) {
        synchronized (dVar) {
            try {
                Socket socket = dVar.f44338d;
                if (socket == null || !socket.isConnected() || dVar.f44338d.isClosed()) {
                    dVar.a(dVar2);
                }
                byte[] bArrB = dVar2.b();
                if (bArrB != null) {
                    int length = bArrB.length;
                    if (bArrB.length == 0) {
                        return;
                    }
                    int i2 = length + 7;
                    byte[] bArr = dVar.f44339e;
                    if (bArr == null || bArr.length < i2) {
                        dVar.f44339e = new byte[i2];
                    }
                    byte[] bArr2 = dVar.f44339e;
                    bArr2[0] = 0;
                    bArr2[1] = (byte) 3;
                    bArr2[2] = (byte) dVar2.a();
                    byte[] bArr3 = dVar.f44339e;
                    bArr3[3] = (byte) ((length >>> 24) & 255);
                    bArr3[4] = (byte) ((length >>> 16) & 255);
                    bArr3[5] = (byte) ((length >>> 8) & 255);
                    bArr3[6] = (byte) (length & 255);
                    System.arraycopy(bArrB, 0, bArr3, 7, bArrB.length);
                    OutputStream outputStream = dVar.f44338d.getOutputStream();
                    outputStream.write(dVar.f44339e, 0, i2);
                    outputStream.flush();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a(com.smartdigimkt.s4.d dVar, com.smartdigimkt.s4.c cVar);

    public final void a(com.smartdigimkt.s4.d dVar) {
        synchronized (this) {
            try {
                if (this.f44338d == null) {
                    Socket socket = new Socket();
                    this.f44338d = socket;
                    socket.setSoTimeout(BaseConstants.Time.MINUTE);
                }
                dVar.getClass();
                com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                com.smartdigimkt.u4.a aVar = aVarA != null ? new com.smartdigimkt.u4.a(aVarA.f39341C, aVarA.f39342D) : null;
                if (aVar != null) {
                    this.f44336b = aVar.f44419a;
                    this.f44337c = aVar.f44420b;
                    this.f44338d.connect(new InetSocketAddress(this.f44336b, this.f44337c), KSImageLoader.InnerImageLoadingListener.MAX_DURATION);
                } else {
                    throw new IllegalArgumentException("The domain must not can be null or empty.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
