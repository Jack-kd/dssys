package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.g;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 689})
/* loaded from: classes3.dex */
public class zx {

    /* renamed from: a, reason: collision with root package name */
    public int f27620a;

    /* renamed from: e, reason: collision with root package name */
    public int f27621e;
    public boolean eb;
    public String gu;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27622j;
    public String jl;
    public boolean jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f27623k;

    /* renamed from: l, reason: collision with root package name */
    public int f27624l;

    /* renamed from: q, reason: collision with root package name */
    public int f27625q;

    /* renamed from: s, reason: collision with root package name */
    public int f27626s;

    /* renamed from: u, reason: collision with root package name */
    public boolean f27627u;

    /* renamed from: v, reason: collision with root package name */
    public int f27628v;

    /* renamed from: w, reason: collision with root package name */
    public int f27629w;
    public int zy;

    public zx(JSONObject jSONObject) {
        this.f27621e = 0;
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward_draw");
        if (jSONObjectOptJSONObject != null) {
            this.f27624l = jSONObjectOptJSONObject.optInt("max_draw_play_time", 10);
            this.f27622j = jSONObjectOptJSONObject.optInt("draw_rewarded_play_time", 30);
            this.f27629w = jSONObjectOptJSONObject.optInt("skip_btn_left_style", 0);
            this.f27620a = jSONObjectOptJSONObject.optInt("skip_btn_right_style", 0);
            this.eb = jSONObjectOptJSONObject.optBoolean("auto_slide", false);
            this.f27626s = jSONObjectOptJSONObject.optInt("show_time_type", 0);
            this.f27625q = jSONObjectOptJSONObject.optInt("tip_time", 0);
            this.f27621e = jSONObjectOptJSONObject.optInt("show_type", 0);
            this.jx = jSONObjectOptJSONObject.optBoolean("single_max_countdown", false);
            this.gu = jSONObjectOptJSONObject.optString("top_template_url");
            this.jl = jSONObjectOptJSONObject.optString("top_template_md5");
            this.zy = jSONObjectOptJSONObject.optInt("top_template_timeout");
            this.f27623k = jSONObjectOptJSONObject.optBoolean("can_cancel");
            this.f27628v = jSONObjectOptJSONObject.optInt("init_status_time", 0);
            this.f27627u = jSONObjectOptJSONObject.optBoolean("is_pause_tip_by_express", false);
        } else {
            this.f27624l = 10;
            this.f27622j = 30;
        }
        if (jSONObject.optJSONObject(g.f49324K) != null) {
            this.hp = !TextUtils.isEmpty(r6.optString("group_id"));
        }
    }

    public static boolean a(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return false;
        }
        return zxVarXs.eb;
    }

    public static boolean e(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return false;
        }
        return zxVarXs.jx;
    }

    public static int eb(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 10;
        }
        return zxVarXs.f27626s == 1 ? Math.min((int) Math.max(df.eb(mpVar), jx(mpVar)), 60) : jx(mpVar);
    }

    public static String gu(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return null;
        }
        return zxVarXs.gu;
    }

    public static int j(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 0;
        }
        return zxVarXs.f27629w;
    }

    public static String jl(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return null;
        }
        return zxVarXs.jl;
    }

    public static int jx(mp mpVar) {
        int i2;
        zx zxVarXs = xs(mpVar);
        if (zxVarXs != null && (i2 = zxVarXs.f27622j) > 0) {
            return i2;
        }
        return 30;
    }

    public static boolean k(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return false;
        }
        return zxVarXs.f27623k;
    }

    public static int l(mp mpVar) {
        int i2;
        zx zxVarXs = xs(mpVar);
        if (zxVarXs != null && (i2 = zxVarXs.f27624l) > 0) {
            return i2;
        }
        return 10;
    }

    public static int q(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 25;
        }
        return zxVarXs.f27625q;
    }

    public static boolean s(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        return zxVarXs != null && hp(mpVar) && zxVarXs.f27621e == 1;
    }

    public static boolean u(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return false;
        }
        return zxVarXs.f27627u;
    }

    public static int v(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 0;
        }
        return zxVarXs.f27628v;
    }

    public static int w(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 0;
        }
        return zxVarXs.f27620a;
    }

    private static zx xs(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.oh();
    }

    public static int zy(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return 0;
        }
        return zxVarXs.zy;
    }

    public void hp(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("max_draw_play_time", this.f27624l);
            jSONObject2.put("draw_rewarded_play_time", this.f27622j);
            jSONObject2.put("skip_btn_left_style", this.f27629w);
            jSONObject2.put("skip_btn_right_style", this.f27620a);
            jSONObject2.put("auto_slide", this.eb);
            jSONObject2.put("show_time_type", this.f27626s);
            jSONObject2.put("show_type", this.f27621e);
            jSONObject2.put("tip_time", this.f27625q);
            jSONObject2.put("single_max_countdown", this.jx);
            jSONObject2.put("top_template_url", this.gu);
            jSONObject2.put("top_template_md5", this.jl);
            jSONObject2.put("top_template_timeout", this.zy);
            jSONObject2.put("can_cancel", this.f27623k);
            jSONObject2.put("init_status_time", this.f27628v);
            jSONObject2.put("is_pause_tip_by_express", this.f27627u);
            jSONObject.put("reward_draw", jSONObject2);
        } catch (JSONException unused) {
        }
    }

    public static boolean hp(mp mpVar) {
        zx zxVarXs = xs(mpVar);
        if (zxVarXs == null) {
            return false;
        }
        return zxVarXs.hp;
    }
}
