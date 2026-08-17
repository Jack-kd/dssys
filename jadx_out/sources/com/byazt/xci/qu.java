package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1314})
/* loaded from: classes3.dex */
public class qu {
    public xs hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27443j;
    public as jx;

    /* renamed from: l, reason: collision with root package name */
    public rv f27444l;

    /* renamed from: w, reason: collision with root package name */
    public k f27445w;

    public static qu hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        qu quVar = new qu();
        xs xsVar = new xs();
        quVar.hp = xsVar;
        xsVar.l(jSONObject.optString(g.a.f3280q, ""));
        quVar.f27444l = rv.hp(jSONObject.optJSONObject("saas_info"));
        quVar.jx = as.hp(jSONObject.optJSONObject("live_info"));
        quVar.f27443j = jSONObject.optString("ecom_live_params");
        quVar.f27445w = k.hp(jSONObject.optJSONObject("coupon"));
        if (TextUtils.isEmpty(quVar.hp.l())) {
            return null;
        }
        return quVar;
    }

    public as a() {
        return this.jx;
    }

    public rv j() {
        return this.f27444l;
    }

    public xs jx() {
        return this.hp;
    }

    public k l() {
        return this.f27445w;
    }

    public String w() {
        return this.f27443j;
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            xs xsVar = this.hp;
            if (xsVar != null) {
                jSONObject.put(g.a.f3280q, xsVar.l());
            }
            rv rvVar = this.f27444l;
            if (rvVar != null) {
                jSONObject.put("saas_info", rvVar.hp());
            }
            as asVar = this.jx;
            if (asVar != null) {
                jSONObject.put("live_info", asVar.hp());
            }
            String str = this.f27443j;
            if (str != null) {
                jSONObject.put("ecom_live_params", str);
            }
            k kVar = this.f27445w;
            if (kVar != null) {
                jSONObject.put("coupon", kVar.hp());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
