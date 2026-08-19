package com.byazt.jki;

import android.text.TextUtils;
import com.byazt.jz.s;
import com.byazt.xci.eb;
import com.byazt.ymw.u;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, 1972, 28})
/* loaded from: classes.dex */
public class hp {
    public static String hp(String str) {
        if (!u.jx() || TextUtils.isEmpty(str)) {
            return str;
        }
        eb ebVar = new eb(s.u().wv());
        StringBuilder sb = new StringBuilder(str);
        Iterator<String> it = ebVar.l().iterator();
        while (it.hasNext()) {
            if (sb.toString().contains(it.next())) {
                if (sb.toString().contains("?")) {
                    sb.append("&");
                    sb.append(ebVar.hp());
                } else {
                    sb.append("?");
                    sb.append(ebVar.hp());
                }
            }
        }
        return sb.toString();
    }
}
