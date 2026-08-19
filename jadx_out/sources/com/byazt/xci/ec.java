package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec {

    /* renamed from: a, reason: collision with root package name */
    public int f27261a;

    /* renamed from: e, reason: collision with root package name */
    public int f27262e;
    public boolean eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27263j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27264l;

    /* renamed from: q, reason: collision with root package name */
    public String f27265q;

    /* renamed from: s, reason: collision with root package name */
    public String f27266s;

    /* renamed from: w, reason: collision with root package name */
    public int f27267w;

    public ec(JSONObject jSONObject) {
        this.f27264l = 0;
        if (jSONObject == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("reward_browse_type", 0);
        this.f27264l = iOptInt;
        if (iOptInt < 0 || iOptInt > 3) {
            this.f27264l = 0;
        }
        if (this.f27264l == 2) {
            this.f27264l = 3;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("direct_landing_page_info");
        if (jSONObjectOptJSONObject != null) {
            this.hp = jSONObjectOptJSONObject.optString("direct_landing_url");
            this.jx = jSONObjectOptJSONObject.optInt("display_duration", 0);
            this.f27263j = jSONObjectOptJSONObject.optInt("close_time", 0);
            this.f27267w = jSONObjectOptJSONObject.optInt("page_type");
            this.f27261a = jSONObjectOptJSONObject.optInt("show_type");
            this.eb = jSONObjectOptJSONObject.optBoolean("is_landing_with_sound", false);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("reward_browse_banner");
            if (jSONObjectOptJSONObject2 != null) {
                this.f27266s = jSONObjectOptJSONObject2.optString("ugen_url");
                this.f27265q = jSONObjectOptJSONObject2.optString("ugen_md5");
            }
            this.f27262e = jSONObjectOptJSONObject.optInt("close_btn_position");
        }
    }

    public static boolean a(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && ecVarVv.f27267w == 3;
    }

    public static int e(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        if (ecVarVv == null) {
            return 0;
        }
        return ecVarVv.f27264l;
    }

    public static boolean eb(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && ecVarVv.f27261a == 3;
    }

    public static int gu(mp mpVar) {
        int i2;
        ec ecVarVv = vv(mpVar);
        if (ecVarVv != null && (i2 = ecVarVv.jx) >= 0) {
            return i2;
        }
        return 0;
    }

    public static boolean j(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && hp(mpVar) && ecVarVv.f27264l == 1 && ecVarVv.f27267w == 2;
    }

    public static int jl(mp mpVar) {
        int i2;
        ec ecVarVv = vv(mpVar);
        if (ecVarVv != null && (i2 = ecVarVv.f27263j) >= 0) {
            return i2;
        }
        return 0;
    }

    public static boolean jx(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && ecVarVv.f27264l == 1 && ecVarVv.f27267w == 1;
    }

    public static com.byazt.nqo.hp k(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        if (ecVarVv == null || TextUtils.isEmpty(ecVarVv.f27266s)) {
            return null;
        }
        com.byazt.nqo.hp hpVar = new com.byazt.nqo.hp();
        hpVar.jx(ecVarVv.f27266s);
        hpVar.l(ecVarVv.f27265q);
        hpVar.hp(ecVarVv.f27266s);
        return hpVar;
    }

    public static boolean l(mp mpVar) {
        if (hp(mpVar)) {
            return q(mpVar);
        }
        return false;
    }

    public static boolean q(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        if (ecVarVv == null) {
            return false;
        }
        return ecVarVv.eb;
    }

    public static String s(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv == null ? "" : ecVarVv.hp;
    }

    public static boolean u(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && ecVarVv.f27262e == 2;
    }

    public static boolean v(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return ecVarVv != null && ecVarVv.f27262e == 1;
    }

    private static ec vv(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.ov();
    }

    public static boolean w(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        if (ecVarVv == null || ecVarVv.f27267w != 4) {
            return false;
        }
        int iJl = com.byazt.zn.ky.jl(mpVar);
        return iJl == 3 || iJl == 4 || iJl == 5 || iJl == 9;
    }

    public static int xs(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        if (ecVarVv == null) {
            return 0;
        }
        return ecVarVv.f27262e;
    }

    public static boolean zy(mp mpVar) {
        return vv(mpVar) != null && e(mpVar) == 3 && hp(mpVar);
    }

    public void hp(JSONObject jSONObject) {
        try {
            jSONObject.put("reward_browse_type", this.f27264l);
        } catch (Exception unused) {
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("direct_landing_url", this.hp);
            jSONObject2.put("display_duration", this.jx);
            jSONObject2.put("close_time", this.f27263j);
            jSONObject2.put("page_type", this.f27267w);
            jSONObject2.put("show_type", this.f27261a);
            jSONObject2.put("close_btn_position", this.f27262e);
            jSONObject2.put("is_landing_with_sound", this.eb);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ugen_url", this.f27266s);
            jSONObject3.put("ugen_md5", this.f27265q);
            jSONObject2.put("reward_browse_banner", jSONObject3);
            jSONObject.put("direct_landing_page_info", jSONObject2);
        } catch (Exception unused2) {
        }
    }

    public static boolean hp(mp mpVar) {
        ec ecVarVv = vv(mpVar);
        return (ecVarVv == null || e(mpVar) == 0 || TextUtils.isEmpty(ecVarVv.hp)) ? false : true;
    }
}
