package com.byazt.hq;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.d.i;
import com.anythink.core.e.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, 158, 19})
/* loaded from: classes2.dex */
public final class jl {

    /* renamed from: a, reason: collision with root package name */
    public final String f20889a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f20890e;
    public final long eb;
    public final boolean gu;
    public final boolean jl;

    /* renamed from: q, reason: collision with root package name */
    public final String f20891q;

    /* renamed from: s, reason: collision with root package name */
    public final String f20892s;

    /* renamed from: w, reason: collision with root package name */
    public final String f20893w;
    public final boolean zy;
    public static final Pattern hp = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f20888l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern jx = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: j, reason: collision with root package name */
    public static final Pattern f20887j = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    private jl(String str, String str2, long j2, String str3, String str4, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f20893w = str;
        this.f20889a = str2;
        this.eb = j2;
        this.f20892s = str3;
        this.f20891q = str4;
        this.f20890e = z2;
        this.gu = z3;
        this.zy = z4;
        this.jl = z5;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof jl)) {
            return false;
        }
        jl jlVar = (jl) obj;
        return jlVar.f20893w.equals(this.f20893w) && jlVar.f20889a.equals(this.f20889a) && jlVar.f20892s.equals(this.f20892s) && jlVar.f20891q.equals(this.f20891q) && jlVar.eb == this.eb && jlVar.f20890e == this.f20890e && jlVar.gu == this.gu && jlVar.jl == this.jl && jlVar.zy == this.zy;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f20893w.hashCode() + 527) * 31) + this.f20889a.hashCode()) * 31) + this.f20892s.hashCode()) * 31) + this.f20891q.hashCode()) * 31;
        long j2 = this.eb;
        return ((((((((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (!this.f20890e ? 1 : 0)) * 31) + (!this.gu ? 1 : 0)) * 31) + (!this.jl ? 1 : 0)) * 31) + (!this.zy ? 1 : 0);
    }

    public String hp() {
        return this.f20893w;
    }

    public String l() {
        return this.f20889a;
    }

    public String toString() {
        return hp(false);
    }

    private static boolean hp(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.byazt.ru.jx.jx(str);
    }

    private static String l(String str) {
        if (str.endsWith(i.f2495E)) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(i.f2495E)) {
            str = str.substring(1);
        }
        String strHp = com.byazt.ru.jx.hp(str);
        if (strHp != null) {
            return strHp;
        }
        throw new IllegalArgumentException();
    }

    public static jl hp(ec ecVar, String str) {
        return hp(System.currentTimeMillis(), ecVar, str);
    }

    public static jl hp(long j2, ec ecVar, String str) throws NumberFormatException {
        long j3;
        String str2;
        int length = str.length();
        char c2 = ';';
        int iHp = com.byazt.ru.jx.hp(str, 0, length, ';');
        int iHp2 = com.byazt.ru.jx.hp(str, 0, iHp, '=');
        String strL = null;
        if (iHp2 == iHp) {
            return null;
        }
        String strJx = com.byazt.ru.jx.jx(str, 0, iHp2);
        if (strJx.isEmpty() || com.byazt.ru.jx.l(strJx) != -1) {
            return null;
        }
        String strJx2 = com.byazt.ru.jx.jx(str, iHp2 + 1, iHp);
        if (com.byazt.ru.jx.l(strJx2) != -1) {
            return null;
        }
        int i2 = iHp + 1;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = true;
        long jHp = 253402300799999L;
        long jHp2 = -1;
        String str3 = null;
        while (i2 < length) {
            int iHp3 = com.byazt.ru.jx.hp(str, i2, length, c2);
            int iHp4 = com.byazt.ru.jx.hp(str, i2, iHp3, '=');
            String strJx3 = com.byazt.ru.jx.jx(str, i2, iHp4);
            String strJx4 = iHp4 < iHp3 ? com.byazt.ru.jx.jx(str, iHp4 + 1, iHp3) : "";
            if ("expires".equalsIgnoreCase(strJx3)) {
                try {
                    jHp = hp(strJx4, 0, strJx4.length());
                    z2 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if ("max-age".equalsIgnoreCase(strJx3)) {
                jHp2 = hp(strJx4);
                z2 = true;
            } else if (b.a.f8705H.equalsIgnoreCase(strJx3)) {
                strL = l(strJx4);
                z5 = false;
            } else if ("path".equalsIgnoreCase(strJx3)) {
                str3 = strJx4;
            } else if ("secure".equalsIgnoreCase(strJx3)) {
                z3 = true;
            } else if ("httponly".equalsIgnoreCase(strJx3)) {
                z4 = true;
            }
            i2 = iHp3 + 1;
            c2 = ';';
        }
        if (jHp2 == Long.MIN_VALUE) {
            j3 = Long.MIN_VALUE;
        } else if (jHp2 != -1) {
            long j4 = j2 + (jHp2 <= 9223372036854775L ? jHp2 * 1000 : LocationRequestCompat.PASSIVE_INTERVAL);
            j3 = (j4 < j2 || j4 > 253402300799999L) ? 253402300799999L : j4;
        } else {
            j3 = jHp;
        }
        String strEb = ecVar.eb();
        if (strL == null) {
            str2 = strEb;
        } else {
            if (!hp(strEb, strL)) {
                return null;
            }
            str2 = strL;
        }
        if (strEb.length() != str2.length() && com.byazt.bry.hp.hp().hp(str2) == null) {
            return null;
        }
        String strSubstring = ServiceReference.DELIMITER;
        if (str3 == null || !str3.startsWith(ServiceReference.DELIMITER)) {
            String strQ = ecVar.q();
            int iLastIndexOf = strQ.lastIndexOf(47);
            if (iLastIndexOf != 0) {
                strSubstring = strQ.substring(0, iLastIndexOf);
            }
            str3 = strSubstring;
        }
        return new jl(strJx, strJx2, j3, str2, str3, z3, z4, z5, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long hp(java.lang.String r12, int r13, int r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.hq.jl.hp(java.lang.String, int, int):long");
    }

    private static int hp(String str, int i2, int i3, boolean z2) {
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z2)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    private static long hp(String str) throws NumberFormatException {
        try {
            long j2 = Long.parseLong(str);
            if (j2 <= 0) {
                return Long.MIN_VALUE;
            }
            return j2;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                if (str.startsWith("-")) {
                    return Long.MIN_VALUE;
                }
                return LocationRequestCompat.PASSIVE_INTERVAL;
            }
            throw e2;
        }
    }

    public static List<jl> hp(ec ecVar, vv vvVar) {
        List<String> listL = vvVar.l("Set-Cookie");
        int size = listL.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            jl jlVarHp = hp(ecVar, listL.get(i2));
            if (jlVarHp != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(jlVarHp);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.EMPTY_LIST;
    }

    public String hp(boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20893w);
        sb.append('=');
        sb.append(this.f20889a);
        if (this.jl) {
            if (this.eb == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(com.byazt.pn.j.hp(new Date(this.eb)));
            }
        }
        if (!this.zy) {
            sb.append("; domain=");
            if (z2) {
                sb.append(i.f2495E);
            }
            sb.append(this.f20892s);
        }
        sb.append("; path=");
        sb.append(this.f20891q);
        if (this.f20890e) {
            sb.append("; secure");
        }
        if (this.gu) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
