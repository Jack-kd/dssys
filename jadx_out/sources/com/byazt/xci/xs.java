package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {
    public static volatile String hp;

    /* renamed from: a, reason: collision with root package name */
    public int f27607a;
    public String eb;

    /* renamed from: j, reason: collision with root package name */
    public int f27608j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27609l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27610q;

    /* renamed from: s, reason: collision with root package name */
    public String f27611s;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f27612w;

    public xs() {
        this.eb = "";
        this.f27611s = "";
    }

    public static void hp(String str) {
        hp = str;
    }

    private String j(String str) {
        if (this.f27612w != null && !TextUtils.isEmpty(str) && this.f27609l != null) {
            String strOptString = this.f27612w.optString(str);
            if (!TextUtils.isEmpty(strOptString)) {
                return this.f27609l + (this.f27609l.contains("?") ? "&" : "?") + strOptString;
            }
        }
        return this.f27609l;
    }

    public String a() {
        return this.eb;
    }

    public String eb() {
        return this.f27611s;
    }

    public int jx() {
        return this.f27607a;
    }

    public String l() {
        return j(hp);
    }

    public int w() {
        return this.f27608j;
    }

    public void hp(JSONObject jSONObject) throws JSONException {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(g.a.f3280q, l());
            jSONObject2.put("fallback_url", j());
            jSONObject2.put("fallback_type", w());
            jSONObject2.put("addon_params", this.f27612w);
            jSONObject2.put("fallback_landing", this.f27607a);
            jSONObject2.put("fallback_landing_ugen_url", this.eb);
            jSONObject2.put("fallback_landing_ugen_md5", this.f27611s);
            jSONObject.put(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK, jSONObject2);
        } catch (JSONException unused) {
        }
    }

    public void jx(String str) {
        this.jx = str;
    }

    public void l(String str) {
        this.f27609l = str;
    }

    public xs(JSONObject jSONObject) {
        this.eb = "";
        this.f27611s = "";
        if (jSONObject == null) {
            return;
        }
        l(jSONObject.optString(g.a.f3280q));
        jx(jSONObject.optString("fallback_url"));
        hp(jSONObject.optInt("fallback_type"));
        this.f27612w = jSONObject.optJSONObject("addon_params");
        this.f27607a = jSONObject.optInt("fallback_landing");
        this.eb = jSONObject.optString("fallback_landing_ugen_url");
        this.f27611s = jSONObject.optString("fallback_landing_ugen_md5");
    }

    public String j() {
        return this.jx;
    }

    public boolean hp() {
        return this.f27610q;
    }

    public void hp(boolean z2) {
        this.f27610q = z2;
    }

    public void hp(int i2) {
        this.f27608j = i2;
    }

    public void hp(xs xsVar) {
        if (xsVar == null) {
            return;
        }
        if (!TextUtils.isEmpty(xsVar.l())) {
            l(xsVar.l());
        }
        if (!TextUtils.isEmpty(xsVar.j())) {
            jx(xsVar.j());
        }
        if (xsVar.w() != 0) {
            hp(xsVar.w());
        }
    }
}
