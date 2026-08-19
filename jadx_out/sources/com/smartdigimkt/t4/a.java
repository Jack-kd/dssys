package com.smartdigimkt.t4;

import java.net.SocketException;

/* loaded from: classes5.dex */
public final class a extends d {
    @Override // com.smartdigimkt.t4.d
    public final synchronized void a(com.smartdigimkt.s4.d dVar, com.smartdigimkt.s4.c cVar) {
        try {
            if (this.f44338d.getInputStream().read(this.f44340f, 0, 1) == -1) {
                throw new SocketException("Socket.InputStream read length = -1!");
            }
            byte[] bArr = this.f44340f;
            byte b3 = bArr[0];
            bArr[0] = 0;
            if (b3 != 1) {
                throw new Exception("Response Error Code:" + ((int) b3));
            }
            if (cVar != null) {
                cVar.a(dVar);
            }
            dVar.toString();
        } catch (Throwable th) {
            throw th;
        }
    }
}
