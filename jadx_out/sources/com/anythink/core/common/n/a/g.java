package com.anythink.core.common.n.a;

import com.anythink.core.common.n.a.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* loaded from: classes2.dex */
public final class g extends d {
    public g(String str, int i2, long j2) {
        super(str, i2, j2);
    }

    @Override // com.anythink.core.common.n.a.d
    public final e a(d.a aVar, String str, String str2, int i2) throws Throwable {
        b bVar = new b((short) (Math.random() * 65535.0d), i2, str2);
        byte[] bArrB = bVar.b();
        InetAddress byName = InetAddress.getByName(str);
        DatagramSocket datagramSocket = null;
        try {
            final DatagramSocket datagramSocket2 = new DatagramSocket();
            try {
                DatagramPacket datagramPacket = new DatagramPacket(bArrB, bArrB.length, byName, this.f5962b);
                try {
                    datagramSocket2.setSoTimeout((int) this.f5961a);
                } catch (Throwable unused) {
                    datagramSocket2.setSoTimeout(500);
                }
                aVar.f5965a.add(new Runnable() { // from class: com.anythink.core.common.n.a.g.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            datagramSocket2.disconnect();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        try {
                            datagramSocket2.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                });
                datagramSocket2.send(datagramPacket);
                DatagramPacket datagramPacket2 = new DatagramPacket(new byte[TTAdConstant.STYLE_SIZE_RADIO_3_2], TTAdConstant.STYLE_SIZE_RADIO_3_2);
                datagramSocket2.receive(datagramPacket2);
                e eVar = new e(str, bVar, datagramPacket2.getData());
                datagramSocket2.close();
                return eVar;
            } catch (Throwable th) {
                th = th;
                datagramSocket = datagramSocket2;
                if (datagramSocket != null) {
                    datagramSocket.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private g(String str, int i2, long j2, int i3) {
        super(str, i2, j2, i3);
    }
}
