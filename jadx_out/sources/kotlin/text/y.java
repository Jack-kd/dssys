package kotlin.text;

/* loaded from: classes5.dex */
public abstract class y extends x {
    public static Integer m(String str) {
        kotlin.jvm.internal.j.e(str, "<this>");
        return n(str, 10);
    }

    public static final Integer n(String str, int i2) {
        boolean z2;
        int i3;
        int i4;
        kotlin.jvm.internal.j.e(str, "<this>");
        AbstractC1622b.a(i2);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i5 = 0;
        char cCharAt = str.charAt(0);
        int i6 = -2147483647;
        if (kotlin.jvm.internal.j.g(cCharAt, 48) < 0) {
            i3 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i6 = Integer.MIN_VALUE;
                z2 = true;
            }
        } else {
            z2 = false;
            i3 = 0;
        }
        int i7 = -59652323;
        while (i3 < length) {
            int iB = AbstractC1622b.b(str.charAt(i3), i2);
            if (iB < 0) {
                return null;
            }
            if ((i5 < i7 && (i7 != -59652323 || i5 < (i7 = i6 / i2))) || (i4 = i5 * i2) < i6 + iB) {
                return null;
            }
            i5 = i4 - iB;
            i3++;
        }
        return z2 ? Integer.valueOf(i5) : Integer.valueOf(-i5);
    }

    public static Long o(String str) {
        kotlin.jvm.internal.j.e(str, "<this>");
        return p(str, 10);
    }

    public static final Long p(String str, int i2) {
        boolean z2;
        kotlin.jvm.internal.j.e(str, "<this>");
        AbstractC1622b.a(i2);
        int length = str.length();
        Long l2 = null;
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        long j2 = -9223372036854775807L;
        if (kotlin.jvm.internal.j.g(cCharAt, 48) < 0) {
            z2 = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
                i3 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j2 = Long.MIN_VALUE;
                i3 = 1;
            }
        } else {
            z2 = false;
        }
        long j3 = 0;
        long j4 = -256204778801521550L;
        while (i3 < length) {
            int iB = AbstractC1622b.b(str.charAt(i3), i2);
            if (iB < 0) {
                return l2;
            }
            if (j3 < j4) {
                if (j4 != -256204778801521550L) {
                    return l2;
                }
                j4 = j2 / i2;
                if (j3 < j4) {
                    return l2;
                }
            }
            Long l3 = l2;
            int i4 = i3;
            long j5 = j3 * i2;
            long j6 = iB;
            if (j5 < j2 + j6) {
                return l3;
            }
            j3 = j5 - j6;
            i3 = i4 + 1;
            l2 = l3;
        }
        return z2 ? Long.valueOf(j3) : Long.valueOf(-j3);
    }
}
