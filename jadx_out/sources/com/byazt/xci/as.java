package com.byazt.xci;

import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointParamKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 693})
/* loaded from: classes3.dex */
public class as {

    /* renamed from: a, reason: collision with root package name */
    public String f27185a;

    /* renamed from: e, reason: collision with root package name */
    public hp f27186e;
    public JSONArray eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27187j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public boolean f27188l;

    /* renamed from: q, reason: collision with root package name */
    public l f27189q;

    /* renamed from: s, reason: collision with root package name */
    public int f27190s;

    /* renamed from: w, reason: collision with root package name */
    public String f27191w;

    public static as hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        as asVar = new as();
        asVar.hp = jSONObject.optString("promotion_id");
        asVar.f27188l = jSONObject.optBoolean("is_silent_auth", false);
        asVar.jx = jSONObject.optBoolean("enable_playable_auth", false);
        asVar.f27187j = jSONObject.optString("aweme_agreements");
        asVar.f27191w = jSONObject.optString("aweme_privacy");
        asVar.f27185a = jSONObject.optString("live_csj_libra_param");
        asVar.eb = jSONObject.optJSONArray("tasks");
        asVar.f27190s = jSONObject.optInt("live_playable");
        asVar.f27186e = hp.hp(jSONObject.optJSONObject("product"));
        asVar.f27189q = l.hp(jSONObject.optJSONObject("coupon"));
        return asVar;
    }

    public String a() {
        return this.f27191w;
    }

    public l e() {
        return this.f27189q;
    }

    public String eb() {
        return this.f27185a;
    }

    public hp gu() {
        return this.f27186e;
    }

    public boolean j() {
        return this.jx;
    }

    public boolean jx() {
        return this.f27188l;
    }

    public String l() {
        return this.hp;
    }

    public boolean q() {
        return this.f27190s == 2 && this.jx;
    }

    public JSONArray s() {
        return this.eb;
    }

    public String w() {
        return this.f27187j;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1387})
    public static class l {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public int f27194l;

        public static l hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            l lVar = new l();
            lVar.hp = jSONObject.optInt("amount");
            lVar.f27194l = jSONObject.optInt("threshold");
            return lVar;
        }

        public JSONObject jx() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("amount", this.hp);
                jSONObject.put("threshold", this.f27194l);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public int l() {
            return this.f27194l;
        }

        public int hp() {
            return this.hp;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_MIX_LEVEL})
    public static class hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public double f27192j;
        public double jx;

        /* renamed from: l, reason: collision with root package name */
        public String f27193l;

        public static hp hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            hp hpVar = new hp();
            hpVar.hp = jSONObject.optString(g.a.f3271h);
            hpVar.f27193l = jSONObject.optString("image");
            hpVar.f27192j = jSONObject.optDouble("price");
            hpVar.jx = jSONObject.optDouble(PointParamKey.ORIGIN_PRICE);
            return hpVar;
        }

        public double j() {
            return this.f27192j;
        }

        public double jx() {
            return this.jx;
        }

        public String l() {
            return this.f27193l;
        }

        public JSONObject w() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(g.a.f3271h, this.hp);
                jSONObject.put("image", this.f27193l);
                jSONObject.put("price", this.f27192j);
                jSONObject.put(PointParamKey.ORIGIN_PRICE, this.jx);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public String hp() {
            return this.hp;
        }
    }

    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("promotion_id", this.hp);
            jSONObject.put("is_silent_auth", this.f27188l);
            jSONObject.put("enable_playable_auth", this.jx);
            jSONObject.put("aweme_agreements", this.f27187j);
            jSONObject.put("aweme_privacy", this.f27191w);
            jSONObject.put("live_csj_libra_param", this.f27185a);
            jSONObject.put("tasks", this.eb);
            jSONObject.put("live_playable", this.f27190s);
            hp hpVar = this.f27186e;
            if (hpVar != null) {
                jSONObject.put("product", hpVar.w());
            }
            l lVar = this.f27189q;
            if (lVar != null) {
                jSONObject.put("coupon", lVar.jx());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
