package com.byazt.zn;

import android.util.Pair;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 693})
/* loaded from: classes3.dex */
public class as extends com.byazt.ap.w {
    public as(com.byazt.uhg.jl jlVar) {
        super(jlVar);
    }

    public void hp(JSONObject jSONObject, String str) {
        Pair<Integer, ?> pairHp;
        Object obj;
        try {
            pairHp = com.byazt.lca.a.hp().hp(jSONObject.toString(), str);
        } catch (Throwable th) {
            com.byazt.ymw.u.hp(th.getMessage());
            pairHp = null;
        }
        if (pairHp == null || (obj = pairHp.first) == null) {
            com.byazt.lf.k.hp().hp(-1, -1L, str, -1);
            jx(com.byazt.ymw.hp.hp(jSONObject).toString());
        } else {
            if (((Integer) obj).intValue() != 4) {
                hp((JSONObject) pairHp.second);
                return;
            }
            hp("application/octet-stream", (byte[]) pairHp.second);
            hp(true);
            l("x-pglcypher", String.valueOf(pairHp.first));
        }
    }

    public void jx(JSONObject jSONObject, String str) {
        if (com.byazt.jz.sz.l().ly()) {
            hp(jSONObject, str);
        } else {
            jx(com.byazt.ymw.hp.hp(jSONObject).toString());
        }
    }

    public void l(JSONObject jSONObject, String str) {
        if (com.byazt.jz.sz.l().tr()) {
            hp(jSONObject, str);
        } else {
            jx(com.byazt.ymw.hp.hp(jSONObject).toString());
        }
    }
}
