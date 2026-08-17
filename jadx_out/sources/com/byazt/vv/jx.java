package com.byazt.vv;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 65, 30})
/* loaded from: classes3.dex */
public class jx {
    public static void hp(mp mpVar, boolean z2, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("second_page_type", i2);
        } catch (JSONException unused) {
        }
        com.byazt.jdb.j.l(mpVar, "second_page_jsb_invoke", jSONObject);
    }

    public static void l(mp mpVar, boolean z2, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("second_page_type", i2);
            jSONObject.put("origin_req_id", ky.k(mpVar));
            jSONObject.put("error_code", i3);
        } catch (JSONException unused) {
        }
        com.byazt.jdb.j.l(mpVar, "second_page_show", jSONObject);
    }

    public static void hp(mp mpVar, boolean z2, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(cb.f11292o, z2 ? 1 : 0);
            jSONObject.put("second_page_type", i2);
            jSONObject.put("origin_req_id", ky.k(mpVar));
            jSONObject.put("error_code", i3);
        } catch (JSONException unused) {
        }
        com.byazt.jdb.j.l(mpVar, "second_page_request", jSONObject);
    }
}
