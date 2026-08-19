package com.byazt.pn;

import com.byazt.hq.b;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.IOException;
import java.net.ProtocolException;

@com.byazt.kj.hp(hp = {0, 1, 741, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public final class gu {
    public final b hp;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f24456l;

    public gu(b bVar, int i2, String str) {
        this.hp = bVar;
        this.f24456l = i2;
        this.jx = str;
    }

    public static gu hp(String str) throws NumberFormatException, IOException {
        b bVar;
        int i2;
        String strSubstring;
        if (str.startsWith("HTTP/1.")) {
            i2 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                bVar = b.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                bVar = b.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            bVar = b.HTTP_1_0;
            i2 = 4;
        }
        int i3 = i2 + 3;
        if (str.length() < i3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i4 = Integer.parseInt(str.substring(i2, i3));
            if (str.length() <= i3) {
                strSubstring = "";
            } else {
                if (str.charAt(i3) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i2 + 4);
            }
            return new gu(bVar, i4, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.hp == b.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f24456l);
        if (this.jx != null) {
            sb.append(' ');
            sb.append(this.jx);
        }
        return sb.toString();
    }
}
