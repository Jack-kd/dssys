package com.byazt.xci;

import com.anythink.core.common.f.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1313})
/* loaded from: classes3.dex */
public class jd {

    /* renamed from: a, reason: collision with root package name */
    public int f27303a;
    public String eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27304j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27305l;

    /* renamed from: s, reason: collision with root package name */
    public String f27306s;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f27307w;

    public String a() {
        return this.eb;
    }

    public int eb() {
        return this.f27303a;
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f27304j;
    }

    public String jx() {
        return this.jx;
    }

    public String l() {
        return this.f27305l;
    }

    public JSONObject q() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.hp);
            jSONObject.put(TKDownloadReason.KSAD_TK_MD5, this.f27305l);
            jSONObject.put("url", this.jx);
            jSONObject.put("data", this.f27304j);
            jSONObject.put("material_type", this.f27303a);
            jSONObject.put("custom_components", this.f27307w);
            jSONObject.put("express_gesture_priority", this.eb);
            jSONObject.put(a.C0051a.f3218o, this.f27306s);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public String s() {
        return this.f27306s;
    }

    public JSONObject w() {
        return this.f27307w;
    }

    public static jd hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        jd jdVar = new jd();
        jdVar.hp = jSONObject.optString("id");
        jdVar.f27304j = jSONObject.optString("data");
        jdVar.jx = jSONObject.optString("url");
        jdVar.f27305l = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
        jdVar.eb = jSONObject.optString("express_gesture_priority");
        jdVar.f27303a = jSONObject.optInt("material_type");
        jdVar.f27307w = jSONObject.optJSONObject("custom_components");
        jdVar.f27306s = jSONObject.optString(a.C0051a.f3218o);
        return jdVar;
    }
}
