package com.anythink.core.common.n.c;

import com.umeng.analytics.pro.ek;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class f implements Serializable, Comparable<f> {

    /* renamed from: a, reason: collision with root package name */
    static final char[] f7070a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b, reason: collision with root package name */
    public static final f f7071b = a(new byte[0]);

    /* renamed from: f, reason: collision with root package name */
    private static final long f7072f = 1;

    /* renamed from: c, reason: collision with root package name */
    final byte[] f7073c;

    /* renamed from: d, reason: collision with root package name */
    transient int f7074d;

    /* renamed from: e, reason: collision with root package name */
    transient String f7075e;

    public f(byte[] bArr) {
        this.f7073c = bArr;
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f n() {
        return d("SHA-512");
    }

    public String b() {
        return C1119b.a(this.f7073c);
    }

    public f c() {
        return d("MD5");
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(f fVar) {
        f fVar2 = fVar;
        int iJ = j();
        int iJ2 = fVar2.j();
        int iMin = Math.min(iJ, iJ2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iB = b(i2) & 255;
            int iB2 = fVar2.b(i2) & 255;
            if (iB != iB2) {
                return iB < iB2 ? -1 : 1;
            }
        }
        if (iJ == iJ2) {
            return 0;
        }
        return iJ < iJ2 ? -1 : 1;
    }

    public f d() {
        return d("SHA-1");
    }

    public f e() {
        return d("SHA-256");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iJ = fVar.j();
            byte[] bArr = this.f7073c;
            if (iJ == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public String f() {
        return C1119b.b(this.f7073c);
    }

    public String g() {
        byte[] bArr = this.f7073c;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f7070a;
            cArr[i2] = cArr2[(b3 >> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }

    public f h() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f7073c;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b3 = bArr[i2];
            if (b3 >= 65 && b3 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i2] = (byte) (b3 + 32);
                for (int i3 = i2 + 1; i3 < bArr2.length; i3++) {
                    byte b4 = bArr2[i3];
                    if (b4 >= 65 && b4 <= 90) {
                        bArr2[i3] = (byte) (b4 + 32);
                    }
                }
                return new f(bArr2);
            }
            i2++;
        }
    }

    public int hashCode() {
        int i2 = this.f7074d;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.f7073c);
        this.f7074d = iHashCode;
        return iHashCode;
    }

    public f i() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f7073c;
            if (i2 >= bArr.length) {
                return this;
            }
            byte b3 = bArr[i2];
            if (b3 >= 97 && b3 <= 122) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i2] = (byte) (b3 - 32);
                for (int i3 = i2 + 1; i3 < bArr2.length; i3++) {
                    byte b4 = bArr2[i3];
                    if (b4 >= 97 && b4 <= 122) {
                        bArr2[i3] = (byte) (b4 - 32);
                    }
                }
                return new f(bArr2);
            }
            i2++;
        }
    }

    public int j() {
        return this.f7073c.length;
    }

    public byte[] k() {
        return (byte[]) this.f7073c.clone();
    }

    public byte[] l() {
        return this.f7073c;
    }

    public ByteBuffer m() {
        return ByteBuffer.wrap(this.f7073c).asReadOnlyBuffer();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
    
        r3 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r9 = this;
            byte[] r0 = r9.f7073c
            int r0 = r0.length
            if (r0 != 0) goto L8
            java.lang.String r0 = "[size=0]"
            return r0
        L8:
            java.lang.String r0 = r9.a()
            int r1 = r0.length()
            r2 = 0
            r3 = r2
            r4 = r3
        L13:
            r5 = -1
            r6 = 64
            if (r3 >= r1) goto L3c
            if (r4 != r6) goto L1b
            goto L40
        L1b:
            int r7 = r0.codePointAt(r3)
            boolean r8 = java.lang.Character.isISOControl(r7)
            if (r8 == 0) goto L2d
            r8 = 10
            if (r7 == r8) goto L2d
            r8 = 13
            if (r7 != r8) goto L32
        L2d:
            r8 = 65533(0xfffd, float:9.1831E-41)
            if (r7 != r8) goto L34
        L32:
            r3 = r5
            goto L40
        L34:
            int r4 = r4 + 1
            int r5 = java.lang.Character.charCount(r7)
            int r3 = r3 + r5
            goto L13
        L3c:
            int r3 = r0.length()
        L40:
            java.lang.String r1 = "…]"
            java.lang.String r4 = "[size="
            java.lang.String r7 = "]"
            if (r3 != r5) goto L86
            byte[] r0 = r9.f7073c
            int r0 = r0.length
            if (r0 > r6) goto L63
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "[hex="
            r0.<init>(r1)
            java.lang.String r1 = r9.g()
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            return r0
        L63:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r4)
            byte[] r3 = r9.f7073c
            int r3 = r3.length
            r0.append(r3)
            java.lang.String r3 = " hex="
            r0.append(r3)
            com.anythink.core.common.n.c.f r2 = r9.a(r2, r6)
            java.lang.String r2 = r2.g()
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        L86:
            java.lang.String r2 = r0.substring(r2, r3)
            java.lang.String r5 = "\\"
            java.lang.String r6 = "\\\\"
            java.lang.String r2 = r2.replace(r5, r6)
            java.lang.String r5 = "\n"
            java.lang.String r6 = "\\n"
            java.lang.String r2 = r2.replace(r5, r6)
            java.lang.String r5 = "\r"
            java.lang.String r6 = "\\r"
            java.lang.String r2 = r2.replace(r5, r6)
            int r0 = r0.length()
            if (r3 >= r0) goto Lc3
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r4)
            byte[] r3 = r9.f7073c
            int r3 = r3.length
            r0.append(r3)
            java.lang.String r3 = " text="
            r0.append(r3)
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        Lc3:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "[text="
            r0.<init>(r1)
            r0.append(r2)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.f.toString():java.lang.String");
    }

    public static f c(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((a(str.charAt(i3)) << 4) + a(str.charAt(i3 + 1)));
        }
        return a(bArr);
    }

    private f d(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f7073c));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    private boolean e(f fVar) {
        return a(j() - fVar.j(), fVar, 0, fVar.j());
    }

    private int f(f fVar) {
        return a(fVar.l(), 0);
    }

    public f b(f fVar) {
        return a("HmacSHA256", fVar);
    }

    private static f a(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            y.a(bArr.length, i2, i3);
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            return new f(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f b(String str) {
        if (str != null) {
            byte[] bArrA = C1119b.a(str);
            if (bArrA != null) {
                return new f(bArrA);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    private int e(byte[] bArr) {
        return b(bArr, j());
    }

    private f d(f fVar) {
        return a("HmacSHA512", fVar);
    }

    private static int e(String str) {
        int length = str.length();
        int iCharCount = 0;
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 == 64) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i2++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    private int d(byte[] bArr) {
        return a(bArr, 0);
    }

    private int g(f fVar) {
        return b(fVar.l(), j());
    }

    public byte b(int i2) {
        return this.f7073c[i2];
    }

    private boolean b(byte[] bArr) {
        return a(0, bArr, 0, bArr.length);
    }

    private static f a(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new f(bArr);
        }
        throw new IllegalArgumentException("data == null");
    }

    private int b(f fVar, int i2) {
        return b(fVar.l(), i2);
    }

    private int h(f fVar) {
        int iJ = j();
        int iJ2 = fVar.j();
        int iMin = Math.min(iJ, iJ2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iB = b(i2) & 255;
            int iB2 = fVar.b(i2) & 255;
            if (iB != iB2) {
                return iB < iB2 ? -1 : 1;
            }
        }
        if (iJ == iJ2) {
            return 0;
        }
        return iJ < iJ2 ? -1 : 1;
    }

    public int b(byte[] bArr, int i2) {
        for (int iMin = Math.min(i2, this.f7073c.length - bArr.length); iMin >= 0; iMin--) {
            if (y.a(this.f7073c, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public final boolean c(f fVar) {
        return a(0, fVar, 0, fVar.j());
    }

    private boolean c(byte[] bArr) {
        return a(j() - bArr.length, bArr, 0, bArr.length);
    }

    public static f a(String str) {
        if (str != null) {
            f fVar = new f(str.getBytes(y.f7144a));
            fVar.f7075e = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static f a(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new f(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public String a() {
        String str = this.f7075e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f7073c, y.f7144a);
        this.f7075e = str2;
        return str2;
    }

    public String a(Charset charset) {
        if (charset != null) {
            return new String(this.f7073c, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public f a(f fVar) {
        return a("HmacSHA1", fVar);
    }

    private f a(String str, f fVar) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(fVar.k(), str));
            return a(mac.doFinal(this.f7073c));
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        }
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c2)));
        }
        return c2 - '7';
    }

    private static f a(InputStream inputStream, int i2) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i2 >= 0) {
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (i3 < i2) {
                int i4 = inputStream.read(bArr, i3, i2 - i3);
                if (i4 == -1) {
                    throw new EOFException();
                }
                i3 += i4;
            }
            return new f(bArr);
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(i2)));
    }

    public f a(int i2) {
        return a(i2, this.f7073c.length);
    }

    public f a(int i2, int i3) {
        if (i2 >= 0) {
            byte[] bArr = this.f7073c;
            if (i3 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f7073c.length + ")");
            }
            int i4 = i3 - i2;
            if (i4 >= 0) {
                if (i2 == 0 && i3 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i2, bArr2, 0, i4);
                return new f(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public void a(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            outputStream.write(this.f7073c);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    public void a(c cVar) {
        byte[] bArr = this.f7073c;
        cVar.c(bArr, 0, bArr.length);
    }

    public boolean a(int i2, f fVar, int i3, int i4) {
        return fVar.a(0, this.f7073c, i2, i4);
    }

    public boolean a(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0) {
            return false;
        }
        byte[] bArr2 = this.f7073c;
        return i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && y.a(bArr2, i2, bArr, i3, i4);
    }

    private int a(f fVar, int i2) {
        return a(fVar.l(), i2);
    }

    public int a(byte[] bArr, int i2) {
        int length = this.f7073c.length - bArr.length;
        for (int iMax = Math.max(i2, 0); iMax <= length; iMax++) {
            if (y.a(this.f7073c, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    private void a(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException, SecurityException, IllegalArgumentException {
        int i2 = objectInputStream.readInt();
        if (i2 >= 0) {
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (i3 < i2) {
                int i4 = objectInputStream.read(bArr, i3, i2 - i3);
                if (i4 == -1) {
                    throw new EOFException();
                }
                i3 += i4;
            }
            f fVar = new f(bArr);
            try {
                Field declaredField = f.class.getDeclaredField("c");
                declaredField.setAccessible(true);
                declaredField.set(this, fVar.f7073c);
                return;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (NoSuchFieldException unused2) {
                throw new AssertionError();
            }
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(i2)));
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f7073c.length);
        objectOutputStream.write(this.f7073c);
    }
}
