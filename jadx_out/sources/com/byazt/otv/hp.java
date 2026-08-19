package com.byazt.otv;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;

@com.byazt.kj.hp(hp = {0, 1, 2145, 28})
/* loaded from: classes3.dex */
public final class hp extends com.byazt.omx.hp {

    /* renamed from: w, reason: collision with root package name */
    public int f24181w;

    public j hp(InetAddress inetAddress, int i2) throws IOException {
        if (!l()) {
            hp();
        }
        l lVar = new l();
        lVar.hp(3);
        lVar.l(this.f24181w);
        DatagramPacket datagramPacketK = lVar.k();
        datagramPacketK.setAddress(inetAddress);
        datagramPacketK.setPort(i2);
        l lVar2 = new l();
        DatagramPacket datagramPacketK2 = lVar2.k();
        lVar.hp(w.j());
        this.f24122l.send(datagramPacketK);
        this.f24122l.receive(datagramPacketK2);
        return new j(lVar2, System.currentTimeMillis(), false);
    }

    public j hp(InetAddress inetAddress) throws IOException {
        return hp(inetAddress, 123);
    }
}
