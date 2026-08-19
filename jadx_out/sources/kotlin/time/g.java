package kotlin.time;

import java.io.IOException;
import kotlin.jvm.internal.j;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f51497a = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f51498b = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f51499c = {3, 6};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f51500d = {1, 2, 4, 5, 7, 8};

    public static final String b(Instant instant) throws IOException {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        h hVarA = h.f51501h.a(instant);
        int iG = hVarA.g();
        int i2 = 0;
        if (Math.abs(iG) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (iG >= 0) {
                sb2.append(iG + 10000);
                j.d(sb2.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb2.append(iG - 10000);
                j.d(sb2.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb.append((CharSequence) sb2);
        } else {
            if (iG >= 10000) {
                sb.append('+');
            }
            sb.append(iG);
        }
        sb.append('-');
        c(sb, sb, hVarA.d());
        sb.append('-');
        c(sb, sb, hVarA.a());
        sb.append('T');
        c(sb, sb, hVarA.b());
        sb.append(':');
        c(sb, sb, hVarA.c());
        sb.append(':');
        c(sb, sb, hVarA.f());
        if (hVarA.e() != 0) {
            sb.append('.');
            while (true) {
                int iE = hVarA.e();
                iArr = f51497a;
                int i3 = i2 + 1;
                if (iE % iArr[i3] != 0) {
                    break;
                }
                i2 = i3;
            }
            int i4 = i2 - (i2 % 3);
            String strValueOf = String.valueOf((hVarA.e() / iArr[i4]) + iArr[9 - i4]);
            j.c(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strValueOf.substring(1);
            j.d(strSubstring, "substring(...)");
            sb.append(strSubstring);
        }
        sb.append('Z');
        return sb.toString();
    }

    public static final void c(Appendable appendable, StringBuilder sb, int i2) throws IOException {
        if (i2 < 10) {
            appendable.append('0');
        }
        sb.append(i2);
    }
}
