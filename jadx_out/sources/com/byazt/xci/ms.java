package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 679})
/* loaded from: classes3.dex */
public class ms {

    /* renamed from: a, reason: collision with root package name */
    public String f27389a;

    /* renamed from: e, reason: collision with root package name */
    public int f27390e;
    public String eb;
    public int gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27391j;
    public int jl;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27392l;

    /* renamed from: q, reason: collision with root package name */
    public int f27393q;

    /* renamed from: s, reason: collision with root package name */
    public String f27394s;

    /* renamed from: w, reason: collision with root package name */
    public String f27395w;
    public boolean zy;

    public ms(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("live_ad")) == null) {
            return;
        }
        this.zy = true;
        hp(jSONObjectOptJSONObject.optInt("live_show_time", 60));
        this.f27392l = jSONObjectOptJSONObject.optString("live_author_nickname");
        this.jx = jSONObjectOptJSONObject.optInt("live_author_follower_count", -1);
        this.f27391j = jSONObjectOptJSONObject.optInt("live_watch_count", -1);
        this.f27395w = jSONObjectOptJSONObject.optString("live_description");
        this.f27389a = jSONObjectOptJSONObject.optString("live_feed_url");
        this.eb = jSONObjectOptJSONObject.optString("live_cover_image_url");
        this.f27394s = jSONObjectOptJSONObject.optString("live_avatar_url");
        this.f27393q = jSONObjectOptJSONObject.optInt("live_avatar_width");
        this.f27390e = jSONObjectOptJSONObject.optInt("live_avatar_height");
        this.gu = jSONObjectOptJSONObject.optInt("live_cover_width");
        this.jl = jSONObjectOptJSONObject.optInt("live_cover_height");
    }

    public static String a(mp mpVar) {
        ms msVarK = k(mpVar);
        return msVarK == null ? "" : msVarK.f27395w;
    }

    public static int e(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.f27393q;
    }

    public static String eb(mp mpVar) {
        ms msVarK = k(mpVar);
        return msVarK == null ? "" : msVarK.f27389a;
    }

    public static int gu(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.f27390e;
    }

    public static int j(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.jx;
    }

    public static int jl(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.gu;
    }

    public static String jx(mp mpVar) {
        ms msVarK = k(mpVar);
        return msVarK == null ? "" : msVarK.f27392l;
    }

    private static ms k(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.vk();
    }

    public static int l(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.hp;
    }

    public static String q(mp mpVar) {
        ms msVarK = k(mpVar);
        return msVarK == null ? "" : msVarK.f27394s;
    }

    public static String s(mp mpVar) {
        ms msVarK = k(mpVar);
        return msVarK == null ? "" : msVarK.eb;
    }

    public static int w(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.f27391j;
    }

    public static int zy(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return 0;
        }
        return msVarK.jl;
    }

    public boolean hp() {
        return this.zy;
    }

    public void hp(JSONObject jSONObject) {
        if (this.zy) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("live_show_time", this.hp);
                jSONObject2.put("live_author_nickname", this.f27392l);
                jSONObject2.put("live_author_follower_count", this.jx);
                jSONObject2.put("live_watch_count", this.f27391j);
                jSONObject2.put("live_description", this.f27395w);
                jSONObject2.put("live_feed_url", this.f27389a);
                jSONObject2.put("live_cover_image_url", this.eb);
                jSONObject2.put("live_avatar_url", this.f27394s);
                jSONObject2.put("live_cover_width", this.gu);
                jSONObject2.put("live_cover_height", this.jl);
                jSONObject2.put("live_avatar_width", this.f27393q);
                jSONObject2.put("live_avatar_height", this.f27390e);
                jSONObject2.put("isValid", this.zy);
                jSONObject.put("live_ad", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean hp(mp mpVar) {
        ms msVarK = k(mpVar);
        if (msVarK == null) {
            return false;
        }
        return msVarK.zy;
    }

    public void hp(int i2) {
        if (i2 <= 0 || i2 > 300) {
            i2 = 60;
        }
        this.hp = i2;
    }
}
