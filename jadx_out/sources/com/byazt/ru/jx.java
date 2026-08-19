package com.byazt.ru;

import androidx.core.location.LocationRequestCompat;
import com.byazt.hq.d;
import com.byazt.hq.n;
import com.byazt.hq.ud;
import com.byazt.raq.a;
import com.byazt.raq.ec;
import com.byazt.raq.w;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

@com.byazt.kj.hp(hp = {0, 1, 1274, 30})
/* loaded from: classes3.dex */
public final class jx {
    public static final byte[] hp;

    /* renamed from: j, reason: collision with root package name */
    public static final d f25375j;
    public static final ud jx;

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f25377l = new String[0];

    /* renamed from: q, reason: collision with root package name */
    public static final a f25378q = a.l("efbbbf");

    /* renamed from: e, reason: collision with root package name */
    public static final a f25374e = a.l("feff");
    public static final a gu = a.l("fffe");
    public static final a jl = a.l("0000ffff");
    public static final a zy = a.l("ffff0000");

    /* renamed from: w, reason: collision with root package name */
    public static final Charset f25382w = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f25373a = Charset.forName("ISO-8859-1");

    /* renamed from: k, reason: collision with root package name */
    public static final Charset f25376k = Charset.forName("UTF-16BE");

    /* renamed from: v, reason: collision with root package name */
    public static final Charset f25381v = Charset.forName("UTF-16LE");

    /* renamed from: u, reason: collision with root package name */
    public static final Charset f25380u = Charset.forName("UTF-32BE");
    public static final Charset xs = Charset.forName("UTF-32LE");
    public static final TimeZone eb = TimeZone.getTimeZone("GMT");

    /* renamed from: s, reason: collision with root package name */
    public static final Comparator<String> f25379s = new Comparator<String>() { // from class: com.byazt.ru.jx.1
        @Override // java.util.Comparator
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };
    public static final Pattern vv = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    static {
        byte[] bArr = new byte[0];
        hp = bArr;
        jx = ud.hp(null, bArr);
        f25375j = d.hp((n) null, bArr);
    }

