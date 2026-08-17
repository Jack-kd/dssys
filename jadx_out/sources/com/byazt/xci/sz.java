package com.byazt.xci;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {

    /* renamed from: a, reason: collision with root package name */
    public int f27533a;

    /* renamed from: b, reason: collision with root package name */
    public int f27534b;
    public String cx;

    /* renamed from: e, reason: collision with root package name */
    public int f27535e;
    public int eb;
    public int ec;
    public int gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27536j;
    public int jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public int f27537k;

    /* renamed from: l, reason: collision with root package name */
    public int f27538l;

    /* renamed from: n, reason: collision with root package name */
    public int f27539n;
    public String ns;

    /* renamed from: q, reason: collision with root package name */
    public int f27540q;

    /* renamed from: s, reason: collision with root package name */
    public int f27541s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public int f27542u;

    /* renamed from: v, reason: collision with root package name */
    public int f27543v;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public int f27544w;
    public int xs;
    public int zy;

    public sz(JSONObject jSONObject) {
        this.hp = 0;
        this.f27538l = 1;
        this.jx = 1;
        this.f27536j = 1;
        this.f27544w = 1;
        this.f27533a = 0;
        this.eb = 1;
        this.f27541s = 0;
        this.f27540q = 0;
        this.f27535e = 0;
        this.gu = 300;
        this.jl = -1;
        this.zy = 1;
        this.f27537k = 1;
        this.f27543v = 31457280;
        this.f27542u = 0;
        this.xs = 0;
        this.vv = 0;
        this.ec = 0;
        this.sz = 0;
        this.f27539n = 0;
        this.f27534b = 0;
        if (jSONObject == null) {
            return;
        }
        this.eb = jSONObject.optInt("auto_open", 1);
        this.f27541s = jSONObject.optInt("download_mode", 0);
        this.f27540q = jSONObject.optInt("auto_control", 0);
        this.f27535e = jSONObject.optInt("auto_control_choose", 0);
        this.gu = jSONObject.optInt("auto_control_time", 300);
        this.jl = jSONObject.optInt(g.a.f3275l, -1);
        this.zy = jSONObject.optInt("if_suspend_download", 1);
        this.hp = jSONObject.optInt("if_send_click", 0);
        this.f27538l = jSONObject.optInt("dl_popup", 1);
        this.jx = jSONObject.optInt("market_popup", 1);
        this.f27536j = jSONObject.optInt("if_pop_lp", 1);
        this.f27544w = jSONObject.optInt("pop_up_style_id", 1);
        this.f27537k = jSONObject.optInt("dl_network", 1);
        this.f27543v = jSONObject.optInt("dl_size", 31457280);
        this.f27542u = jSONObject.optInt("if_toast_market", 0);
        this.xs = jSONObject.optInt("enable_download_opt", 0);
        this.f27539n = jSONObject.optInt("show_7factors_card", 0);
        if (com.byazt.ton.l.hp()) {
            this.vv = 0;
        } else {
            this.vv = jSONObject.optInt("dl_suspend_popup", 0);
        }
        this.ec = jSONObject.optInt("is_use_obm_convert", 0);
        this.sz = jSONObject.optInt("enable_notification", 0);
        this.f27533a = jSONObject.optInt("open_market_in_app", 0);
        this.f27534b = jSONObject.optInt("resume_task", 0);
        this.ns = jSONObject.optString("ugen_url");
        String strOptString = jSONObject.optString("ugen_md5");
        this.cx = strOptString;
        com.byazt.la.e.hp(this.ns, strOptString, (com.byazt.la.jx) null);
    }

    public static int a(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return -1;
        }
        return szVarSz.jl;
    }

    public static boolean e(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz != null && szVarSz.zy == 1;
    }

    public static boolean eb(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz != null && szVarSz.f27540q == 1;
    }

    public static boolean ec(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz != null && szVarSz.f27533a == 1;
    }

    public static int gu(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 0;
        }
        return szVarSz.hp;
    }

    public static boolean hp(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz != null && szVarSz.xs == 1;
    }

    public static int j(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 1;
        }
        return szVarSz.eb;
    }

    public static int jl(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 1;
        }
        return szVarSz.f27538l;
    }

    public static String jx(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return "close_obm";
        }
        int iA = szVarSz.a();
        String strB = mpVar.b();
        if (iA == 1 && !TextUtils.isEmpty(strB)) {
            return "open";
        }
        return "close_" + iA + "_" + strB;
    }

    public static int k(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 0;
        }
        return szVarSz.f27534b;
    }

    public static int l(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 0;
        }
        return szVarSz.a();
    }

    public static int q(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 300;
        }
        return szVarSz.gu;
    }

    public static boolean s(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz != null && szVarSz.f27535e == 1;
    }

    private static sz sz(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.u_();
    }

    public static int u(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 0;
        }
        return szVarSz.vv;
    }

    public static int v(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 1;
        }
        return szVarSz.f27544w;
    }

    public static String vv(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz == null ? "" : szVarSz.cx;
    }

    public static int w(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 0;
        }
        return szVarSz.f27541s;
    }

    public static String xs(mp mpVar) {
        sz szVarSz = sz(mpVar);
        return szVarSz == null ? "" : szVarSz.ns;
    }

    public static int zy(mp mpVar) {
        sz szVarSz = sz(mpVar);
        if (szVarSz == null) {
            return 1;
        }
        return szVarSz.jx;
    }

    public static boolean a(sz szVar) {
        return szVar != null && szVar.f27542u == 1;
    }

    public static int hp(sz szVar) {
        if (szVar == null) {
            return 1;
        }
        return szVar.f27538l;
    }

    public static int j(sz szVar) {
        if (szVar == null) {
            return 1;
        }
        return szVar.f27537k;
    }

    public static int l(sz szVar) {
        if (szVar == null) {
            return 1;
        }
        return szVar.jx;
    }

    public static int w(sz szVar) {
        if (szVar == null) {
            return 31457280;
        }
        return szVar.f27543v * 1048576;
    }

    public int eb() {
        return this.vv;
    }

    public int a() {
        return this.ec;
    }

    public int hp() {
        return this.f27538l;
    }

    public int j() {
        return this.jl;
    }

    public int l() {
        return this.f27541s;
    }

    public boolean w() {
        return this.zy == 1;
    }

    public void hp(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("auto_open", this.eb);
            jSONObject2.put("download_mode", this.f27541s);
            jSONObject2.put(g.a.f3275l, this.jl);
            jSONObject2.put("auto_control", this.f27540q);
            jSONObject2.put("auto_control_choose", this.f27535e);
            jSONObject2.put("auto_control_time", this.gu);
            jSONObject2.put("if_suspend_download", this.zy);
            jSONObject2.put("if_send_click", this.hp);
            jSONObject2.put("dl_popup", this.f27538l);
            jSONObject2.put("market_popup", this.jx);
            jSONObject2.put("if_pop_lp", this.f27536j);
            jSONObject2.put("pop_up_style_id", this.f27544w);
            jSONObject2.put("dl_network", this.f27537k);
            jSONObject2.put("dl_size", this.f27543v);
            jSONObject2.put("if_toast_market", this.f27542u);
            jSONObject2.put("enable_download_opt", this.xs);
            jSONObject2.put("dl_suspend_popup", this.vv);
            jSONObject2.put("is_use_obm_convert", this.ec);
            jSONObject2.put("ugen_url", this.ns);
            jSONObject2.put("ugen_md5", this.cx);
            jSONObject2.put("enable_notification", this.sz);
            jSONObject2.put("show_7factors_card", this.f27539n);
            jSONObject2.put("open_market_in_app", this.f27533a);
            jSONObject2.put("resume_task", this.f27534b);
            jSONObject.put("download_conf", jSONObject2);
        } catch (JSONException unused) {
        }
    }

    public static int jx(sz szVar) {
        if (szVar == null) {
            return 1;
        }
        return szVar.f27536j;
    }

    public boolean jx() {
        return this.f27539n == 1;
    }
}
