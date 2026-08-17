package com.smartdigimkt.t4;

import java.io.InputStream;
import java.net.SocketException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class b extends d {
    @Override // com.smartdigimkt.t4.d
    public final synchronized void a(com.smartdigimkt.s4.d dVar, com.smartdigimkt.s4.c cVar) {
        InputStream inputStream = this.f44338d.getInputStream();
        if (inputStream.read(this.f44340f, 0, 1) == -1) {
            throw new SocketException("Socket.InputStream read length = -1!");
        }
        byte[] bArr = this.f44340f;
        byte b3 = bArr[0];
        bArr[0] = 0;
        if (b3 != 2) {
            if (cVar != null) {
                cVar.a((Object) null);
            }
            return;
        }
        inputStream.read(new byte[1], 0, 1);
        byte[] bArr2 = new byte[4];
        inputStream.read(bArr2, 0, 4);
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        if (i2 <= 0) {
            if (cVar != null) {
                cVar.a((Object) null);
            }
            return;
        }
        byte[] bArr3 = new byte[i2];
        inputStream.read(bArr3, 0, i2);
        String str = new String(bArr3);
        if (cVar != null) {
            cVar.a(str);
        }
    }
}
