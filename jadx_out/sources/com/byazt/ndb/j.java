package com.byazt.ndb;

import com.umeng.analytics.pro.ek;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, 832, 38})
/* loaded from: classes3.dex */
public class j implements Serializable, Comparable<j> {

    /* renamed from: a, reason: collision with root package name */
    public transient String f23542a;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f23543j;

    /* renamed from: w, reason: collision with root package name */
    public transient int f23544w;
    public static final char[] hp = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: l, reason: collision with root package name */
    public static final Charset f23541l = Charset.forName("UTF-8");
    public static final j jx = hp(new byte[0]);

    public j(byte[] bArr) {
        this.f23543j = bArr;
    }

    public static j hp(byte... bArr) {
        if (bArr != null) {
            return new j((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            int iJx = jVar.jx();
            byte[] bArr = this.f23543j;
            if (iJx == bArr.length && jVar.hp(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = this.f23544w;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = Arrays.hashCode(this.f23543j);
        this.f23544w = iHashCode;
        return iHashCode;
    }

    public byte[] j() {
        return (byte[]) this.f23543j.clone();
    }

    public int jx() {
        return this.f23543j.length;
    }

    public String l() {
        byte[] bArr = this.f23543j;
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

    public String toString() {
        if (this.f23543j.length == 0) {
            return "[size=0]";
        }
        String strHp = hp();
        int iHp = hp(strHp, 64);
        if (iHp == -1) {
            if (this.f23543j.length <= 64) {
                return "[hex=" + l() + "]";
            }
            return "[size=" + this.f23543j.length + " hex=" + hp(0, 64).l() + "…]";
        }
        String strReplace = strHp.substring(0, iHp).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iHp >= strHp.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.f23543j.length + " text=" + strReplace + "…]";
    }

    public String hp() {
        String str = this.f23542a;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f23543j, f23541l);
        this.f23542a = str2;
        return str2;
    }

    public static j hp(String str) {
        if (str != null) {
            j jVar = new j(str.getBytes(e.hp));
            jVar.f23542a = str;
            return jVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public j hp(int i2, int i3) {
        if (i2 >= 0) {
            byte[] bArr = this.f23543j;
            if (i3 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f23543j.length + ")");
            }
            int i4 = i3 - i2;
            if (i4 >= 0) {
                if (i2 == 0 && i3 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i2, bArr2, 0, i4);
                return new j(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte hp(int i2) {
        return this.f23543j[i2];
    }

    public boolean hp(int i2, j jVar, int i3, int i4) {
        return jVar.hp(i3, this.f23543j, i2, i4);
    }

    public boolean hp(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0) {
            return false;
        }
        byte[] bArr2 = this.f23543j;
        return i2 <= bArr2.length - i4 && i3 >= 0 && i3 <= bArr.length - i4 && e.hp(bArr2, i2, bArr, i3, i4);
    }

    @Override // java.lang.Comparable
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    public int compareTo(j jVar) {
        int iJx = jx();
        int iJx2 = jVar.jx();
        int iMin = Math.min(iJx, iJx2);
        for (int i2 = 0; i2 < iMin; i2++) {
            int iHp = hp(i2) & 255;
            int iHp2 = jVar.hp(i2) & 255;
            if (iHp != iHp2) {
                return iHp < iHp2 ? -1 : 1;
            }
        }
        if (iJx == iJx2) {
            return 0;
        }
        return iJx < iJx2 ? -1 : 1;
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
