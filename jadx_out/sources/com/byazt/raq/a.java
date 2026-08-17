package com.byazt.raq;

import com.umeng.analytics.pro.ek;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 1165, 54})
/* loaded from: classes3.dex */
public class a implements Serializable, Comparable<a> {
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: l, reason: collision with root package name */
    public static final a f25093l = hp(new byte[0]);

    /* renamed from: j, reason: collision with root package name */
    public transient int f25094j;
    public final byte[] jx;

    /* renamed from: w, reason: collision with root package name */
    public transient String f25095w;

    public a(byte[] bArr) {
        this.jx = bArr;
    }

    public static a hp(byte... bArr) {
        if (bArr != null) {
            return new a((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public a a() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.jx;
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
                return new a(bArr2);
            }
            i2++;
        }
    }

    public int eb() {
        return this.jx.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            int iEb = aVar.eb();
            byte[] bArr = this.jx;
            if (iEb == bArr.length && aVar.hp(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.f25094j;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.jx);
        this.f25094j = iHashCode;
        return iHashCode;
    }

    public a j() {
        return jx("SHA-256");
    }

    public a jx() {
        return jx("SHA-1");
    }

    public String l() {
        return l.hp(this.jx);
    }

    public byte[] s() {
        return (byte[]) this.jx.clone();
    }

    public String toString() {
        if (this.jx.length == 0) {
            return "[size=0]";
        }
        String strHp = hp();
        int iHp = hp(strHp, 64);
        if (iHp == -1) {
            if (this.jx.length <= 64) {
                return "[hex=" + w() + "]";
            }
            return "[size=" + this.jx.length + " hex=" + hp(0, 64).w() + "…]";
        }
        String strReplace = strHp.substring(0, iHp).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iHp >= strHp.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.jx.length + " text=" + strReplace + "…]";
    }

    public String w() {
        byte[] bArr = this.jx;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (byte b3 : bArr) {
            int i3 = i2 + 1;
            char[] cArr2 = hp;
            cArr[i2] = cArr2[(b3 >> 4) & 15];
            i2 += 2;
            cArr[i3] = cArr2[b3 & ek.f49295m];
        }
        return new String(cArr);
    }

    private a jx(String str) {
        try {
            return hp(MessageDigest.getInstance(str).digest(this.jx));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static a l(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) ((hp(str.charAt(i3)) << 4) + hp(str.charAt(i3 + 1)));
        }
        return hp(bArr);
    }

    public static a hp(String str) {
        if (str != null) {
            a aVar = new a(str.getBytes(n.hp));
            aVar.f25095w = str;
            return aVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public String hp() {
        String str = this.f25095w;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.jx, n.hp);
        this.f25095w = str2;
        return str2;
    }

    private static int hp(char c2) {
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

    public a hp(int i2, int i3) {
        if (i2 >= 0) {
            byte[] bArr = this.jx;
            if (i3 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.jx.length + ")");
            }
            int i4 = i3 - i2;
            if (i4 >= 0) {
                if (i2 == 0 && i3 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i2, bArr2, 0, i4);
                return new a(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    @Override // java.lang.Comparable
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        int iEb = eb();
        int iEb2 = aVar.eb();
        int iMin = Math.min(iEb, iEb2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iHp = hp(i2) & 255;
            int iHp2 = aVar.hp(i2) & 255;
            if (iHp != iHp2) {
                return iHp < iHp2 ? -1 : 1;
            }
        }
        if (iEb == iEb2) {
            return 0;
        }
        return iEb < iEb2 ? -1 : 1;
    }

    public byte hp(int i2) {
        return this.jx[i2];
    }

    public void hp(jx jxVar) {
        byte[] bArr = this.jx;
        jxVar.jx(bArr, 0, bArr.length);
    }

    public boolean hp(int i2, a aVar, int i3, int i4) {
        return aVar.hp(i3, this.jx, i2, i4);
    }

    public boolean hp(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0) {
            return false;
        }
        byte[] bArr2 = this.jx;
        return i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && n.hp(bArr2, i2, bArr, i3, i4);
    }

    public final boolean hp(a aVar) {
        return hp(0, aVar, 0, aVar.eb());
    }

    public static int hp(String str, int i2) {
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
}
