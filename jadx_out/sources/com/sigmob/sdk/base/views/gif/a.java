package com.sigmob.sdk.base.views.gif;

import android.graphics.Bitmap;
import com.czhj.sdk.logger.SigmobLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes4.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    static final int f36981a = 0;

    /* renamed from: b, reason: collision with root package name */
    static final int f36982b = 1;

    /* renamed from: c, reason: collision with root package name */
    static final int f36983c = 2;

    /* renamed from: d, reason: collision with root package name */
    static final int f36984d = 3;

    /* renamed from: e, reason: collision with root package name */
    static final int f36985e = -1;

    /* renamed from: f, reason: collision with root package name */
    private static final String f36986f = "a";

    /* renamed from: g, reason: collision with root package name */
    private static final int f36987g = 4096;

    /* renamed from: h, reason: collision with root package name */
    private static final int f36988h = 0;

    /* renamed from: i, reason: collision with root package name */
    private static final int f36989i = 1;

    /* renamed from: j, reason: collision with root package name */
    private static final int f36990j = 2;

    /* renamed from: k, reason: collision with root package name */
    private static final int f36991k = 3;

    /* renamed from: l, reason: collision with root package name */
    private static final int f36992l = -1;

    /* renamed from: m, reason: collision with root package name */
    private static final int f36993m = -1;

    /* renamed from: n, reason: collision with root package name */
    private static final int f36994n = 4;

    /* renamed from: o, reason: collision with root package name */
    private static final int f36995o = 16384;

    /* renamed from: A, reason: collision with root package name */
    private d f36996A;

    /* renamed from: B, reason: collision with root package name */
    private final int[] f36997B;

    /* renamed from: C, reason: collision with root package name */
    private byte[] f36998C;

    /* renamed from: D, reason: collision with root package name */
    private short[] f36999D;

    /* renamed from: E, reason: collision with root package name */
    private Bitmap f37000E;

    /* renamed from: F, reason: collision with root package name */
    private ByteBuffer f37001F;

    /* renamed from: G, reason: collision with root package name */
    private int f37002G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f37003H;

    /* renamed from: I, reason: collision with root package name */
    private int f37004I;

    /* renamed from: J, reason: collision with root package name */
    private byte[] f37005J;

    /* renamed from: K, reason: collision with root package name */
    private byte[] f37006K;

    /* renamed from: L, reason: collision with root package name */
    private int f37007L;

    /* renamed from: M, reason: collision with root package name */
    private int f37008M;

    /* renamed from: p, reason: collision with root package name */
    private int[] f37009p;

    /* renamed from: q, reason: collision with root package name */
    private final InterfaceC0767a f37010q;

    /* renamed from: r, reason: collision with root package name */
    private byte[] f37011r;

    /* renamed from: s, reason: collision with root package name */
    private int f37012s;

    /* renamed from: t, reason: collision with root package name */
    private int f37013t;

    /* renamed from: u, reason: collision with root package name */
    private int f37014u;

    /* renamed from: v, reason: collision with root package name */
    private c f37015v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f37016w;

    /* renamed from: x, reason: collision with root package name */
    private int f37017x;

    /* renamed from: y, reason: collision with root package name */
    private byte[] f37018y;

    /* renamed from: z, reason: collision with root package name */
    private int[] f37019z;

    /* renamed from: com.sigmob.sdk.base.views.gif.a$a, reason: collision with other inner class name */
    public interface InterfaceC0767a {
        Bitmap a(int i2, int i3, Bitmap.Config config);

        void a(Bitmap bitmap);

        void a(byte[] bArr);

        void a(int[] iArr);

        byte[] a(int i2);

        int[] b(int i2);
    }

    public a() {
        this(new f());
    }

    private d p() {
        if (this.f36996A == null) {
            this.f36996A = new d();
        }
        return this.f36996A;
    }

    private Bitmap q() {
        Bitmap bitmapA = this.f37010q.a(this.f37013t, this.f37012s, this.f37016w ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        a(bitmapA);
        return bitmapA;
    }

    private int r() {
        int iS = s();
        if (iS > 0) {
            try {
                if (this.f37011r == null) {
                    this.f37011r = this.f37010q.a(255);
                }
                int i2 = this.f37008M;
                int i3 = this.f37007L;
                int i4 = i2 - i3;
                if (i4 >= iS) {
                    System.arraycopy(this.f37006K, i3, this.f37011r, 0, iS);
                    this.f37007L += iS;
                    return iS;
                }
                if (this.f37001F.remaining() + i4 < iS) {
                    this.f37004I = 1;
                    return iS;
                }
                System.arraycopy(this.f37006K, this.f37007L, this.f37011r, 0, i4);
                this.f37007L = this.f37008M;
                t();
                int i5 = iS - i4;
                System.arraycopy(this.f37006K, 0, this.f37011r, i4, i5);
                this.f37007L += i5;
                return iS;
            } catch (Exception e2) {
                SigmobLog.d("Error Reading Block", e2);
                this.f37004I = 1;
            }
        }
        return iS;
    }

    private int s() {
        try {
            t();
            byte[] bArr = this.f37006K;
            int i2 = this.f37007L;
            this.f37007L = i2 + 1;
            return bArr[i2] & 255;
        } catch (Exception unused) {
            this.f37004I = 1;
            return 0;
        }
    }

    private void t() {
        if (this.f37008M > this.f37007L) {
            return;
        }
        if (this.f37006K == null) {
            this.f37006K = this.f37010q.a(16384);
        }
        this.f37007L = 0;
        int iMin = Math.min(this.f37001F.remaining(), 16384);
        this.f37008M = iMin;
        this.f37001F.get(this.f37006K, 0, iMin);
    }

    public int a(int i2) {
        if (i2 < 0) {
            return -1;
        }
        c cVar = this.f37015v;
        if (i2 < cVar.f37034d) {
            return cVar.f37035e.get(i2).f37021b;
        }
        return -1;
    }

    public void b() {
        this.f37015v = null;
        byte[] bArr = this.f37018y;
        if (bArr != null) {
            this.f37010q.a(bArr);
        }
        int[] iArr = this.f37019z;
        if (iArr != null) {
            this.f37010q.a(iArr);
        }
        Bitmap bitmap = this.f37000E;
        if (bitmap != null) {
            this.f37010q.a(bitmap);
        }
        this.f37000E = null;
        this.f37001F = null;
        this.f37016w = false;
        byte[] bArr2 = this.f37011r;
        if (bArr2 != null) {
            this.f37010q.a(bArr2);
        }
        byte[] bArr3 = this.f37006K;
        if (bArr3 != null) {
            this.f37010q.a(bArr3);
        }
    }

    public int c() {
        return this.f37001F.limit() + this.f37018y.length + (this.f37019z.length * 4);
    }

    public int d() {
        return this.f37014u;
    }

    public ByteBuffer e() {
        return this.f37001F;
    }

    public int f() {
        return this.f37015v.f37034d;
    }

    public int g() {
        return this.f37015v.f37039i;
    }

    public int h() {
        return this.f37015v.f37040j;
    }

    public int i() {
        return this.f37017x;
    }

    public int j() {
        int i2;
        if (this.f37015v.f37034d <= 0 || (i2 = this.f37014u) < 0) {
            return 0;
        }
        return a(i2);
    }

    public synchronized Bitmap k() {
        try {
            if (this.f37015v.f37034d <= 0 || this.f37014u < 0) {
                SigmobLog.d("unable to decode frame, frameCount=" + this.f37015v.f37034d + " framePointer=" + this.f37014u);
                this.f37004I = 1;
            }
            int i2 = this.f37004I;
            if (i2 != 1 && i2 != 2) {
                this.f37004I = 0;
                b bVar = this.f37015v.f37035e.get(this.f37014u);
                int i3 = this.f37014u - 1;
                b bVar2 = i3 >= 0 ? this.f37015v.f37035e.get(i3) : null;
                int[] iArr = bVar.f37028i;
                if (iArr == null) {
                    iArr = this.f37015v.f37036f;
                }
                this.f37009p = iArr;
                if (iArr == null) {
                    SigmobLog.d("No Valid Color Table for frame #" + this.f37014u);
                    this.f37004I = 1;
                    return null;
                }
                if (bVar.f37030k) {
                    System.arraycopy(iArr, 0, this.f36997B, 0, iArr.length);
                    int[] iArr2 = this.f36997B;
                    this.f37009p = iArr2;
                    iArr2[bVar.f37029j] = 0;
                }
                return a(bVar, bVar2);
            }
            SigmobLog.d("Unable to decode frame, status=" + this.f37004I);
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int l() {
        return this.f37004I;
    }

    public int m() {
        return this.f37015v.f37043m;
    }

    public void n() {
        this.f37014u = -1;
    }

    public void o() {
        this.f37017x = 0;
    }

    public a(InterfaceC0767a interfaceC0767a) {
        this.f36997B = new int[256];
        this.f37007L = 0;
        this.f37008M = 0;
        this.f37010q = interfaceC0767a;
        this.f37015v = new c();
    }

    private int a(int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = i2; i10 < this.f37002G + i2; i10++) {
            byte[] bArr = this.f37018y;
            if (i10 >= bArr.length || i10 >= i3) {
                break;
            }
            int i11 = this.f37009p[bArr[i10] & 255];
            if (i11 != 0) {
                i5 += (i11 >> 24) & 255;
                i6 += (i11 >> 16) & 255;
                i7 += (i11 >> 8) & 255;
                i8 += i11 & 255;
                i9++;
            }
        }
        int i12 = i2 + i4;
        for (int i13 = i12; i13 < this.f37002G + i12; i13++) {
            byte[] bArr2 = this.f37018y;
            if (i13 >= bArr2.length || i13 >= i3) {
                break;
            }
            int i14 = this.f37009p[bArr2[i13] & 255];
            if (i14 != 0) {
                i5 += (i14 >> 24) & 255;
                i6 += (i14 >> 16) & 255;
                i7 += (i14 >> 8) & 255;
                i8 += i14 & 255;
                i9++;
            }
        }
        if (i9 == 0) {
            return 0;
        }
        return ((i5 / i9) << 24) | ((i6 / i9) << 16) | ((i7 / i9) << 8) | (i8 / i9);
    }

    public boolean b(int i2) {
        if (i2 < -1 || i2 >= f()) {
            return false;
        }
        this.f37014u = i2;
        return true;
    }

    public a(InterfaceC0767a interfaceC0767a, c cVar, ByteBuffer byteBuffer) {
        this(interfaceC0767a, cVar, byteBuffer, 1);
    }

    public int a(InputStream inputStream, int i2) throws IOException {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2 > 0 ? i2 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i3 = inputStream.read(bArr, 0, 16384);
                    if (i3 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i3);
                }
                byteArrayOutputStream.flush();
                a(byteArrayOutputStream.toByteArray());
            } catch (IOException e2) {
                SigmobLog.d("Error reading data from stream", e2);
            }
        } else {
            this.f37004I = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e3) {
                SigmobLog.d("Error closing stream", e3);
            }
        }
        return this.f37004I;
    }

    public a(InterfaceC0767a interfaceC0767a, c cVar, ByteBuffer byteBuffer, int i2) {
        this(interfaceC0767a);
        a(cVar, byteBuffer, i2);
    }

    public synchronized int a(byte[] bArr) {
        try {
            c cVarC = p().a(bArr).c();
            this.f37015v = cVarC;
            if (bArr != null) {
                a(cVarC, bArr);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f37004I;
    }

    private Bitmap a(b bVar, b bVar2) {
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr2 = this.f37019z;
        int i6 = 0;
        if (bVar2 == null) {
            Arrays.fill(iArr2, 0);
        }
        int i7 = 3;
        int i8 = 2;
        int i9 = 1;
        if (bVar2 != null && (i4 = bVar2.f37022c) > 0) {
            if (i4 == 2) {
                if (!bVar.f37030k) {
                    c cVar = this.f37015v;
                    i5 = cVar.f37031a;
                    if (bVar.f37028i != null && cVar.f37032b == bVar.f37029j) {
                    }
                    a(iArr2, bVar2, i5);
                } else if (this.f37014u == 0) {
                    this.f37016w = true;
                }
                i5 = 0;
                a(iArr2, bVar2, i5);
            } else if (i4 == 3) {
                Bitmap bitmap = this.f37000E;
                if (bitmap == null) {
                    a(iArr2, bVar2, 0);
                } else {
                    int i10 = bVar2.f37027h;
                    int i11 = this.f37002G;
                    int i12 = i10 / i11;
                    int i13 = bVar2.f37025f / i11;
                    int i14 = bVar2.f37026g / i11;
                    int i15 = bVar2.f37024e / i11;
                    int i16 = this.f37013t;
                    bitmap.getPixels(iArr2, (i13 * i16) + i15, i16, i15, i13, i14, i12);
                }
            }
        }
        int[] iArr3 = iArr2;
        a(bVar);
        int i17 = bVar.f37027h;
        int i18 = this.f37002G;
        int i19 = i17 / i18;
        int i20 = bVar.f37025f / i18;
        int i21 = bVar.f37026g / i18;
        int i22 = bVar.f37024e / i18;
        boolean z2 = this.f37014u == 0;
        int i23 = 8;
        int i24 = 0;
        int i25 = 1;
        while (i6 < i19) {
            if (bVar.f37023d) {
                if (i24 >= i19) {
                    i25++;
                    if (i25 == i8) {
                        i24 = 4;
                    } else if (i25 == i7) {
                        i24 = i8;
                        i23 = 4;
                    } else if (i25 == 4) {
                        i23 = i8;
                        i24 = i9;
                    }
                }
                i3 = i24 + i23;
            } else {
                i3 = i24;
                i24 = i6;
            }
            int i26 = i24 + i20;
            if (i26 < this.f37012s) {
                int i27 = this.f37013t;
                int i28 = i26 * i27;
                int i29 = i28 + i22;
                int i30 = i29 + i21;
                if (i28 + i27 < i30) {
                    i30 = i28 + i27;
                }
                int i31 = this.f37002G;
                int i32 = i6 * i31 * bVar.f37026g;
                int i33 = ((i30 - i29) * i31) + i32;
                int i34 = i29;
                while (i34 < i30) {
                    int[] iArr4 = iArr3;
                    int i35 = i19;
                    int iA = this.f37002G == 1 ? this.f37009p[this.f37018y[i32] & 255] : a(i32, i33, bVar.f37026g);
                    if (iA != 0) {
                        iArr4[i34] = iA;
                    } else if (!this.f37016w && z2) {
                        this.f37016w = true;
                    }
                    i32 += this.f37002G;
                    i34++;
                    iArr3 = iArr4;
                    i19 = i35;
                }
            }
            i6++;
            iArr3 = iArr3;
            i24 = i3;
            i19 = i19;
            i7 = 3;
            i8 = 2;
            i9 = 1;
        }
        int[] iArr5 = iArr3;
        if (this.f37003H && ((i2 = bVar.f37022c) == 0 || i2 == 1)) {
            if (this.f37000E == null) {
                this.f37000E = q();
            }
            Bitmap bitmap2 = this.f37000E;
            int i36 = this.f37013t;
            iArr = iArr5;
            bitmap2.setPixels(iArr, 0, i36, 0, 0, i36, this.f37012s);
        } else {
            iArr = iArr5;
        }
        Bitmap bitmapQ = q();
        int i37 = this.f37013t;
        bitmapQ.setPixels(iArr, 0, i37, 0, 0, i37, this.f37012s);
        return bitmapQ;
    }

    private static void a(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0145 A[PHI: r5
      0x0145: PHI (r5v11 int) = (r5v7 int), (r5v13 int), (r5v13 int) binds: [B:56:0x012b, B:62:0x0143, B:60:0x013c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v40, types: [short] */
    /* JADX WARN: Type inference failed for: r1v44 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.sigmob.sdk.base.views.gif.b r29) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.gif.a.a(com.sigmob.sdk.base.views.gif.b):void");
    }

    public synchronized void a(c cVar, ByteBuffer byteBuffer) {
        a(cVar, byteBuffer, 1);
    }

    public synchronized void a(c cVar, ByteBuffer byteBuffer, int i2) {
        try {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
            int iHighestOneBit = Integer.highestOneBit(i2);
            this.f37004I = 0;
            this.f37015v = cVar;
            this.f37016w = false;
            this.f37014u = -1;
            o();
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f37001F = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.f37001F.order(ByteOrder.LITTLE_ENDIAN);
            this.f37003H = false;
            Iterator<b> it = cVar.f37035e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f37022c == 3) {
                    this.f37003H = true;
                    break;
                }
            }
            this.f37002G = iHighestOneBit;
            int i3 = cVar.f37043m;
            this.f37013t = i3 / iHighestOneBit;
            int i4 = cVar.f37039i;
            this.f37012s = i4 / iHighestOneBit;
            this.f37018y = this.f37010q.a(i3 * i4);
            this.f37019z = this.f37010q.b(this.f37013t * this.f37012s);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void a(c cVar, byte[] bArr) {
        a(cVar, ByteBuffer.wrap(bArr));
    }

    private void a(int[] iArr, b bVar, int i2) {
        int i3 = bVar.f37027h;
        int i4 = this.f37002G;
        int i5 = i3 / i4;
        int i6 = bVar.f37025f / i4;
        int i7 = bVar.f37026g / i4;
        int i8 = bVar.f37024e / i4;
        int i9 = this.f37013t;
        int i10 = (i6 * i9) + i8;
        int i11 = (i5 * i9) + i10;
        while (i10 < i11) {
            int i12 = i10 + i7;
            for (int i13 = i10; i13 < i12; i13++) {
                iArr[i13] = i2;
            }
            i10 += this.f37013t;
        }
    }

    public boolean a() {
        if (this.f37015v.f37034d <= 0) {
            return false;
        }
        if (this.f37014u == f() - 1) {
            this.f37017x++;
        }
        c cVar = this.f37015v;
        int i2 = cVar.f37040j;
        if (i2 != -1 && this.f37017x > i2) {
            return false;
        }
        this.f37014u = (this.f37014u + 1) % cVar.f37034d;
        return true;
    }
}
