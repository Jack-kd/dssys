package kotlin;

import kotlin.text.AbstractC1622b;

/* loaded from: classes5.dex */
public abstract class k {
    public static final int a(long j2, long j3) {
        return kotlin.jvm.internal.j.h(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
    }

    public static final String b(long j2, int i2) {
        if (j2 >= 0) {
            String string = Long.toString(j2, AbstractC1622b.a(i2));
            kotlin.jvm.internal.j.d(string, "toString(...)");
            return string;
        }
        long j3 = i2;
        long j4 = ((j2 >>> 1) / j3) << 1;
        long j5 = j2 - (j4 * j3);
        if (j5 >= j3) {
            j5 -= j3;
            j4++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j4, AbstractC1622b.a(i2));
        kotlin.jvm.internal.j.d(string2, "toString(...)");
        sb.append(string2);
        String string3 = Long.toString(j5, AbstractC1622b.a(i2));
        kotlin.jvm.internal.j.d(string3, "toString(...)");
        sb.append(string3);
        return sb.toString();
    }
}
