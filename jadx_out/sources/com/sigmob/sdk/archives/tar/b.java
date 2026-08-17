package com.sigmob.sdk.archives.tar;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class b extends com.sigmob.sdk.archives.c {

    /* renamed from: b, reason: collision with root package name */
    private static final int f35415b = 256;

    /* renamed from: c, reason: collision with root package name */
    private static final int f35416c = 8192;

    /* renamed from: a, reason: collision with root package name */
    protected final d f35417a;

    /* renamed from: d, reason: collision with root package name */
    private boolean f35418d;

    /* renamed from: e, reason: collision with root package name */
    private long f35419e;

    /* renamed from: f, reason: collision with root package name */
    private long f35420f;

    /* renamed from: g, reason: collision with root package name */
    private byte[] f35421g;

    /* renamed from: h, reason: collision with root package name */
    private a f35422h;

    public b(InputStream inputStream) {
        this(inputStream, 10240, 512);
    }

    private byte[] h() throws IOException {
        if (this.f35418d) {
            return null;
        }
        byte[] bArrD = this.f35417a.d();
        if (bArrD == null || this.f35417a.a(bArrD)) {
            this.f35418d = true;
        }
        if (this.f35418d) {
            return null;
        }
        return bArrD;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if (r7 == (-1)) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        if (r7 != 61) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
    
        r5 = r5.toString();
        r4 = r4 - r3;
        r3 = new char[r4];
        r8 = r0.read(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r8 != r4) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r1.put(r5, new java.lang.String(r3, 0, r4 - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
    
        throw new java.io.IOException("Failed to read Paxheader. Expected " + r4 + " chars, read " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        r5.append((char) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        r5 = new java.lang.StringBuffer();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        r7 = r0.read();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.archives.tar.b.i():void");
    }

    private void j() throws IOException {
        byte[] bArrH;
        if (this.f35422h.m()) {
            do {
                bArrH = h();
                if (this.f35418d) {
                    this.f35422h = null;
                    return;
                }
            } while (new c(bArrH).a());
        }
    }

    @Override // com.sigmob.sdk.archives.c
    public com.sigmob.sdk.archives.a a() throws IOException {
        return e();
    }

    @Override // java.io.InputStream
    public int available() {
        long j2 = this.f35419e;
        long j3 = this.f35420f;
        if (j2 - j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j2 - j3);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f35417a.h();
    }

    public int d() {
        return this.f35417a.b();
    }

    public a e() throws IOException {
        if (this.f35418d) {
            return null;
        }
        if (this.f35422h != null) {
            long j2 = this.f35419e;
            long jSkip = this.f35420f;
            do {
                j2 -= jSkip;
                if (j2 > 0) {
                    jSkip = skip(j2);
                } else {
                    this.f35421g = null;
                }
            } while (jSkip > 0);
            throw new RuntimeException("failed to skip current tar entry");
        }
        byte[] bArrH = h();
        if (this.f35418d) {
            this.f35422h = null;
            return null;
        }
        a aVar = new a(bArrH);
        this.f35422h = aVar;
        this.f35420f = 0L;
        this.f35419e = aVar.b();
        if (this.f35422h.p()) {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bArr = new byte[256];
            while (true) {
                int i2 = read(bArr);
                if (i2 < 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, i2));
            }
            a();
            if (this.f35422h == null) {
                return null;
            }
            if (stringBuffer.length() > 0 && stringBuffer.charAt(stringBuffer.length() - 1) == 0) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            this.f35422h.a(stringBuffer.toString());
        }
        if (this.f35422h.q()) {
            i();
        }
        if (this.f35422h.o()) {
            j();
        }
        return this.f35422h;
    }

    public final a f() {
        return this.f35422h;
    }

    public final boolean g() {
        return this.f35418d;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int length;
        long j2 = this.f35420f;
        long j3 = this.f35419e;
        if (j2 >= j3) {
            return -1;
        }
        if (i3 + j2 > j3) {
            i3 = (int) (j3 - j2);
        }
        byte[] bArr2 = this.f35421g;
        if (bArr2 != null) {
            length = i3 > bArr2.length ? bArr2.length : i3;
            System.arraycopy(bArr2, 0, bArr, i2, length);
            byte[] bArr3 = this.f35421g;
            if (length >= bArr3.length) {
                this.f35421g = null;
            } else {
                int length2 = bArr3.length - length;
                byte[] bArr4 = new byte[length2];
                System.arraycopy(bArr3, length, bArr4, 0, length2);
                this.f35421g = bArr4;
            }
            i3 -= length;
            i2 += length;
        } else {
            length = 0;
        }
        while (i3 > 0) {
            byte[] bArrD = this.f35417a.d();
            if (bArrD == null) {
                throw new IOException("unexpected EOF with " + i3 + " bytes unread. Occured at byte: " + c());
            }
            a(bArrD.length);
            int length3 = bArrD.length;
            if (length3 > i3) {
                System.arraycopy(bArrD, 0, bArr, i2, i3);
                int i4 = length3 - i3;
                byte[] bArr5 = new byte[i4];
                this.f35421g = bArr5;
                System.arraycopy(bArrD, i3, bArr5, 0, i4);
                length3 = i3;
            } else {
                System.arraycopy(bArrD, 0, bArr, i2, length3);
            }
            length += length3;
            i3 -= length3;
            i2 += length3;
        }
        this.f35420f += length;
        return length;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    @Override // java.io.InputStream
    public long skip(long j2) throws IOException {
        byte[] bArr = new byte[8192];
        long j3 = j2;
        while (j3 > 0) {
            long j4 = 8192;
            if (j3 <= j4) {
                j4 = j3;
            }
            int i2 = read(bArr, 0, (int) j4);
            if (i2 == -1) {
                break;
            }
            j3 -= i2;
        }
        return j2 - j3;
    }

    public b(InputStream inputStream, int i2) {
        this(inputStream, i2, 512);
    }

    public final void a(a aVar) {
        this.f35422h = aVar;
    }

    public b(InputStream inputStream, int i2, int i3) {
        this.f35417a = new d(inputStream, i2, i3);
        this.f35421g = null;
        this.f35418d = false;
    }

    public final void a(boolean z2) {
        this.f35418d = z2;
    }

    @Override // com.sigmob.sdk.archives.c
    public boolean a(com.sigmob.sdk.archives.a aVar) {
        if (aVar instanceof a) {
            return !((a) aVar).o();
        }
        return false;
    }

    public static boolean a(byte[] bArr, int i2) {
        if (i2 < 265) {
            return false;
        }
        if (com.sigmob.sdk.archives.utils.a.a("ustar\u0000", bArr, 257, 6) && com.sigmob.sdk.archives.utils.a.a(e.f35456V, bArr, 263, 2)) {
            return true;
        }
        if (com.sigmob.sdk.archives.utils.a.a(e.f35457W, bArr, 257, 6) && (com.sigmob.sdk.archives.utils.a.a(e.f35458X, bArr, 263, 2) || com.sigmob.sdk.archives.utils.a.a(e.f35459Y, bArr, 263, 2))) {
            return true;
        }
        return com.sigmob.sdk.archives.utils.a.a("ustar\u0000", bArr, 257, 6) && com.sigmob.sdk.archives.utils.a.a(e.aa, bArr, 263, 2);
    }
}
