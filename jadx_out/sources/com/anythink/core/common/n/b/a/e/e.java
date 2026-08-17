package com.anythink.core.common.n.b.a.e;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: b, reason: collision with root package name */
    static final int f6346b = 16384;

    /* renamed from: c, reason: collision with root package name */
    static final byte f6347c = 0;

    /* renamed from: d, reason: collision with root package name */
    static final byte f6348d = 1;

    /* renamed from: e, reason: collision with root package name */
    static final byte f6349e = 2;

    /* renamed from: f, reason: collision with root package name */
    static final byte f6350f = 3;

    /* renamed from: g, reason: collision with root package name */
    static final byte f6351g = 4;

    /* renamed from: h, reason: collision with root package name */
    static final byte f6352h = 5;

    /* renamed from: i, reason: collision with root package name */
    static final byte f6353i = 6;

    /* renamed from: j, reason: collision with root package name */
    static final byte f6354j = 7;

    /* renamed from: k, reason: collision with root package name */
    static final byte f6355k = 8;

    /* renamed from: l, reason: collision with root package name */
    static final byte f6356l = 9;

    /* renamed from: m, reason: collision with root package name */
    static final byte f6357m = 0;

    /* renamed from: n, reason: collision with root package name */
    static final byte f6358n = 1;

    /* renamed from: o, reason: collision with root package name */
    static final byte f6359o = 1;

    /* renamed from: p, reason: collision with root package name */
    static final byte f6360p = 4;

    /* renamed from: q, reason: collision with root package name */
    static final byte f6361q = 4;

    /* renamed from: r, reason: collision with root package name */
    static final byte f6362r = 8;

    /* renamed from: s, reason: collision with root package name */
    static final byte f6363s = 32;

    /* renamed from: t, reason: collision with root package name */
    static final byte f6364t = 32;

    /* renamed from: a, reason: collision with root package name */
    static final com.anythink.core.common.n.c.f f6345a = com.anythink.core.common.n.c.f.a("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: w, reason: collision with root package name */
    private static final String[] f6367w = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: u, reason: collision with root package name */
    static final String[] f6365u = new String[64];

    /* renamed from: v, reason: collision with root package name */
    static final String[] f6366v = new String[256];

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = f6366v;
            if (i3 >= strArr.length) {
                break;
            }
            strArr[i3] = com.anythink.core.common.n.b.a.c.a("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr2 = f6365u;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i4 = 0; i4 <= 0; i4++) {
            int i5 = iArr[i4];
            String[] strArr3 = f6365u;
            strArr3[i5 | 8] = strArr3[i5] + "|PADDED";
        }
        String[] strArr4 = f6365u;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i6 = 0; i6 < 3; i6++) {
            int i7 = iArr2[i6];
            for (int i8 = 0; i8 <= 0; i8++) {
                int i9 = iArr[i8];
                String[] strArr5 = f6365u;
                int i10 = i9 | i7;
                strArr5[i10] = strArr5[i9] + '|' + strArr5[i7];
                strArr5[i10 | 8] = strArr5[i9] + '|' + strArr5[i7] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = f6365u;
            if (i2 >= strArr6.length) {
                return;
            }
            if (strArr6[i2] == null) {
                strArr6[i2] = f6366v[i2];
            }
            i2++;
        }
    }

    private e() {
    }

    public static IllegalArgumentException a(String str, Object... objArr) {
        throw new IllegalArgumentException(com.anythink.core.common.n.b.a.c.a(str, objArr));
    }

    public static IOException b(String str, Object... objArr) throws IOException {
        throw new IOException(com.anythink.core.common.n.b.a.c.a(str, objArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(boolean r3, int r4, int r5, byte r6, byte r7) {
        /*
            java.lang.String[] r0 = com.anythink.core.common.n.b.a.e.e.f6367w
            int r1 = r0.length
            if (r6 >= r1) goto L8
            r0 = r0[r6]
            goto L16
        L8:
            java.lang.Byte r0 = java.lang.Byte.valueOf(r6)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r1 = "0x%02x"
            java.lang.String r0 = com.anythink.core.common.n.b.a.c.a(r1, r0)
        L16:
            if (r7 != 0) goto L1b
            java.lang.String r6 = ""
            goto L6a
        L1b:
            r1 = 2
            if (r6 == r1) goto L66
            r1 = 3
            if (r6 == r1) goto L66
            r1 = 4
            if (r6 == r1) goto L5b
            r1 = 6
            if (r6 == r1) goto L5b
            r1 = 7
            if (r6 == r1) goto L66
            r1 = 8
            if (r6 == r1) goto L66
            java.lang.String[] r1 = com.anythink.core.common.n.b.a.e.e.f6365u
            int r2 = r1.length
            if (r7 >= r2) goto L36
            r1 = r1[r7]
            goto L3a
        L36:
            java.lang.String[] r1 = com.anythink.core.common.n.b.a.e.e.f6366v
            r1 = r1[r7]
        L3a:
            r2 = 5
            if (r6 != r2) goto L4a
            r2 = r7 & 4
            if (r2 == 0) goto L4a
            java.lang.String r6 = "HEADERS"
            java.lang.String r7 = "PUSH_PROMISE"
            java.lang.String r6 = r1.replace(r6, r7)
            goto L6a
        L4a:
            if (r6 != 0) goto L59
            r6 = r7 & 32
            if (r6 == 0) goto L59
            java.lang.String r6 = "PRIORITY"
            java.lang.String r7 = "COMPRESSED"
            java.lang.String r6 = r1.replace(r6, r7)
            goto L6a
        L59:
            r6 = r1
            goto L6a
        L5b:
            r6 = 1
            if (r7 != r6) goto L61
            java.lang.String r6 = "ACK"
            goto L6a
        L61:
            java.lang.String[] r6 = com.anythink.core.common.n.b.a.e.e.f6366v
            r6 = r6[r7]
            goto L6a
        L66:
            java.lang.String[] r6 = com.anythink.core.common.n.b.a.e.e.f6366v
            r6 = r6[r7]
        L6a:
            if (r3 == 0) goto L6f
            java.lang.String r3 = "<<"
            goto L71
        L6f:
            java.lang.String r3 = ">>"
        L71:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object[] r3 = new java.lang.Object[]{r3, r4, r5, r0, r6}
            java.lang.String r4 = "%s 0x%08x %5d %-13s %s"
            java.lang.String r3 = com.anythink.core.common.n.b.a.c.a(r4, r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.e.e.a(boolean, int, int, byte, byte):java.lang.String");
    }

    private static String a(byte b3, byte b4) {
        if (b4 == 0) {
            return "";
        }
        if (b3 != 2 && b3 != 3) {
            if (b3 == 4 || b3 == 6) {
                return b4 == 1 ? "ACK" : f6366v[b4];
            }
            if (b3 != 7 && b3 != 8) {
                String[] strArr = f6365u;
                String str = b4 < strArr.length ? strArr[b4] : f6366v[b4];
                if (b3 != 5 || (b4 & 4) == 0) {
                    return (b3 != 0 || (b4 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f6366v[b4];
    }
}