    public static int hp(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            return -1;
        }
        return c2 - '7';
    }

    private static boolean j(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static String jx(String str, int i2, int i3) {
        int iHp = hp(str, i2, i3);
        return str.substring(iHp, l(str, iHp, i3));
    }

    public static boolean l(ec ecVar, int i2, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jO_ = ecVar.hp().jx() ? ecVar.hp().o_() - jNanoTime : Long.MAX_VALUE;
        ecVar.hp().hp(Math.min(jO_, timeUnit.toNanos(i2)) + jNanoTime);
        try {
            com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
            while (ecVar.hp(jxVar, 8192L) != -1) {
                jxVar.vv();
            }
            if (jO_ == LocationRequestCompat.PASSIVE_INTERVAL) {
                ecVar.hp().a();
                return true;
            }
            ecVar.hp().hp(jNanoTime + jO_);
            return true;
        } catch (InterruptedIOException unused) {
            if (jO_ == LocationRequestCompat.PASSIVE_INTERVAL) {
                ecVar.hp().a();
                return false;
            }
            ecVar.hp().hp(jNanoTime + jO_);
            return false;
        } catch (Throwable th) {
            if (jO_ == LocationRequestCompat.PASSIVE_INTERVAL) {
                ecVar.hp().a();
            } else {
                ecVar.hp().hp(jNanoTime + jO_);
            }
            throw th;
        }
    }

    public static void hp(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean hp(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0078, code lost:
    
        if (r4 == 16) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007a, code lost:
    
        if (r5 != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007d, code lost:
    
        r12 = r4 - r5;
        java.lang.System.arraycopy(r1, r5, r1, 16 - r12, r12);
        java.util.Arrays.fill(r1, r5, (16 - r4) + r5, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008d, code lost:
    
        return java.net.InetAddress.getByAddress(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0093, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress j(java.lang.String r12, int r13, int r14) {
        /*
            r0 = 16
            byte[] r1 = new byte[r0]
            r2 = 0
            r3 = -1
            r4 = r2
            r5 = r3
            r6 = r5
        L9:
            r7 = 0
            if (r13 >= r14) goto L78
            if (r4 != r0) goto Lf
            return r7
        Lf:
            int r8 = r13 + 2
            r9 = 2
            if (r8 > r14) goto L27
            java.lang.String r10 = "::"
            boolean r10 = r12.regionMatches(r13, r10, r2, r9)
            if (r10 == 0) goto L27
            if (r5 == r3) goto L1f
            return r7
        L1f:
            int r4 = r4 + 2
            r5 = r4
            if (r8 != r14) goto L25
            goto L78
        L25:
            r6 = r8
            goto L4b
        L27:
            if (r4 == 0) goto L34
            java.lang.String r8 = ":"
            r10 = 1
            boolean r8 = r12.regionMatches(r13, r8, r2, r10)
            if (r8 == 0) goto L36
            int r13 = r13 + 1
        L34:
            r6 = r13
            goto L4b
        L36:
            java.lang.String r8 = "."
            boolean r13 = r12.regionMatches(r13, r8, r2, r10)
            if (r13 == 0) goto L4a
            int r13 = r4 + (-2)
            boolean r12 = hp(r12, r6, r14, r1, r13)
            if (r12 != 0) goto L47
            return r7
        L47:
            int r4 = r4 + 2
            goto L78
        L4a:
            return r7
        L4b:
            r8 = r2
            r13 = r6
        L4d:
            if (r13 >= r14) goto L5f
            char r10 = r12.charAt(r13)
            int r10 = hp(r10)
            if (r10 == r3) goto L5f
            int r8 = r8 << 4
            int r8 = r8 + r10
            int r13 = r13 + 1
            goto L4d
        L5f:
            int r10 = r13 - r6
            if (r10 == 0) goto L77
            r11 = 4
            if (r10 <= r11) goto L67
            goto L77
        L67:
            int r7 = r4 + 1
            int r10 = r8 >>> 8
            r10 = r10 & 255(0xff, float:3.57E-43)
            byte r10 = (byte) r10
            r1[r4] = r10
            int r4 = r4 + r9
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r1[r7] = r8
            goto L9
        L77:
            return r7
        L78:
            if (r4 == r0) goto L89
            if (r5 != r3) goto L7d
            return r7
        L7d:
            int r12 = r4 - r5
            int r13 = 16 - r12
            java.lang.System.arraycopy(r1, r5, r1, r13, r12)
            int r0 = r0 - r4
            int r0 = r0 + r5
            java.util.Arrays.fill(r1, r5, r0, r2)
        L89:
            java.net.InetAddress r12 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L8e
            return r12
        L8e:
            java.lang.AssertionError r12 = new java.lang.AssertionError
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ru.jx.j(java.lang.String, int, int):java.net.InetAddress");
    }

    public static boolean jx(String str) {
        return vv.matcher(str).matches();
    }

    public static void hp(Socket socket) throws IOException {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!hp(e2)) {
                    throw e2;
                }
            } catch (RuntimeException | Exception unused) {
            }
        }
    }

    public static boolean hp(ec ecVar, int i2, TimeUnit timeUnit) {
        try {
            return l(ecVar, i2, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static <T> List<T> hp(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> hp(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory hp(final String str, final boolean z2) {
        return new ThreadFactory() { // from class: com.byazt.ru.jx.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.byazt.shx.jx jxVar = new com.byazt.shx.jx(runnable, "csj_" + str);
                jxVar.setDaemon(z2);
                jxVar.setPriority(10);
                return jxVar;
            }
        };
    }

    public static String[] hp(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i2]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i2++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean l(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String hp(com.byazt.hq.ec ecVar, boolean z2) {
        String strEb;
        if (ecVar.eb().contains(":")) {
            strEb = "[" + ecVar.eb() + "]";
        } else {
            strEb = ecVar.eb();
        }
        if (!z2 && ecVar.s() == com.byazt.hq.ec.hp(ecVar.jx())) {
            return strEb;
        }
        return strEb + ":" + ecVar.s();
    }

    public static int l(String str, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i4 + 1;
            }
        }
        return i2;
    }

    public static int l(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static boolean hp(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static int hp(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static String[] hp(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static int hp(String str, int i2, int i3) {
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int hp(String str, int i2, int i3, String str2) {
        while (i2 < i3) {
            if (str2.indexOf(str.charAt(i2)) != -1) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int hp(String str, int i2, int i3, char c2) {
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static String hp(String str) {
        InetAddress inetAddressJ;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                inetAddressJ = j(str, 1, str.length() - 1);
            } else {
                inetAddressJ = j(str, 0, str.length());
            }
            if (inetAddressJ == null) {
                return null;
            }
            byte[] address = inetAddressJ.getAddress();
            if (address.length == 16) {
                return hp(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            if (!str.contains("toutiao") && !str.contains("bytedance")) {
                str = IDN.toASCII(str);
            }
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (j(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String hp(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset hp(w wVar, Charset charset) throws IOException {
        if (wVar.hp(0L, f25378q)) {
            wVar.s(r0.eb());
            return f25382w;
        }
        if (wVar.hp(0L, f25374e)) {
            wVar.s(r0.eb());
            return f25376k;
        }
        if (wVar.hp(0L, gu)) {
            wVar.s(r0.eb());
            return f25381v;
        }
        if (wVar.hp(0L, jl)) {
            wVar.s(r0.eb());
            return f25380u;
        }
        if (!wVar.hp(0L, zy)) {
            return charset;
        }
        wVar.s(r0.eb());
        return xs;
    }

    public static AssertionError hp(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    private static boolean hp(String str, int i2, int i3, byte[] bArr, int i4) {
        int i5 = i4;
        while (i2 < i3) {
            if (i5 == bArr.length) {
                return false;
            }
            if (i5 != i4) {
                if (str.charAt(i2) != '.') {
                    return false;
                }
                i2++;
            }
            int i6 = i2;
            int i7 = 0;
            while (i6 < i3) {
                char cCharAt = str.charAt(i6);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i7 == 0 && i2 != i6) || (i7 = ((i7 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i6++;
            }
            if (i6 - i2 == 0) {
                return false;
            }
            bArr[i5] = (byte) i7;
            i5++;
            i2 = i6;
        }
        return i5 == i4 + 4;
    }

    private static String hp(byte[] bArr) {
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < bArr.length) {
            int i6 = i4;
            while (i6 < 16 && bArr[i6] == 0 && bArr[i6 + 1] == 0) {
                i6 += 2;
            }
            int i7 = i6 - i4;
            if (i7 > i5 && i7 >= 4) {
                i2 = i4;
                i5 = i7;
            }
            i4 = i6 + 2;
        }
        com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
        while (i3 < bArr.length) {
            if (i3 == i2) {
                jxVar.q(58);
                i3 += i5;
                if (i3 == 16) {
                    jxVar.q(58);
                }
            } else {
                if (i3 > 0) {
                    jxVar.q(58);
                }
                jxVar.gu(((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255));
                i3 += 2;
            }
        }
        return jxVar.v();
    }
}
