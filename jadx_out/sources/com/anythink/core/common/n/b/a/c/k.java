package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.af;
import java.net.ProtocolException;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final int f6253a = 307;

    /* renamed from: b, reason: collision with root package name */
    public static final int f6254b = 308;

    /* renamed from: c, reason: collision with root package name */
    public static final int f6255c = 100;

    /* renamed from: d, reason: collision with root package name */
    public final ab f6256d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6257e;

    /* renamed from: f, reason: collision with root package name */
    public final String f6258f;

    public k(ab abVar, int i2, String str) {
        this.f6256d = abVar;
        this.f6257e = i2;
        this.f6258f = str;
    }

    private static k a(af afVar) {
        return new k(afVar.b(), afVar.c(), afVar.d());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6256d == ab.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f6257e);
        if (this.f6258f != null) {
            sb.append(' ');
            sb.append(this.f6258f);
        }
        return sb.toString();
    }

    public static k a(String str) throws ProtocolException, NumberFormatException {
        ab abVar;
        int i2;
        String strSubstring;
        if (str.startsWith("HTTP/1.")) {
            i2 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                abVar = ab.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                abVar = ab.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            abVar = ab.HTTP_1_0;
            i2 = 4;
        }
        int i3 = i2 + 3;
        if (str.length() < i3) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i4 = Integer.parseInt(str.substring(i2, i3));
            if (str.length() <= i3) {
                strSubstring = "";
            } else {
                if (str.charAt(i3) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i2 + 4);
            }
            return new k(abVar, i4, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }
}
