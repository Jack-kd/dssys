package com.ubix.ssp.ad.e.t.a;

import android.graphics.Bitmap;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public class c extends Thread {

    /* renamed from: A, reason: collision with root package name */
    private d f47121A;

    /* renamed from: B, reason: collision with root package name */
    private boolean f47122B;

    /* renamed from: C, reason: collision with root package name */
    private byte[] f47123C;

    /* renamed from: D, reason: collision with root package name */
    private int f47124D;

    /* renamed from: E, reason: collision with root package name */
    private int f47125E;

    /* renamed from: F, reason: collision with root package name */
    private int f47126F;

    /* renamed from: G, reason: collision with root package name */
    private int f47127G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f47128H;

    /* renamed from: I, reason: collision with root package name */
    private int f47129I;

    /* renamed from: J, reason: collision with root package name */
    private int f47130J;

    /* renamed from: K, reason: collision with root package name */
    private short[] f47131K;

    /* renamed from: L, reason: collision with root package name */
    private byte[] f47132L;

    /* renamed from: M, reason: collision with root package name */
    private byte[] f47133M;

    /* renamed from: N, reason: collision with root package name */
    private byte[] f47134N;

    /* renamed from: O, reason: collision with root package name */
    private d f47135O;

    /* renamed from: P, reason: collision with root package name */
    private d f47136P;

    /* renamed from: Q, reason: collision with root package name */
    private int f47137Q;

    /* renamed from: R, reason: collision with root package name */
    private b f47138R;

    /* renamed from: S, reason: collision with root package name */
    private byte[] f47139S;

    /* renamed from: a, reason: collision with root package name */
    public int f47140a;

    /* renamed from: b, reason: collision with root package name */
    public int f47141b;

    /* renamed from: c, reason: collision with root package name */
    private InputStream f47142c;

    /* renamed from: d, reason: collision with root package name */
    private int f47143d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f47144e;

    /* renamed from: f, reason: collision with root package name */
    private int f47145f;

    /* renamed from: g, reason: collision with root package name */
    private int f47146g;

    /* renamed from: h, reason: collision with root package name */
    private int[] f47147h;

    /* renamed from: i, reason: collision with root package name */
    private int[] f47148i;

    /* renamed from: j, reason: collision with root package name */
    private int[] f47149j;

    /* renamed from: k, reason: collision with root package name */
    private int f47150k;

    /* renamed from: l, reason: collision with root package name */
    private int f47151l;

    /* renamed from: m, reason: collision with root package name */
    private int f47152m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f47153n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f47154o;

    /* renamed from: p, reason: collision with root package name */
    private int f47155p;

    /* renamed from: q, reason: collision with root package name */
    private int f47156q;

    /* renamed from: r, reason: collision with root package name */
    private int f47157r;

    /* renamed from: s, reason: collision with root package name */
    private int f47158s;

    /* renamed from: t, reason: collision with root package name */
    private int f47159t;

    /* renamed from: u, reason: collision with root package name */
    private int f47160u;

    /* renamed from: v, reason: collision with root package name */
    private int f47161v;

    /* renamed from: w, reason: collision with root package name */
    private int f47162w;

    /* renamed from: x, reason: collision with root package name */
    private int f47163x;

    /* renamed from: y, reason: collision with root package name */
    private Bitmap f47164y;

    /* renamed from: z, reason: collision with root package name */
    private Bitmap f47165z;

    public c(InputStream inputStream, b bVar) {
        this.f47146g = 1;
        this.f47121A = null;
        this.f47122B = false;
        this.f47123C = new byte[256];
        this.f47124D = 0;
        this.f47126F = 0;
        this.f47127G = 0;
        this.f47128H = false;
        this.f47129I = 0;
        this.f47139S = null;
        this.f47142c = inputStream;
        this.f47138R = bVar;
    }

    private void f() {
        this.f47143d = 0;
        this.f47137Q = 0;
        this.f47135O = null;
        this.f47147h = null;
        this.f47148i = null;
    }

    private int h() {
        try {
            return this.f47142c.read();
        } catch (Exception unused) {
            this.f47143d = 1;
            return 0;
        }
    }

    private int i() throws IOException {
        int iH = h();
        this.f47124D = iH;
        int i2 = 0;
        if (iH > 0) {
            while (true) {
                try {
                    int i3 = this.f47124D;
                    if (i2 >= i3) {
                        break;
                    }
                    int i4 = this.f47142c.read(this.f47123C, i2, i3 - i2);
                    if (i4 == -1) {
                        break;
                    }
                    i2 += i4;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (i2 < this.f47124D) {
                this.f47143d = 1;
            }
        }
        return i2;
    }

    private int j() {
        this.f47142c = new ByteArrayInputStream(this.f47139S);
        this.f47139S = null;
        return r();
    }

    private void k() throws IOException {
        boolean z2 = false;
        while (!z2 && !b()) {
            int iH = h();
            if (iH != 0) {
                if (iH == 33) {
                    int iH2 = h();
                    if (iH2 != 249) {
                        if (iH2 == 255) {
                            i();
                            StringBuffer stringBuffer = new StringBuffer();
                            for (int i2 = 0; i2 < 11; i2++) {
                                stringBuffer.append((char) this.f47123C[i2]);
                            }
                            if (stringBuffer.toString().equals("NETSCAPE2.0")) {
                                p();
                            }
                        }
                        u();
                    } else {
                        l();
                    }
                } else if (iH == 44) {
                    n();
                } else if (iH != 59) {
                    this.f47143d = 1;
                } else {
                    z2 = true;
                }
            }
        }
    }

    private void l() {
        h();
        int iH = h();
        int i2 = (iH & 28) >> 2;
        this.f47126F = i2;
        if (i2 == 0) {
            this.f47126F = 1;
        }
        this.f47128H = (iH & 1) != 0;
        this.f47129I = q() * 10;
        this.f47130J = h();
        h();
    }

    private void m() throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < 6; i2++) {
            stringBuffer.append((char) h());
        }
        if (!stringBuffer.toString().startsWith("GIF")) {
            this.f47143d = 1;
            return;
        }
        o();
        if (!this.f47144e || b()) {
            return;
        }
        int[] iArrC = c(this.f47145f);
        this.f47147h = iArrC;
        this.f47151l = iArrC[this.f47150k];
    }

    private void n() throws IOException {
        this.f47156q = q();
        this.f47157r = q();
        this.f47158s = q();
        this.f47159t = q();
        int iH = h();
        int i2 = 0;
        boolean z2 = (iH & 128) != 0;
        this.f47153n = z2;
        this.f47154o = (iH & 64) != 0;
        int i3 = 2 << (iH & 7);
        this.f47155p = i3;
        if (z2) {
            int[] iArrC = c(i3);
            this.f47148i = iArrC;
            this.f47149j = iArrC;
        } else {
            this.f47149j = this.f47147h;
            if (this.f47150k == this.f47130J) {
                this.f47151l = 0;
            }
        }
        if (this.f47128H) {
            int[] iArr = this.f47149j;
            int i4 = this.f47130J;
            int i5 = iArr[i4];
            iArr[i4] = 0;
            i2 = i5;
        }
        if (this.f47149j == null) {
            this.f47143d = 1;
        }
        if (b()) {
            return;
        }
        a();
        u();
        if (b()) {
            return;
        }
        this.f47137Q++;
        Bitmap bitmapA = a.a().a(1);
        this.f47164y = bitmapA;
        if (bitmapA == null) {
            this.f47164y = Bitmap.createBitmap(this.f47140a, this.f47141b, Bitmap.Config.ARGB_4444);
            a.a().a(1, this.f47164y);
        }
        t();
        int iHashCode = this.f47164y.hashCode();
        a.a().a(this.f47164y);
        if (this.f47135O == null) {
            d dVar = new d(a.a().a(iHashCode), this.f47129I);
            this.f47135O = dVar;
            this.f47121A = dVar;
        } else {
            d dVar2 = this.f47136P;
            if (dVar2 == null) {
                this.f47136P = new d(a.a().a(iHashCode), this.f47129I);
            } else {
                dVar2.f47168c = new d(a.a().a(iHashCode), this.f47129I);
                this.f47136P = this.f47136P.f47168c;
            }
            d dVar3 = this.f47135O;
            if (dVar3.f47168c == null) {
                dVar3.f47168c = this.f47136P;
            }
        }
        if (this.f47128H) {
            this.f47149j[this.f47130J] = i2;
        }
        s();
        this.f47138R.a(true, this.f47137Q);
    }

    private void o() {
        this.f47140a = q();
        this.f47141b = q();
        int iH = h();
        this.f47144e = (iH & 128) != 0;
        this.f47145f = 2 << (iH & 7);
        this.f47150k = h();
        this.f47125E = h();
    }

    private void p() throws IOException {
        do {
            i();
            byte[] bArr = this.f47123C;
            if (bArr[0] == 1) {
                this.f47146g = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f47124D <= 0) {
                return;
            }
        } while (!b());
    }

    private int q() {
        return h() | (h() << 8);
    }

    private int r() throws IOException {
        f();
        if (this.f47142c != null) {
            m();
            if (!b()) {
                k();
                if (this.f47137Q < 0) {
                    this.f47143d = 1;
                    this.f47138R.a(false, -1);
                } else {
                    this.f47143d = -1;
                    this.f47138R.a(true, -1);
                }
            }
            InputStream inputStream = this.f47142c;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        } else {
            this.f47143d = 2;
            this.f47138R.a(false, -1);
        }
        return this.f47143d;
    }

    private void s() {
        this.f47127G = this.f47126F;
        this.f47160u = this.f47156q;
        this.f47161v = this.f47157r;
        this.f47162w = this.f47158s;
        this.f47163x = this.f47159t;
        this.f47165z = this.f47164y;
        this.f47152m = this.f47151l;
        this.f47126F = 0;
        this.f47128H = false;
        this.f47129I = 0;
        this.f47148i = null;
    }

    private void t() {
        int i2;
        int[] iArr = new int[this.f47140a * this.f47141b];
        int i3 = this.f47127G;
        int i4 = 0;
        if (i3 > 0) {
            if (i3 == 3) {
                int i5 = this.f47137Q;
                this.f47165z = i5 + (-2) > 0 ? b(i5 - 3) : null;
            }
            Bitmap bitmap = this.f47165z;
            if (bitmap != null) {
                int i6 = this.f47140a;
                bitmap.getPixels(iArr, 0, i6, 0, 0, i6, this.f47141b);
                if (this.f47127G == 2) {
                    int i7 = !this.f47128H ? this.f47152m : 0;
                    for (int i8 = 0; i8 < this.f47163x; i8++) {
                        int i9 = ((this.f47161v + i8) * this.f47140a) + this.f47160u;
                        int i10 = this.f47162w + i9;
                        while (i9 < i10) {
                            iArr[i9] = i7;
                            i9++;
                        }
                    }
                }
            }
        }
        int i11 = 8;
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int i14 = this.f47159t;
            if (i4 >= i14) {
                this.f47164y = Bitmap.createBitmap(iArr, this.f47140a, this.f47141b, Bitmap.Config.ARGB_4444);
                return;
            }
            if (this.f47154o) {
                if (i13 >= i14) {
                    i12++;
                    if (i12 == 2) {
                        i13 = 4;
                    } else if (i12 == 3) {
                        i11 = 4;
                        i13 = 2;
                    } else if (i12 == 4) {
                        i13 = 1;
                        i11 = 2;
                    }
                }
                i2 = i13 + i11;
            } else {
                i2 = i13;
                i13 = i4;
            }
            int i15 = i13 + this.f47157r;
            if (i15 < this.f47141b) {
                int i16 = this.f47140a;
                int i17 = i15 * i16;
                int i18 = this.f47156q + i17;
                int i19 = this.f47158s;
                int i20 = i18 + i19;
                int i21 = i17 + i16;
                if (i21 < i20) {
                    i20 = i21;
                }
                int i22 = i19 * i4;
                while (i18 < i20) {
                    int i23 = i22 + 1;
                    int i24 = this.f47149j[this.f47134N[i22] & 255];
                    if (i24 != 0) {
                        iArr[i18] = i24;
                    }
                    i18++;
                    i22 = i23;
                }
            }
            i4++;
            i13 = i2;
        }
    }

    private void u() throws IOException {
        do {
            i();
            if (this.f47124D <= 0) {
                return;
            }
        } while (!b());
    }

    public d a(int i2) {
        d dVar = this.f47135O;
        int i3 = 0;
        while (dVar != null) {
            if (i3 == i2) {
                return dVar;
            }
            dVar = dVar.f47168c;
            i3++;
        }
        return null;
    }

    public Bitmap b(int i2) {
        d dVarA = a(i2);
        if (dVarA == null) {
            return null;
        }
        return dVarA.f47166a;
    }

    public void c() throws IOException {
        d dVar = this.f47135O;
        while (dVar != null) {
            if (!dVar.f47166a.isRecycled()) {
                dVar.f47166a.recycle();
                dVar.f47166a = null;
            }
            dVar = this.f47135O.f47168c;
            this.f47135O = dVar;
        }
        InputStream inputStream = this.f47142c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        this.f47139S = null;
    }

    public int d() {
        return this.f47137Q;
    }

    public Bitmap e() {
        return b(0);
    }

    public d g() {
        d dVar;
        if (!this.f47122B) {
            this.f47122B = true;
            return this.f47135O;
        }
        if (this.f47143d == 0) {
            dVar = this.f47121A.f47168c;
            if (dVar != null) {
                this.f47121A = dVar;
            }
        } else {
            d dVar2 = this.f47121A.f47168c;
            this.f47121A = dVar2;
            if (dVar2 == null) {
                dVar = this.f47135O;
                this.f47121A = dVar;
            }
        }
        return this.f47121A;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws IOException {
        try {
            if (this.f47142c != null) {
                r();
            } else if (this.f47139S != null) {
                j();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            c();
        } catch (Throwable unused) {
            c();
            this.f47138R.a(this.f47139S);
        }
    }

    public c(byte[] bArr, b bVar) {
        this.f47146g = 1;
        this.f47121A = null;
        this.f47122B = false;
        this.f47123C = new byte[256];
        this.f47124D = 0;
        this.f47126F = 0;
        this.f47127G = 0;
        this.f47128H = false;
        this.f47129I = 0;
        this.f47139S = bArr;
        this.f47138R = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [short] */
    private void a() throws IOException {
        int i2;
        int i3;
        short s2;
        int i4 = this.f47158s * this.f47159t;
        byte[] bArr = this.f47134N;
        if (bArr == null || bArr.length < i4) {
            this.f47134N = new byte[i4];
        }
        char c2 = 4096;
        if (this.f47131K == null) {
            this.f47131K = new short[4096];
        }
        if (this.f47132L == null) {
            this.f47132L = new byte[4096];
        }
        if (this.f47133M == null) {
            this.f47133M = new byte[4097];
        }
        int iH = h();
        int i5 = 1 << iH;
        int i6 = i5 + 1;
        int i7 = i5 + 2;
        int i8 = iH + 1;
        int i9 = (1 << i8) - 1;
        int i10 = 0;
        for (int i11 = 0; i11 < i5; i11++) {
            this.f47131K[i11] = 0;
            this.f47132L[i11] = (byte) i11;
        }
        int i12 = -1;
        int i13 = i8;
        int i14 = i7;
        int i15 = i9;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        while (i16 < i4) {
            if (i17 != 0) {
                i2 = i8;
                i3 = i12;
            } else if (i18 < i13) {
                if (i20 == 0) {
                    i20 = i();
                    if (i20 <= 0) {
                        break;
                    } else {
                        i21 = 0;
                    }
                }
                i19 += (this.f47123C[i21] & 255) << i18;
                i18 += 8;
                i21++;
                i20--;
                c2 = 4096;
            } else {
                int i24 = i19 & i15;
                i19 >>= i13;
                i18 -= i13;
                if (i24 > i14 || i24 == i6) {
                    break;
                }
                if (i24 == i5) {
                    i13 = i8;
                    i14 = i7;
                    i15 = i9;
                    i23 = i12;
                } else if (i23 == i12) {
                    this.f47133M[i17] = this.f47132L[i24];
                    i10 = i24;
                    i17++;
                    i12 = i12;
                    i23 = i10;
                } else {
                    i3 = i12;
                    if (i24 == i14) {
                        this.f47133M[i17] = (byte) i10;
                        s2 = i23;
                        i17++;
                    } else {
                        s2 = i24;
                    }
                    while (s2 > i5) {
                        this.f47133M[i17] = this.f47132L[s2];
                        s2 = this.f47131K[s2];
                        i17++;
                        i8 = i8;
                    }
                    i2 = i8;
                    byte[] bArr2 = this.f47132L;
                    i10 = bArr2[s2] & 255;
                    if (i14 >= 4096) {
                        break;
                    }
                    int i25 = i17 + 1;
                    byte b3 = (byte) i10;
                    this.f47133M[i17] = b3;
                    this.f47131K[i14] = (short) i23;
                    bArr2[i14] = b3;
                    i14++;
                    if ((i14 & i15) == 0 && i14 < 4096) {
                        i13++;
                        i15 += i14;
                    }
                    i23 = i24;
                    i17 = i25;
                }
                c2 = 4096;
            }
            i17--;
            this.f47134N[i22] = this.f47133M[i17];
            i16++;
            i22++;
            i12 = i3;
            i8 = i2;
            c2 = 4096;
        }
        for (int i26 = i22; i26 < i4; i26++) {
            this.f47134N[i26] = 0;
        }
    }

    private boolean b() {
        return this.f47143d != 0;
    }

    private int[] c(int i2) throws IOException {
        int i3;
        int i4 = i2 * 3;
        byte[] bArr = new byte[i4];
        try {
            i3 = this.f47142c.read(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            i3 = 0;
        }
        if (i3 < i4) {
            this.f47143d = 1;
            return null;
        }
        int[] iArr = new int[256];
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = bArr[i5] & 255;
            int i8 = i5 + 2;
            int i9 = bArr[i5 + 1] & 255;
            i5 += 3;
            iArr[i6] = (i9 << 8) | (i7 << 16) | (-16777216) | (bArr[i8] & 255);
        }
        return iArr;
    }
}
