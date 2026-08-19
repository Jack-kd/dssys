package com.anythink.core.common.n.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.net.IDN;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
final class e extends com.anythink.core.common.n.a.a {

    /* renamed from: i, reason: collision with root package name */
    private long f5966i;

    /* renamed from: j, reason: collision with root package name */
    private int f5967j;

    /* renamed from: k, reason: collision with root package name */
    private String f5968k;

    /* renamed from: l, reason: collision with root package name */
    private com.anythink.core.common.n.a.b f5969l;

    /* renamed from: m, reason: collision with root package name */
    private byte[] f5970m;

    /* renamed from: n, reason: collision with root package name */
    private int f5971n;

    /* renamed from: o, reason: collision with root package name */
    private int f5972o;

    /* renamed from: p, reason: collision with root package name */
    private List<l> f5973p;

    /* renamed from: q, reason: collision with root package name */
    private List<l> f5974q;

    /* renamed from: r, reason: collision with root package name */
    private List<l> f5975r;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f5976a;

        /* renamed from: b, reason: collision with root package name */
        private String f5977b;

        private a() {
        }

        public /* synthetic */ a(byte b3) {
            this();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f5978a;

        /* renamed from: b, reason: collision with root package name */
        private final int f5979b;

        /* renamed from: c, reason: collision with root package name */
        private final int f5980c;

        /* renamed from: d, reason: collision with root package name */
        private int f5981d;

        /* renamed from: e, reason: collision with root package name */
        private final List<l> f5982e;

        public /* synthetic */ b(String str, int i2, int i3, byte b3) {
            this(str, i2, i3);
        }

        private b(String str, int i2, int i3) {
            this.f5978a = str;
            this.f5979b = i2;
            this.f5980c = i3;
            this.f5981d = 0;
            this.f5982e = new ArrayList();
        }

        private void a(l lVar) {
            if (lVar != null) {
                this.f5982e.add(lVar);
            }
        }

        public static /* synthetic */ void a(b bVar, l lVar) {
            bVar.f5982e.add(lVar);
        }
    }

