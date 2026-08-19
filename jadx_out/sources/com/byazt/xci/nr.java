package com.byazt.xci;

import android.text.TextUtils;
import androidx.core.view.PointerIconCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW})
/* loaded from: classes3.dex */
public class nr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f27397a;
    public int eb;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27398j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27399l;

    /* renamed from: w, reason: collision with root package name */
    public String f27400w;

    public nr(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("splash_card")) == null) {
            return;
        }
        this.f27397a = true;
        this.hp = jSONObjectOptJSONObject.optBoolean("click_on_close", false);
        this.f27399l = jSONObjectOptJSONObject.optInt("card_stay_count_down", 5);
        this.jx = jSONObjectOptJSONObject.optInt("card_click_area", 2);
        this.f27400w = jSONObjectOptJSONObject.optString("card_text", "详情页或第三方应用");
        int iOptInt = jSONObjectOptJSONObject.optInt("splash_card_style_id", 0);
        this.eb = iOptInt;
        if (iOptInt == 1) {
            this.f27398j = jSONObjectOptJSONObject.optString("card_top_text", "摇一摇或点击了解更多");
        } else {
            this.f27398j = jSONObjectOptJSONObject.optString("card_top_text", "点击跳转");
        }
    }

    public static int a(mp mpVar) {
        int i2;
        nr nrVarJl = jl(mpVar);
        if (nrVarJl != null && (i2 = nrVarJl.f27399l) > 0 && i2 <= 5) {
            return i2;
        }
        return 5;
    }

    public static int e(mp mpVar) {
        int i2 = Calendar.getInstance().get(7);
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(zy(mpVar), "tt_sp");
        int i3 = jxVarHp.get("splash_card_show_day", -1);
        int i4 = jxVarHp.get("splash_card_show_count", 0);
        if (i3 == i2) {
            return i4;
        }
        return 0;
    }

    public static boolean eb(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        return nrVarJl == null || nrVarJl.jx == 1;
    }

    public static boolean gu(mp mpVar) {
        if (mpVar == null || mpVar.nq() == null || !mpVar.nq().w() || mpVar.vi() == null || mpVar.vi().isEmpty() || !mpVar.vi().get(0).w() || TextUtils.isEmpty(mpVar.v_())) {
            return false;
        }
        if (TextUtils.isEmpty(mpVar.qk())) {
            return (mpVar.v() == null || TextUtils.isEmpty(mpVar.v().jx())) ? false : true;
        }
        return true;
    }

    public static String j(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        return nrVarJl == null ? "点击跳转" : w(mpVar) == 1 ? TextUtils.isEmpty(nrVarJl.f27398j) ? "摇一摇或点击了解更多" : nrVarJl.f27398j : TextUtils.isEmpty(nrVarJl.f27398j) ? "点击跳转" : nrVarJl.f27398j;
    }

    private static nr jl(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.gb();
    }

    public static String jx(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        return (nrVarJl == null || TextUtils.isEmpty(nrVarJl.f27400w)) ? "详情页或第三方应用" : nrVarJl.f27400w;
    }

    public static void l(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        if (nrVarJl == null || mpVar.p() || mpVar.wf() == 2 || !nrVarJl.f27397a || e(mpVar) >= com.byazt.jz.sz.l().in()) {
            return;
        }
        com.byazt.jdb.j.jx(mpVar, "splash_ad", "if_splash_card");
        if (gu(mpVar)) {
            return;
        }
        com.byazt.jdb.j.jx(mpVar, "splash_ad", "card_show_fail");
    }

    public static void q(mp mpVar) {
        int i2 = Calendar.getInstance().get(7);
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(zy(mpVar), "tt_sp");
        int i3 = jxVarHp.get("splash_card_show_day", -1) == i2 ? jxVarHp.get("splash_card_show_count", 0) : 0;
        jxVarHp.put("splash_card_show_day", i2);
        jxVarHp.put("splash_card_show_count", i3 + 1);
    }

    public static boolean s(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        if (nrVarJl == null) {
            return true;
        }
        return nrVarJl.hp;
    }

    public static int w(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        if (nrVarJl == null) {
            return 0;
        }
        return nrVarJl.eb;
    }

    private static String zy(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.xq();
    }

    public void hp(JSONObject jSONObject) {
        try {
            if (this.f27397a) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("click_on_close", this.hp);
                jSONObject2.put("card_stay_count_down", this.f27399l);
                jSONObject2.put("card_click_area", this.jx);
                jSONObject2.put("card_text", this.f27400w);
                jSONObject2.put("card_top_text", this.f27398j);
                jSONObject2.put("splash_card_style_id", this.eb);
                jSONObject.put("splash_card", jSONObject2);
            }
        } catch (JSONException unused) {
        }
    }

    public static boolean hp(mp mpVar) {
        nr nrVarJl = jl(mpVar);
        if (nrVarJl != null && !mpVar.p() && mpVar.wf() != 2 && nrVarJl.f27397a && e(mpVar) < com.byazt.jz.sz.l().in() && gu(mpVar)) {
            return nrVarJl.f27397a;
        }
        return false;
    }
}
