package com.byazt.zn;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 30})
/* loaded from: classes3.dex */
public final class jx {
    public static long hp = 0;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static JSONObject f28528l;

    public static void hp() {
        if (!com.byazt.jz.s.u().gu()) {
            hp |= 1;
        }
        if (!com.byazt.jz.s.u().j()) {
            hp |= 2;
        }
        if (com.byazt.jz.s.u().xs().alist()) {
            return;
        }
        hp |= 4;
    }

    public static long jx() {
        if (!jx) {
            hp();
            jx = true;
        }
        if (f28528l == null) {
            JSONObject jSONObjectL = l();
            f28528l = jSONObjectL;
            if (jSONObjectL != null) {
                hp(jSONObjectL);
            }
        }
        return hp;
    }

    public static JSONObject l() {
        JSONObject jSONObject = f28528l;
        if (jSONObject != null) {
            return jSONObject;
        }
        String str = com.byazt.ry.j.l(com.byazt.el.hp.j(), com.byazt.jkd.gu.w()).get("pglam", "");
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject2 = new JSONObject(str);
                f28528l = jSONObject2;
                return jSONObject2;
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static void hp(JSONObject jSONObject) {
        f28528l = jSONObject;
        if (jSONObject.optBoolean("pglam_getwvid_enable", true)) {
            return;
        }
        hp |= 8;
    }
}
