package com.byazt.po;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 212, 45})
/* loaded from: classes3.dex */
public class e {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.byazt.ap.jx] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.byazt.ap.j] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.byazt.ap.w] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static void hp(int i2, String str, Map<String, Object> map, w wVar) {
        ?? Jx;
        if (i2 == 0) {
            Jx = com.byazt.cm.w.hp().l().jx();
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    Jx.hp(entry.getKey(), entry.getValue().toString());
                }
            }
        } else if (i2 != 1) {
            Jx = 0;
        } else {
            Jx = com.byazt.cm.w.hp().l().l();
            HashMap map2 = new HashMap();
            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                map2.put(entry2.getKey(), entry2.getValue().toString());
            }
            Jx.hp(map2);
        }
        if (Jx != 0) {
            Jx.hp(str);
            hp(Jx.hp(), wVar);
        }
    }

    public static void hp(String str, byte[] bArr, String str2, int i2, w wVar) {
        if (bArr == null) {
            if (wVar != null) {
                wVar.hp(new Exception("request data is null"));
            }
        } else {
            com.byazt.ap.w wVarL = com.byazt.cm.w.hp().l().l();
            wVarL.hp(str);
            wVarL.hp(str2, bArr);
            hp(wVarL.hp(), wVar);
        }
    }

    private static void hp(com.byazt.oyr.l lVar, w wVar) {
        String strValueOf;
        if (lVar != null && lVar.q()) {
            if (wVar != null) {
                wVar.hp(lVar.w());
                return;
            }
            return;
        }
        boolean zIsEmpty = TextUtils.isEmpty((lVar == null || lVar.jx() == null) ? null : lVar.jx());
        if (wVar != null) {
            if (zIsEmpty) {
                strValueOf = lVar != null ? String.valueOf(lVar.l()) : "";
            } else {
                strValueOf = lVar.jx();
            }
            wVar.hp(new Exception(strValueOf));
        }
    }
}
