package com.smartdigimkt.l0;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f41501a;

    /* renamed from: b, reason: collision with root package name */
    public final int f41502b;

    /* renamed from: c, reason: collision with root package name */
    public final float f41503c;

    /* renamed from: d, reason: collision with root package name */
    public final float f41504d;

    /* renamed from: e, reason: collision with root package name */
    public final float f41505e;

    /* renamed from: f, reason: collision with root package name */
    public final int f41506f;

    /* renamed from: g, reason: collision with root package name */
    public final int f41507g;

    /* renamed from: h, reason: collision with root package name */
    public final int f41508h;

    /* renamed from: i, reason: collision with root package name */
    public final short[] f41509i;

    /* renamed from: j, reason: collision with root package name */
    public short[] f41510j;

    /* renamed from: k, reason: collision with root package name */
    public int f41511k;

    /* renamed from: l, reason: collision with root package name */
    public short[] f41512l;

    /* renamed from: m, reason: collision with root package name */
    public int f41513m;

    /* renamed from: n, reason: collision with root package name */
    public short[] f41514n;

    /* renamed from: o, reason: collision with root package name */
    public int f41515o;

    /* renamed from: p, reason: collision with root package name */
    public int f41516p;

    /* renamed from: q, reason: collision with root package name */
    public int f41517q;

    /* renamed from: r, reason: collision with root package name */
    public int f41518r;

    /* renamed from: s, reason: collision with root package name */
    public int f41519s;

    /* renamed from: t, reason: collision with root package name */
    public int f41520t;

    /* renamed from: u, reason: collision with root package name */
    public int f41521u;

    /* renamed from: v, reason: collision with root package name */
    public int f41522v;

    public g0(int i2, int i3, float f2, float f3, int i4) {
        this.f41501a = i2;
        this.f41502b = i3;
        this.f41503c = f2;
        this.f41504d = f3;
        this.f41505e = i2 / i4;
        this.f41506f = i2 / MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        int i5 = i2 / 65;
        this.f41507g = i5;
        int i6 = i5 * 2;
        this.f41508h = i6;
        this.f41509i = new short[i6];
        int i7 = i6 * i3;
        this.f41510j = new short[i7];
        this.f41512l = new short[i7];
        this.f41514n = new short[i7];
    }

    public final void a(short[] sArr, int i2, int i3) {
        int i4 = this.f41508h / i3;
        int i5 = this.f41502b;
        int i6 = i3 * i5;
        int i7 = i2 * i5;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                i9 += sArr[(i8 * i6) + i7 + i10];
            }
            this.f41509i[i8] = (short) (i9 / i6);
        }
    }

    public final short[] b(short[] sArr, int i2, int i3) {
        int length = sArr.length;
        int i4 = this.f41502b;
        int i5 = length / i4;
        return i2 + i3 <= i5 ? sArr : Arrays.copyOf(sArr, (((i5 * 3) / 2) + i3) * i4);
    }

    public final int a(short[] sArr, int i2, int i3, int i4) {
        int i5 = i2 * this.f41502b;
        int i6 = 255;
        int i7 = 1;
        int i8 = 0;
        int i9 = 0;
        while (i3 <= i4) {
            int iAbs = 0;
            for (int i10 = 0; i10 < i3; i10++) {
                iAbs += Math.abs(sArr[i5 + i10] - sArr[(i5 + i3) + i10]);
            }
            if (iAbs * i8 < i7 * i3) {
                i8 = i3;
                i7 = iAbs;
            }
            if (iAbs * i6 > i9 * i3) {
                i6 = i3;
                i9 = iAbs;
            }
            i3++;
        }
        this.f41521u = i7 / i8;
        this.f41522v = i9 / i6;
        return i8;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0262 A[LOOP:4: B:13:0x004c->B:100:0x0262, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x018f A[EDGE_INSN: B:110:0x018f->B:65:0x018f BREAK  A[LOOP:4: B:13:0x004c->B:100:0x0262], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.l0.g0.a():void");
    }

    public static void a(int i2, int i3, short[] sArr, int i4, short[] sArr2, int i5, short[] sArr3, int i6) {
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = (i4 * i3) + i7;
            int i9 = (i6 * i3) + i7;
            int i10 = (i5 * i3) + i7;
            for (int i11 = 0; i11 < i2; i11++) {
                sArr[i8] = (short) (((sArr3[i9] * i11) + ((i2 - i11) * sArr2[i10])) / i2);
                i8 += i3;
                i10 += i3;
                i9 += i3;
            }
        }
    }
}
