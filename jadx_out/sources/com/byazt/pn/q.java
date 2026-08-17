package com.byazt.pn;

import com.byazt.hq.ec;
import com.byazt.hq.o;
import java.net.Proxy;

@com.byazt.kj.hp(hp = {0, 1, 741, 150})
/* loaded from: classes3.dex */
public final class q {
    public static String hp(o oVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(oVar.l());
        sb.append(' ');
        if (l(oVar, type)) {
            sb.append(oVar.hp());
        } else {
            sb.append(hp(oVar.hp()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean l(o oVar, Proxy.Type type) {
        return !oVar.s() && type == Proxy.Type.HTTP;
    }

    public static String hp(ec ecVar) {
        String strQ = ecVar.q();
        try {
            String strGu = ecVar.gu();
            if (strGu != null) {
                return strQ + '?' + strGu;
            }
        } catch (OutOfMemoryError unused) {
        }
        return strQ;
    }
}
