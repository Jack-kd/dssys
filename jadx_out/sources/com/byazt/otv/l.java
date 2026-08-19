package com.byazt.otv;

import com.anythink.core.common.d.i;
import java.net.DatagramPacket;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 2145, 34})
/* loaded from: classes3.dex */
public class l implements jx {
    public final byte[] hp = new byte[48];

    /* renamed from: l, reason: collision with root package name */
    public volatile DatagramPacket f24186l;

    public static final int hp(byte b3) {
        return b3 & 255;
    }

    public static final long l(byte b3) {
        return b3 & 255;
    }

    private String u() {
        char c2;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 <= 3 && (c2 = (char) this.hp[i2 + 12]) != 0; i2++) {
            sb.append(c2);
        }
        return sb.toString();
    }

    private String v() {
        return hp(this.hp[12]) + i.f2495E + hp(this.hp[13]) + i.f2495E + hp(this.hp[14]) + i.f2495E + hp(this.hp[15]);
    }

    private String xs() {
        return Integer.toHexString(q());
    }

    public int a() {
        return jx(4);
    }

    public String e() {
        int iJ = j();
        int iW = w();
        if (iJ == 3 || iJ == 4) {
            if (iW == 0 || iW == 1) {
                return u();
            }
            if (iJ == 4) {
                return xs();
            }
        }
        return iW >= 2 ? v() : xs();
    }

    public int eb() {
        return jx(8);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.hp, ((l) obj).hp);
    }

    @Override // com.byazt.otv.jx
    public String getType() {
        return "NTP";
    }

    @Override // com.byazt.otv.jx
    public w gu() {
        return j(40);
    }

    public int hashCode() {
        return Arrays.hashCode(this.hp);
    }

    public int j() {
        return (hp(this.hp[0]) >> 3) & 7;
    }

    @Override // com.byazt.otv.jx
    public w jl() {
        return j(24);
    }

    public int jx() {
        return this.hp[3];
    }

    @Override // com.byazt.otv.jx
    public synchronized DatagramPacket k() {
        try {
            if (this.f24186l == null) {
                byte[] bArr = this.hp;
                this.f24186l = new DatagramPacket(bArr, bArr.length);
                this.f24186l.setPort(123);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f24186l;
    }

    public int q() {
        return jx(12);
    }

    public double s() {
        return eb() / 65.536d;
    }

    public String toString() {
        return "[version:" + j() + ", mode:" + hp() + ", poll:" + l() + ", precision:" + jx() + ", delay:" + a() + ", dispersion(ms):" + s() + ", id:" + e() + ", xmitTime:" + gu().w() + " ]";
    }

    public int w() {
        return hp(this.hp[1]);
    }

    @Override // com.byazt.otv.jx
    public w zy() {
        return j(32);
    }

    private w j(int i2) {
        return new w(w(i2));
    }

    private int jx(int i2) {
        return hp(this.hp[i2 + 3]) | (hp(this.hp[i2]) << 24) | (hp(this.hp[i2 + 1]) << 16) | (hp(this.hp[i2 + 2]) << 8);
    }

    private long w(int i2) {
        return (l(this.hp[i2]) << 56) | (l(this.hp[i2 + 1]) << 48) | (l(this.hp[i2 + 2]) << 40) | (l(this.hp[i2 + 3]) << 32) | (l(this.hp[i2 + 4]) << 24) | (l(this.hp[i2 + 5]) << 16) | (l(this.hp[i2 + 6]) << 8) | l(this.hp[i2 + 7]);
    }

    public int hp() {
        return hp(this.hp[0]) & 7;
    }

    public int l() {
        return this.hp[2];
    }

    @Override // com.byazt.otv.jx
    public void hp(int i2) {
        byte[] bArr = this.hp;
        bArr[0] = (byte) ((i2 & 7) | (bArr[0] & 248));
    }

    @Override // com.byazt.otv.jx
    public void l(int i2) {
        byte[] bArr = this.hp;
        bArr[0] = (byte) (((i2 & 7) << 3) | (bArr[0] & 199));
    }

    @Override // com.byazt.otv.jx
    public void hp(w wVar) {
        hp(40, wVar);
    }

    private void hp(int i2, w wVar) {
        long jHp = wVar == null ? 0L : wVar.hp();
        for (int i3 = 7; i3 >= 0; i3--) {
            this.hp[i2 + i3] = (byte) (255 & jHp);
            jHp >>>= 8;
        }
    }
}
