package com.byazt.omx;

import java.net.DatagramSocket;
import java.net.SocketException;

@com.byazt.kj.hp(hp = {0, 1, 775, 28})
/* loaded from: classes3.dex */
public abstract class hp {

    /* renamed from: w, reason: collision with root package name */
    public static final l f24120w = new jx();
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public l f24121j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public DatagramSocket f24122l;

    public void hp() throws SocketException {
        DatagramSocket datagramSocketHp = this.f24121j.hp();
        this.f24122l = datagramSocketHp;
        datagramSocketHp.setSoTimeout(this.hp);
        this.jx = true;
    }

    public boolean l() {
        return this.jx;
    }
}
