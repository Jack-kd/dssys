package com.anythink.core.common.n.b;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.e.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    private static final Pattern f6884a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b, reason: collision with root package name */
    private static final Pattern f6885b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c, reason: collision with root package name */
    private static final Pattern f6886c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f6887d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e, reason: collision with root package name */
    private final String f6888e;

    /* renamed from: f, reason: collision with root package name */
    private final String f6889f;

    /* renamed from: g, reason: collision with root package name */
    private final long f6890g;

    /* renamed from: h, reason: collision with root package name */
    private final String f6891h;

    /* renamed from: i, reason: collision with root package name */
    private final String f6892i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f6893j;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f6894k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f6895l;

    /* renamed from: m, reason: collision with root package name */
    private final boolean f6896m;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        String f6897a;

        /* renamed from: b, reason: collision with root package name */
        String f6898b;

        /* renamed from: d, reason: collision with root package name */
        String f6900d;

        /* renamed from: f, reason: collision with root package name */
        boolean f6902f;

        /* renamed from: g, reason: collision with root package name */
        boolean f6903g;

        /* renamed from: h, reason: collision with root package name */
        boolean f6904h;

        /* renamed from: i, reason: collision with root package name */
        boolean f6905i;

        /* renamed from: c, reason: collision with root package name */
        long f6899c = 253402300799999L;

        /* renamed from: e, reason: collision with root package name */
        String f6901e = ServiceReference.DELIMITER;

        private a a(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.f6897a = str;
            return this;
        }

        private a b(String str) {
            if (str == null) {
                throw new NullPointerException("value == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.f6898b = str;
            return this;
        }

        private a c(String str) {
            return a(str, false);
        }

        private a d(String str) {
            return a(str, true);
        }

        private a e(String str) {
            if (!str.startsWith(ServiceReference.DELIMITER)) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.f6901e = str;
            return this;
        }

        private m c() {
            return new m(this);
        }

        private a a(long j2) {
            if (j2 <= 0) {
                j2 = Long.MIN_VALUE;
            }
            if (j2 > 253402300799999L) {
                j2 = 253402300799999L;
            }
            this.f6899c = j2;
            this.f6904h = true;
            return this;
        }

        private a b() {
            this.f6903g = true;
            return this;
        }

        private a a(String str, boolean z2) {
            if (str != null) {
                String strA = com.anythink.core.common.n.b.a.c.a(str);
                if (strA != null) {
                    this.f6900d = strA;
                    this.f6905i = z2;
                    return this;
                }
                throw new IllegalArgumentException("unexpected domain: ".concat(str));
            }
            throw new NullPointerException("domain == null");
        }

        private a a() {
            this.f6902f = true;
            return this;
        }
    }

    private m(String str, String str2, long j2, String str3, String str4, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f6888e = str;
        this.f6889f = str2;
        this.f6890g = j2;
        this.f6891h = str3;
        this.f6892i = str4;
        this.f6893j = z2;
        this.f6894k = z3;
        this.f6896m = z4;
        this.f6895l = z5;
    }

    private boolean c() {
        return this.f6895l;
    }

    private long d() {
        return this.f6890g;
    }

    private boolean e() {
        return this.f6896m;
    }

    private String f() {
        return this.f6891h;
    }

    private String g() {
        return this.f6892i;
    }

    private boolean h() {
        return this.f6894k;
    }

    private boolean i() {
        return this.f6893j;
    }

    private String j() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6888e);
        sb.append('=');
        sb.append(this.f6889f);
        if (this.f6895l) {
            if (this.f6890g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(com.anythink.core.common.n.b.a.c.d.a(new Date(this.f6890g)));
            }
        }
        if (!this.f6896m) {
            sb.append("; domain=");
            sb.append(this.f6891h);
        }
        sb.append("; path=");
        sb.append(this.f6892i);
        if (this.f6893j) {
            sb.append("; secure");
        }
        if (this.f6894k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public final String a() {
        return this.f6888e;
    }

    public final String b() {
        return this.f6889f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return mVar.f6888e.equals(this.f6888e) && mVar.f6889f.equals(this.f6889f) && mVar.f6891h.equals(this.f6891h) && mVar.f6892i.equals(this.f6892i) && mVar.f6890g == this.f6890g && mVar.f6893j == this.f6893j && mVar.f6894k == this.f6894k && mVar.f6895l == this.f6895l && mVar.f6896m == this.f6896m;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.f6888e.hashCode() + 527) * 31) + this.f6889f.hashCode()) * 31) + this.f6891h.hashCode()) * 31) + this.f6892i.hashCode()) * 31;
        long j2 = this.f6890g;
        return ((((((((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (!this.f6893j ? 1 : 0)) * 31) + (!this.f6894k ? 1 : 0)) * 31) + (!this.f6895l ? 1 : 0)) * 31) + (!this.f6896m ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6888e);
        sb.append('=');
        sb.append(this.f6889f);
        if (this.f6895l) {
            if (this.f6890g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(com.anythink.core.common.n.b.a.c.d.a(new Date(this.f6890g)));
            }
        }
        if (!this.f6896m) {
            sb.append("; domain=");
            sb.append(this.f6891h);
        }
        sb.append("; path=");
        sb.append(this.f6892i);
        if (this.f6893j) {
            sb.append("; secure");
        }
        if (this.f6894k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    private boolean a(v vVar) {
        if (!(this.f6896m ? vVar.f6943m.equals(this.f6891h) : a(vVar.f6943m, this.f6891h))) {
            return false;
        }
        String str = this.f6892i;
        String strH = vVar.h();
        if (strH.equals(str) || (strH.startsWith(str) && (str.endsWith(ServiceReference.DELIMITER) || strH.charAt(str.length()) == '/'))) {
            return !this.f6893j || vVar.c();
        }
        return false;
    }

    private static m b(v vVar, String str) {
        return a(System.currentTimeMillis(), vVar, str);
    }

    private static String b(String str) {
        if (!str.endsWith(com.anythink.core.common.d.i.f2495E)) {
            if (str.startsWith(com.anythink.core.common.d.i.f2495E)) {
                str = str.substring(1);
            }
            String strA = com.anythink.core.common.n.b.a.c.a(str);
            if (strA != null) {
                return strA;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public m(a aVar) {
        String str = aVar.f6897a;
        if (str != null) {
            String str2 = aVar.f6898b;
            if (str2 != null) {
                String str3 = aVar.f6900d;
                if (str3 != null) {
                    this.f6888e = str;
                    this.f6889f = str2;
                    this.f6890g = aVar.f6899c;
                    this.f6891h = str3;
                    this.f6892i = aVar.f6901e;
                    this.f6893j = aVar.f6902f;
                    this.f6894k = aVar.f6903g;
                    this.f6895l = aVar.f6904h;
                    this.f6896m = aVar.f6905i;
                    return;
                }
                throw new NullPointerException("builder.domain == null");
            }
            throw new NullPointerException("builder.value == null");
        }
        throw new NullPointerException("builder.name == null");
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.anythink.core.common.n.b.a.c.c(str);
    }

    private static boolean a(v vVar, String str) {
        String strH = vVar.h();
        if (strH.equals(str)) {
            return true;
        }
        if (strH.startsWith(str)) {
            return str.endsWith(ServiceReference.DELIMITER) || strH.charAt(str.length()) == '/';
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v13 */
    private static m a(long j2, v vVar, String str) throws NumberFormatException {
        v vVar2;
        long j3;
        String strSubstring;
        int i2;
        boolean z2;
        int i3;
        int i4;
        int iIndexOf;
        String str2 = str;
        int length = str2.length();
        ?? r3 = 0;
        char c2 = ';';
        int iA = com.anythink.core.common.n.b.a.c.a(str2, 0, length, ';');
        char c3 = '=';
        int iA2 = com.anythink.core.common.n.b.a.c.a(str2, 0, iA, '=');
        String str3 = null;
        if (iA2 == iA) {
            return null;
        }
        String strC = com.anythink.core.common.n.b.a.c.c(str2, 0, iA2);
        if (!strC.isEmpty()) {
            int i5 = -1;
            if (com.anythink.core.common.n.b.a.c.b(strC) == -1) {
                boolean z3 = true;
                String strC2 = com.anythink.core.common.n.b.a.c.c(str2, iA2 + 1, iA);
                if (com.anythink.core.common.n.b.a.c.b(strC2) != -1) {
                    return null;
                }
                int i6 = iA + 1;
                boolean z4 = false;
                boolean z5 = false;
                boolean z6 = false;
                String strSubstring2 = null;
                boolean z7 = true;
                long jA = -1;
                long timeInMillis = 253402300799999L;
                while (i6 < length) {
                    int iA3 = com.anythink.core.common.n.b.a.c.a(str2, i6, length, c2);
                    int iA4 = com.anythink.core.common.n.b.a.c.a(str2, i6, iA3, c3);
                    String strC3 = com.anythink.core.common.n.b.a.c.c(str2, i6, iA4);
                    if (iA4 < iA3) {
                        strSubstring = com.anythink.core.common.n.b.a.c.c(str2, iA4 + 1, iA3);
                    } else {
                        strSubstring = "";
                    }
                    if (strC3.equalsIgnoreCase("expires")) {
                        try {
                            int length2 = strSubstring.length();
                            int iA5 = a(strSubstring, r3, length2, r3);
                            try {
                                Matcher matcher = f6887d.matcher(strSubstring);
                                int i7 = i5;
                                int i8 = i7;
                                int i9 = i8;
                                int i10 = i9;
                                int i11 = i10;
                                int i12 = i11;
                                while (iA5 < length2) {
                                    int iA6 = a(strSubstring, iA5 + 1, length2, z3);
                                    matcher.region(iA5, iA6);
                                    int i13 = i8;
                                    if (i13 != -1) {
                                        i3 = -1;
                                    } else if (matcher.usePattern(f6887d).matches()) {
                                        i13 = Integer.parseInt(matcher.group(1));
                                        i11 = Integer.parseInt(matcher.group(2));
                                        i12 = Integer.parseInt(matcher.group(3));
                                        iIndexOf = i9;
                                        i2 = length;
                                        try {
                                            i8 = i13;
                                            iA5 = a(strSubstring, iA6 + 1, length2, false);
                                            length = i2;
                                            z3 = true;
                                            i9 = iIndexOf;
                                        } catch (IllegalArgumentException unused) {
                                            c2 = ';';
                                            z2 = true;
                                            i6 = iA3 + 1;
                                            str2 = str;
                                            z3 = z2;
                                            length = i2;
                                            r3 = 0;
                                            c3 = '=';
                                            i5 = -1;
                                        }
                                    } else {
                                        i3 = -1;
                                    }
                                    int i14 = i10;
                                    if (i14 != i3) {
                                        int i15 = length;
                                        i4 = i3;
                                        iIndexOf = i9;
                                        i2 = i15;
                                    } else if (matcher.usePattern(f6886c).matches()) {
                                        i10 = Integer.parseInt(matcher.group(1));
                                        iIndexOf = i9;
                                        i2 = length;
                                        i8 = i13;
                                        iA5 = a(strSubstring, iA6 + 1, length2, false);
                                        length = i2;
                                        z3 = true;
                                        i9 = iIndexOf;
                                    } else {
                                        iIndexOf = i9;
                                        i2 = length;
                                        i4 = -1;
                                    }
                                    if (iIndexOf == i4) {
                                        Pattern pattern = f6885b;
                                        if (matcher.usePattern(pattern).matches()) {
                                            iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                                            i10 = i14;
                                            i8 = i13;
                                            iA5 = a(strSubstring, iA6 + 1, length2, false);
                                            length = i2;
                                            z3 = true;
                                            i9 = iIndexOf;
                                        } else {
                                            i4 = -1;
                                            if (i7 == i4 && matcher.usePattern(f6884a).matches()) {
                                                i7 = Integer.parseInt(matcher.group(1));
                                            }
                                            i10 = i14;
                                            i8 = i13;
                                            iA5 = a(strSubstring, iA6 + 1, length2, false);
                                            length = i2;
                                            z3 = true;
                                            i9 = iIndexOf;
                                        }
                                    } else {
                                        if (i7 == i4) {
                                            i7 = Integer.parseInt(matcher.group(1));
                                        }
                                        i10 = i14;
                                        i8 = i13;
                                        iA5 = a(strSubstring, iA6 + 1, length2, false);
                                        length = i2;
                                        z3 = true;
                                        i9 = iIndexOf;
                                    }
                                }
                                int i16 = i8;
                                int i17 = i9;
                                int i18 = i10;
                                i2 = length;
                                if (i7 >= 70 && i7 <= 99) {
                                    i7 += Constants.UPNP_MULTICAST_PORT;
                                }
                                if (i7 >= 0 && i7 <= 69) {
                                    i7 += 2000;
                                }
                                if (i7 < 1601) {
                                    throw new IllegalArgumentException();
                                }
                                if (i17 == -1) {
                                    throw new IllegalArgumentException();
                                }
                                if (i18 <= 0 || i18 > 31) {
                                    throw new IllegalArgumentException();
                                }
                                if (i16 < 0 || i16 > 23) {
                                    throw new IllegalArgumentException();
                                }
                                int i19 = i11;
                                c2 = ';';
                                if (i19 < 0 || i19 > 59) {
                                    throw new IllegalArgumentException();
                                }
                                int i20 = i12;
                                if (i20 >= 0 && i20 <= 59) {
                                    try {
                                        GregorianCalendar gregorianCalendar = new GregorianCalendar(com.anythink.core.common.n.b.a.c.f6220f);
                                        gregorianCalendar.setLenient(false);
                                        gregorianCalendar.set(1, i7);
                                        gregorianCalendar.set(2, i17 - 1);
                                        gregorianCalendar.set(5, i18);
                                        gregorianCalendar.set(11, i16);
                                        gregorianCalendar.set(12, i19);
                                        gregorianCalendar.set(13, i20);
                                        gregorianCalendar.set(14, 0);
                                        timeInMillis = gregorianCalendar.getTimeInMillis();
                                        z2 = true;
                                        z4 = true;
                                    } catch (NumberFormatException | IllegalArgumentException unused2) {
                                        z2 = true;
                                        i6 = iA3 + 1;
                                        str2 = str;
                                        z3 = z2;
                                        length = i2;
                                        r3 = 0;
                                        c3 = '=';
                                        i5 = -1;
                                    }
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            } catch (IllegalArgumentException unused3) {
                                i2 = length;
                            }
                        } catch (IllegalArgumentException unused4) {
                            i2 = length;
                        }
                    } else {
                        i2 = length;
                        if (strC3.equalsIgnoreCase("max-age")) {
                            jA = a(strSubstring);
                            z2 = true;
                            z4 = true;
                        } else if (strC3.equalsIgnoreCase(b.a.f8705H)) {
                            if (!strSubstring.endsWith(com.anythink.core.common.d.i.f2495E)) {
                                if (strSubstring.startsWith(com.anythink.core.common.d.i.f2495E)) {
                                    z2 = true;
                                    try {
                                        strSubstring = strSubstring.substring(1);
                                    } catch (IllegalArgumentException unused5) {
                                        continue;
                                    }
                                } else {
                                    z2 = true;
                                }
                                String strA = com.anythink.core.common.n.b.a.c.a(strSubstring);
                                if (strA == null) {
                                    throw new IllegalArgumentException();
                                }
                                str3 = strA;
                                z7 = false;
                            } else {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            z2 = true;
                            if (strC3.equalsIgnoreCase("path")) {
                                strSubstring2 = strSubstring;
                            } else if (strC3.equalsIgnoreCase("secure")) {
                                z5 = true;
                            } else if (strC3.equalsIgnoreCase("httponly")) {
                                z6 = true;
                            }
                        }
                    }
                    i6 = iA3 + 1;
                    str2 = str;
                    z3 = z2;
                    length = i2;
                    r3 = 0;
                    c3 = '=';
                    i5 = -1;
                }
                if (jA == Long.MIN_VALUE) {
                    j3 = Long.MIN_VALUE;
                    vVar2 = vVar;
                } else if (jA != -1) {
                    long j4 = j2 + (jA <= 9223372036854775L ? jA * 1000 : LocationRequestCompat.PASSIVE_INTERVAL);
                    if (j4 < j2 || j4 > 253402300799999L) {
                        vVar2 = vVar;
                        j3 = 253402300799999L;
                    } else {
                        vVar2 = vVar;
                        j3 = j4;
                    }
                } else {
                    vVar2 = vVar;
                    j3 = timeInMillis;
                }
                String str4 = vVar2.f6943m;
                if (str3 == null) {
                    str3 = str4;
                } else if (!a(str4, str3)) {
                    return null;
                }
                if (str4.length() != str3.length() && com.anythink.core.common.n.b.a.i.a.a().a(str3) == null) {
                    return null;
                }
                if (strSubstring2 == null || !strSubstring2.startsWith(ServiceReference.DELIMITER)) {
                    String strH = vVar2.h();
                    int iLastIndexOf = strH.lastIndexOf(47);
                    if (iLastIndexOf == 0) {
                        strSubstring2 = ServiceReference.DELIMITER;
                    } else {
                        strSubstring2 = strH.substring(0, iLastIndexOf);
                    }
                }
                return new m(strC, strC2, j3, str3, strSubstring2, z5, z6, z7, z4);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.lang.String r13, int r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.m.a(java.lang.String, int):long");
    }

    private static int a(String str, int i2, int i3, boolean z2) {
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z2)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    private static long a(String str) throws NumberFormatException {
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

    public static List<m> a(v vVar, u uVar) throws NumberFormatException {
        List<String> listB = uVar.b("Set-Cookie");
        int size = listB.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            m mVarA = a(System.currentTimeMillis(), vVar, listB.get(i2));
            if (mVarA != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(mVarA);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.EMPTY_LIST;
    }
}