    public e(String str, com.anythink.core.common.n.a.b bVar, byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            throw new IOException("response data is empty");
        }
        this.f5968k = str;
        this.f5967j = 4;
        this.f5969l = bVar;
        this.f5970m = bArr;
        this.f5966i = new Date().getTime() / 1000;
        if (this.f5970m.length < 12) {
            throw new IOException("response data too small");
        }
        byte b3 = 0;
        short sC = c(0);
        this.f5950e = sC;
        if (sC != this.f5969l.f5950e) {
            throw new IOException("question id error");
        }
        int iB = b(2);
        if ((b(2) & 128) == 0) {
            throw new IOException("not a response data");
        }
        this.f5951f = (iB >> 3) & 7;
        this.f5971n = (iB >> 2) & 1;
        this.f5952g = iB & 1;
        int iB2 = b(3);
        this.f5953h = (iB2 >> 7) & 1;
        this.f5972o = iB2 & 15;
        int iD = d();
        b bVar2 = new b("answer", c(6), iD, b3);
        a(bVar2);
        this.f5973p = bVar2.f5982e;
        int i2 = iD + bVar2.f5981d;
        b bVar3 = new b("authority", c(8), i2, b3);
        a(bVar3);
        this.f5974q = bVar3.f5982e;
        String str2 = "additional";
        b bVar4 = new b(str2, c(10), i2 + bVar3.f5981d, b3);
        a(bVar4);
        this.f5975r = bVar4.f5982e;
    }

    private void a(b bVar) throws IOException {
        int i2 = bVar.f5980c;
        for (int i3 = bVar.f5979b; i3 > 0; i3--) {
            a aVarA = a(i2);
            if (aVarA == null) {
                throw new IOException("read " + bVar.f5978a + " error");
            }
            int i4 = i2 + aVarA.f5976a;
            short sC = c(i4);
            short sC2 = c(i4 + 2);
            int i5 = i4 + 4;
            int i6 = i4 + 7;
            byte[] bArr = this.f5970m;
            if (i6 >= bArr.length) {
                throw new IOException("read response data out of range");
            }
            int i7 = (bArr[i6] & 255) + ((bArr[i5] & 255) << 24) + ((bArr[i4 + 5] & 255) << 16) + ((bArr[i4 + 6] & 255) << 8);
            short sC3 = c(i4 + 8);
            int i8 = i4 + 10;
            String strA = a(sC, i8, sC3);
            if (sC2 == 1 && (sC == 5 || sC == this.f5969l.a())) {
                b.a(bVar, new l(strA, sC, i7, this.f5966i, this.f5967j, this.f5968k));
            }
            i2 = i8 + sC3;
        }
        bVar.f5981d = i2 - bVar.f5980c;
    }

    private void b() throws IOException {
        if (this.f5970m.length < 12) {
            throw new IOException("response data too small");
        }
        byte b3 = 0;
        short sC = c(0);
        this.f5950e = sC;
        if (sC != this.f5969l.f5950e) {
            throw new IOException("question id error");
        }
        int iB = b(2);
        if ((b(2) & 128) == 0) {
            throw new IOException("not a response data");
        }
        this.f5951f = (iB >> 3) & 7;
        this.f5971n = (iB >> 2) & 1;
        this.f5952g = iB & 1;
        int iB2 = b(3);
        this.f5953h = (iB2 >> 7) & 1;
        this.f5972o = iB2 & 15;
        int iD = d();
        b bVar = new b("answer", c(6), iD, b3);
        a(bVar);
        this.f5973p = bVar.f5982e;
        int i2 = iD + bVar.f5981d;
        b bVar2 = new b("authority", c(8), i2, b3);
        a(bVar2);
        this.f5974q = bVar2.f5982e;
        String str = "additional";
        b bVar3 = new b(str, c(10), i2 + bVar2.f5981d, b3);
        a(bVar3);
        this.f5975r = bVar3.f5982e;
    }

    private void c() throws IOException {
        short sC = c(0);
        this.f5950e = sC;
        if (sC != this.f5969l.f5950e) {
            throw new IOException("question id error");
        }
        int iB = b(2);
        if ((b(2) & 128) == 0) {
            throw new IOException("not a response data");
        }
        this.f5951f = (iB >> 3) & 7;
        this.f5971n = (iB >> 2) & 1;
        this.f5952g = iB & 1;
        int iB2 = b(3);
        this.f5953h = (iB2 >> 7) & 1;
        this.f5972o = iB2 & 15;
    }

    private int d() throws IOException {
        int i2 = 12;
        for (int iC = c(4); iC > 0; iC--) {
            a aVarA = a(i2);
            if (aVarA == null) {
                throw new IOException("read Question error");
            }
            i2 += aVarA.f5976a + 4;
        }
        return i2;
    }

    private int e() {
        return this.f5971n;
    }

    private int f() {
        return this.f5972o;
    }

    private List<l> g() {
        return this.f5975r;
    }

    private List<l> h() {
        return this.f5974q;
    }

    public final String toString() {
        return String.format(Locale.getDefault(), "{messageId:%d, rd:%d, ra:%d, aa:%d, rCode:%d, server:%s, request:%s, answerArray:%s, authorityArray:%s, additionalArray:%s}", Short.valueOf(this.f5950e), Integer.valueOf(this.f5952g), Integer.valueOf(this.f5953h), Integer.valueOf(this.f5971n), Integer.valueOf(this.f5972o), this.f5968k, this.f5969l, this.f5973p, this.f5974q, this.f5975r);
    }

    private int d(int i2) throws IOException {
        int i3 = i2 + 3;
        byte[] bArr = this.f5970m;
        if (i3 < bArr.length) {
            int i4 = (bArr[i2] & 255) << 24;
            int i5 = (bArr[i2 + 1] & 255) << 16;
            return i4 + i5 + ((bArr[i2 + 2] & 255) << 8) + (bArr[i3] & 255);
        }
        throw new IOException("read response data out of range");
    }

    private short c(int i2) throws IOException {
        int i3 = i2 + 1;
        byte[] bArr = this.f5970m;
        if (i3 < bArr.length) {
            return (short) (((bArr[i2] & 255) << 8) + (bArr[i3] & 255));
        }
        throw new IOException("read response data out of range");
    }

    private a a(int i2) throws IOException {
        StringBuilder sb = new StringBuilder();
        a aVar = new a((byte) 0);
        int i3 = 128;
        int iB = i2;
        do {
            int iB2 = b(iB);
            int i4 = iB2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
            if (i4 == 192) {
                if (aVar.f5976a <= 0) {
                    aVar.f5976a = (iB + 2) - i2;
                }
                iB = b(iB + 1) | ((iB2 & 63) << 8);
            } else {
                if (i4 > 0) {
                    return null;
                }
                iB++;
                if (iB2 > 0) {
                    if (sb.length() > 0) {
                        sb.append(com.anythink.core.common.d.i.f2495E);
                    }
                    int i5 = iB + iB2;
                    sb.append(IDN.toUnicode(new String(Arrays.copyOfRange(this.f5970m, iB, i5))));
                    iB = i5;
                }
            }
            if (iB2 <= 0) {
                break;
            }
            i3--;
        } while (i3 > 0);
        aVar.f5977b = sb.toString();
        if (aVar.f5976a <= 0) {
            aVar.f5976a = iB - i2;
        }
        return aVar;
    }

    private int b(int i2) throws IOException {
        byte[] bArr = this.f5970m;
        if (i2 < bArr.length) {
            return bArr[i2] & 255;
        }
        throw new IOException("read response data out of range");
    }

    private String a(int i2, int i3, int i4) {
        if (i2 == 1) {
            if (i4 != 4) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(b(i3));
            for (int i5 = 1; i5 < 4; i5++) {
                sb.append(com.anythink.core.common.d.i.f2495E);
                sb.append(b(i3 + i5));
            }
            return sb.toString();
        }
        if (i2 == 5) {
            if (i4 > 1) {
                return a(i3).f5977b;
            }
            return null;
        }
        if (i2 == 16) {
            if (i4 <= 0) {
                return null;
            }
            int i6 = i4 + i3;
            byte[] bArr = this.f5970m;
            if (i6 < bArr.length) {
                return IDN.toUnicode(new String(Arrays.copyOfRange(bArr, i3, i6)));
            }
            return null;
        }
        if (i2 != 28 || i4 != 16) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        int i7 = 0;
        while (i7 < 16) {
            sb2.append(i7 > 0 ? ":" : "");
            int i8 = i3 + i7;
            sb2.append(b(i8));
            sb2.append(b(i8 + 1));
            i7 += 2;
        }
        return sb2.toString();
    }

    public final List<l> a() {
        return this.f5973p;
    }
}
