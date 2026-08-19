package com.byazt.vn;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.logging.Logger;

@com.byazt.kj.hp(hp = {0, 1, 1312, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f26575a = Logger.getLogger(hp.class.getName());
    public final byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public final w f26576j;
    public final eb jx;

    /* renamed from: l, reason: collision with root package name */
    public final s f26577l;

    /* renamed from: w, reason: collision with root package name */
    public C0392hp f26578w;

    @com.byazt.kj.hp(hp = {0, 1, 1312, 170})
    /* renamed from: com.byazt.vn.hp$hp, reason: collision with other inner class name */
    public static class C0392hp {
        public final short hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f26579j;
        public final int jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f26580l;

        /* renamed from: w, reason: collision with root package name */
        public final int f26581w;

        public C0392hp(short s2, int i2, int i3, int i4) {
            this.hp = s2;
            this.f26580l = i2;
            this.jx = i3;
            this.f26579j = i4;
            this.f26581w = i4 + i3;
        }

        public static C0392hp hp(eb ebVar, w wVar) throws IOException {
            int iHp = wVar.hp();
            try {
                return new C0392hp(ebVar.readShort(), ebVar.readShort(), ebVar.readInt(), iHp);
            } catch (EOFException unused) {
                return new C0392hp((short) -1, 0, 0, wVar.hp());
            }
        }
    }

    public hp(byte[] bArr, s sVar) {
        w wVar = new w(new ByteArrayInputStream(bArr));
        this.f26576j = wVar;
        this.jx = new eb(new q(wVar));
        this.hp = bArr;
        this.f26577l = sVar;
    }

    private void a() throws IOException {
        l(513);
        this.jx.readUnsignedByte();
        this.jx.readByte();
        this.jx.skipBytes(2);
        int i2 = this.jx.readInt();
        int i3 = this.jx.readInt();
        e();
        int i4 = (this.f26578w.f26579j + i3) - (i2 * 4);
        if (i4 != this.f26576j.hp()) {
            f26575a.warning("Invalid data detected. Skipping: " + (i4 - this.f26576j.hp()) + " byte(s)");
            this.jx.skipBytes(i4 - this.f26576j.hp());
        }
        int[] iArrHp = this.jx.hp(i2);
        HashSet hashSet = new HashSet();
        for (int i5 : iArrHp) {
            if (i5 != -1 && !hashSet.contains(Integer.valueOf(i5))) {
                eb();
                hashSet.add(Integer.valueOf(i5));
            }
        }
    }

    private void e() throws IOException {
        int i2 = 56;
        int i3 = this.jx.readInt();
        int i4 = 28;
        if (i3 < 28) {
            throw new RuntimeException("Config size < 28");
        }
        this.jx.readShort();
        this.jx.readShort();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readUnsignedShort();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.readByte();
        this.jx.skipBytes(1);
        this.jx.readShort();
        this.jx.readShort();
        this.jx.readShort();
        this.jx.skipBytes(2);
        if (i3 >= 32) {
            this.jx.readByte();
            this.jx.readByte();
            this.jx.readShort();
            i4 = 32;
        }
        if (i3 >= 36) {
            this.jx.readShort();
            this.jx.readShort();
            i4 = 36;
        }
        if (i3 >= 48) {
            hp(4).toCharArray();
            hp(8).toCharArray();
            i4 = 48;
        }
        if (i3 >= 52) {
            this.jx.readByte();
            this.jx.readByte();
            this.jx.skipBytes(2);
            i4 = 52;
        }
        if (i3 >= 56) {
            this.jx.skipBytes(4);
        } else {
            i2 = i4;
        }
        int i5 = i3 - 56;
        if (i5 > 0) {
            byte[] bArr = new byte[i5];
            i2 += i5;
            this.jx.readFully(bArr);
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.equals(BigInteger.ZERO)) {
                f26575a.fine(String.format("Config flags size > %d, but exceeding bytes are all zero, so it should be ok.", 56));
            } else {
                f26575a.warning(String.format("Config flags size > %d. Size = %d. Exceeding bytes: 0x%X.", 56, Integer.valueOf(i3), bigInteger));
            }
        }
        int i6 = i3 - i2;
        if (i6 > 0) {
            this.jx.skipBytes(i6);
        }
    }

    private void eb() throws IOException {
        if (this.jx.readShort() < 0) {
            throw new RuntimeException("Entry size is under 0 bytes.");
        }
        short s2 = this.jx.readShort();
        this.jx.readInt();
        if ((s2 & 1) == 0) {
            q();
        } else {
            s();
        }
    }

    private C0392hp gu() throws IOException {
        C0392hp c0392hpHp = C0392hp.hp(this.jx, this.f26576j);
        this.f26578w = c0392hpHp;
        return c0392hpHp;
    }

    private void j() throws IOException {
        w();
        short s2 = gu().hp;
        while (s2 == 514) {
            w();
            s2 = gu().hp;
        }
        while (s2 == 513) {
            a();
            if (this.f26576j.hp() < this.f26578w.f26581w) {
                f26575a.warning("Unknown data detected. Skipping: " + (this.f26578w.f26581w - this.f26576j.hp()) + " byte(s)");
                w wVar = this.f26576j;
                wVar.skip((long) (this.f26578w.f26581w - wVar.hp()));
            }
            s2 = gu().hp;
        }
    }

    private void jx() throws IOException {
        l(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT);
        int i2 = this.jx.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.jx.readInt();
            this.jx.skipBytes(256);
        }
        while (gu().hp == 513) {
            j();
        }
    }

    private void l() throws IOException {
        l(512);
        this.jx.readInt();
        this.jx.skipBytes(256);
        this.jx.hp();
        this.jx.hp();
        this.jx.hp();
        this.jx.hp();
        if (this.f26578w.f26580l == 288 && this.jx.readInt() > 0) {
            throw new RuntimeException("don't support");
        }
        jl.hp(this.jx);
        jl.hp(this.jx);
        gu();
        boolean z2 = true;
        while (z2) {
            short s2 = this.f26578w.hp;
            if (s2 == 514) {
                j();
            } else if (s2 != 515) {
                z2 = false;
            } else {
                jx();
            }
        }
    }

    private void q() throws IOException {
        this.jx.hp((short) 8);
        this.jx.hp((byte) 0);
        byte b3 = this.jx.readByte();
        int iHp = gu.hp(this.jx);
        int i2 = this.jx.readInt();
        if (b3 == 1) {
            gu.hp(this.hp, i2, iHp, this.f26577l);
        }
        if (b3 == 2) {
            gu.hp(this.hp, i2, iHp, this.f26577l);
        }
    }

    private void s() throws IOException {
        int iHp = gu.hp(this.jx);
        gu.hp(this.hp, this.jx.readInt(), iHp, this.f26577l);
        int i2 = this.jx.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            int iHp2 = gu.hp(this.jx);
            gu.hp(this.hp, this.jx.readInt(), iHp2, this.f26577l);
            q();
        }
    }

    private void w() throws IOException {
        l(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE);
        this.jx.readUnsignedByte();
        this.jx.skipBytes(3);
        this.jx.skipBytes(this.jx.readInt() * 4);
    }

    public void hp() throws IOException {
        jx(2);
        int i2 = this.jx.readInt();
        jl.hp(this.jx);
        gu();
        for (int i3 = 0; i3 < i2; i3++) {
            l();
        }
    }

    private String hp(int i2) throws IOException {
        int i3;
        short s2;
        StringBuilder sb = new StringBuilder(16);
        while (true) {
            i3 = i2 - 1;
            if (i2 == 0 || this.jx.readByte() == 0) {
                break;
            }
            sb.append((char) s2);
            i2 = i3;
        }
        this.jx.skipBytes(i3);
        return sb.toString();
    }

    private void jx(int i2) throws IOException {
        gu();
        l(i2);
    }

    private void l(int i2) {
        if (this.f26578w.hp != i2) {
            throw new RuntimeException(String.format("Invalid chunk type: expected=0x%08x, got=0x%08x", Integer.valueOf(i2), Short.valueOf(this.f26578w.hp)));
        }
    }
}
