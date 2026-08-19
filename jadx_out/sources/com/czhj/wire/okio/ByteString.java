package com.czhj.wire.okio;

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

/* loaded from: classes3.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;

    /* renamed from: b, reason: collision with root package name */
    final byte[] f29770b;

    /* renamed from: c, reason: collision with root package name */
    transient int f29771c;

    /* renamed from: d, reason: collision with root package name */
    transient String f29772d;

    /* renamed from: a, reason: collision with root package name */
    static final char[] f29769a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = of(new byte[0]);

    public ByteString(byte[] bArr) {
        this.f29770b = bArr;
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 >= 'A' && c2 <= 'F') {
            return c2 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c2);
    }

    public static ByteString decodeBase64(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] bArrDecode = Base64.decode(str);
        if (bArrDecode != null) {
            return new ByteString(bArrDecode);
        }
        return null;
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((a(str.charAt(i3)) << 4) + a(str.charAt(i3 + 1)));
        }
        return of(bArr);
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new ByteString(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
        byteString.f29772d = str;
        return byteString;
    }

    public static ByteString of(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("data == null");
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new ByteString(bArr);
    }

    public static ByteString read(InputStream inputStream, int i2) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i2);
        }
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i3, i2 - i3);
            if (i4 == -1) {
                throw new EOFException();
            }
            i3 += i4;
        }
        return new ByteString(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException, SecurityException, IllegalArgumentException {
        ByteString byteString = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("b");
            declaredField.setAccessible(true);
            declaredField.set(this, byteString.f29770b);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f29770b.length);
        objectOutputStream.write(this.f29770b);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.f29770b).asReadOnlyBuffer();
    }

    public String base64() {
        return Base64.encode(this.f29770b);
    }

    public String base64Url() {
        return Base64.encodeUrl(this.f29770b);
    }

    @Override // java.lang.Comparable
    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int iMin = Math.min(size, size2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int i3 = getByte(i2) & 255;
            int i4 = byteString.getByte(i2) & 255;
            if (i3 != i4) {
                return i3 < i4 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int size = byteString.size();
            byte[] bArr = this.f29770b;
            if (size == bArr.length && byteString.rangeEquals(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte getByte(int i2) {
        return this.f29770b[i2];
    }

    public int hashCode() {
        int i2 = this.f29771c;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.f29770b);
        this.f29771c = iHashCode;
        return iHashCode;
    }

    public String hex() {
        byte[] bArr = this.f29770b;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = f29769a;
            cArr[i2] = cArr2[(b3 >> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }

    public ByteString hmacSha1(ByteString byteString) {
        return a("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return a("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return a("HmacSHA512", byteString);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.a(), 0);
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.a(), size());
    }

    public ByteString md5() {
        return a("MD5");
    }

    public boolean rangeEquals(int i2, ByteString byteString, int i3, int i4) {
        return byteString.rangeEquals(i3, this.f29770b, i2, i4);
    }

    public ByteString sha1() {
        return a("SHA-1");
    }

    public ByteString sha256() {
        return a("SHA-256");
    }

    public ByteString sha512() {
        return a("SHA-512");
    }

    public int size() {
        return this.f29770b.length;
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.f29770b, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public ByteString substring(int i2) {
        return substring(i2, this.f29770b.length);
    }

    public ByteString toAsciiLowercase() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f29770b;
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
                return new ByteString(bArr2);
            }
            i2++;
        }
    }

    public ByteString toAsciiUppercase() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f29770b;
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
                return new ByteString(bArr2);
            }
            i2++;
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.f29770b.clone();
    }

    public String toString() {
        String strReplace;
        StringBuilder sb;
        if (this.f29770b.length == 0) {
            return "[size=0]";
        }
        String strUtf8 = utf8();
        int iA = a(strUtf8, 64);
        if (iA != -1) {
            strReplace = strUtf8.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (iA < strUtf8.length()) {
                sb = new StringBuilder();
                sb.append("[size=");
                sb.append(this.f29770b.length);
                sb.append(" text=");
                sb.append(strReplace);
                sb.append("…]");
            } else {
                sb = new StringBuilder();
                sb.append("[text=");
                sb.append(strReplace);
                sb.append("]");
            }
        } else if (this.f29770b.length <= 64) {
            sb = new StringBuilder();
            sb.append("[hex=");
            strReplace = hex();
            sb.append(strReplace);
            sb.append("]");
        } else {
            sb = new StringBuilder();
            sb.append("[size=");
            sb.append(this.f29770b.length);
            sb.append(" hex=");
            strReplace = substring(0, 64).hex();
            sb.append(strReplace);
            sb.append("…]");
        }
        return sb.toString();
    }

    public String utf8() {
        String str = this.f29772d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f29770b, Util.UTF_8);
        this.f29772d = str2;
        return str2;
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.f29770b);
    }

    public static int a(String str, int i2) {
        int length = str.length();
        int iCharCount = 0;
        int i3 = 0;
        while (iCharCount < length) {
            if (i3 == i2) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i3++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }

    public static ByteString of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    public final int indexOf(ByteString byteString, int i2) {
        return indexOf(byteString.a(), i2);
    }

    public final int lastIndexOf(ByteString byteString, int i2) {
        return lastIndexOf(byteString.a(), i2);
    }

    public boolean rangeEquals(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0) {
            return false;
        }
        byte[] bArr2 = this.f29770b;
        return i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && Util.arrayRangeEquals(bArr2, i2, bArr, i3, i4);
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public ByteString substring(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f29770b;
        if (i3 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f29770b.length + ")");
        }
        int i4 = i3 - i2;
        if (i4 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i2 == 0 && i3 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i2, bArr2, 0, i4);
        return new ByteString(bArr2);
    }

    private ByteString a(String str) {
        try {
            return of(MessageDigest.getInstance(str).digest(this.f29770b));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static ByteString of(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        Util.checkOffsetAndCount(bArr.length, i2, i3);
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return new ByteString(bArr2);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    private ByteString a(String str, ByteString byteString) throws NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return of(mac.doFinal(this.f29770b));
        } catch (InvalidKeyException e2) {
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        }
    }

    public int indexOf(byte[] bArr, int i2) {
        int length = this.f29770b.length - bArr.length;
        for (int iMax = Math.max(i2, 0); iMax <= length; iMax++) {
            if (Util.arrayRangeEquals(this.f29770b, iMax, bArr, 0, bArr.length)) {
                return iMax;
            }
        }
        return -1;
    }

    public int lastIndexOf(byte[] bArr, int i2) {
        for (int iMin = Math.min(i2, this.f29770b.length - bArr.length); iMin >= 0; iMin--) {
            if (Util.arrayRangeEquals(this.f29770b, iMin, bArr, 0, bArr.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public void a(Buffer buffer) {
        byte[] bArr = this.f29770b;
        buffer.write(bArr, 0, bArr.length);
    }

    public byte[] a() {
        return this.f29770b;
    }
}
