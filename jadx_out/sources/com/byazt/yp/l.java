package com.byazt.yp;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import com.anythink.core.common.f.g;
import com.byazt.jz.ud;
import com.byazt.xci.df;
import com.byazt.xci.dy;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.hd;
import com.byazt.xci.jd;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.sz;
import com.byazt.xci.y;
import com.byazt.ymw.u;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.sigmob.sdk.base.n;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1798, 34})
/* loaded from: classes3.dex */
public class l {
    private static JSONObject a(mp mpVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (mpVar != null && com.byazt.we.hp.hp(mpVar)) {
            try {
                jSONObject.put("live_show_time", ms.l(mpVar));
                jSONObject.put("live_author_nickname", ms.jx(mpVar));
                if (ms.j(mpVar) > 0) {
                    jSONObject.put("live_author_follower_count", ms.j(mpVar));
                }
                if (ms.w(mpVar) > 0) {
                    jSONObject.put("live_watch_count", ms.w(mpVar));
                }
                jSONObject.put("live_description", ms.a(mpVar));
                jSONObject.put("live_feed_url", ms.eb(mpVar));
                jSONObject.put("live_cover_image_url", ms.s(mpVar));
                jSONObject.put("live_avatar_url", ms.q(mpVar));
                jSONObject.put("live_cover_image_width", ms.jl(mpVar));
                jSONObject.put("live_cover_image_height", ms.zy(mpVar));
                jSONObject.put("live_avatar_width", ms.e(mpVar));
                jSONObject.put("live_avatar_height", ms.gu(mpVar));
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject hp(float f2, float f3, boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f3);
            if (z2) {
                jSONObject.put("isLandscape", true);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String j(mp mpVar) {
        if (hd.a(mpVar) == null) {
            return null;
        }
        return hd.a(mpVar).l();
    }

    public static boolean jx(mp mpVar) {
        return mpVar != null && sz.jl(mpVar) == 2;
    }

    public static JSONObject l(mp mpVar) throws JSONException {
        int[] iArrW;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", mpVar.ll());
            if (mpVar.nq() != null) {
                jSONObject.put("icon", mpVar.nq().hp());
            }
            JSONArray jSONArray = new JSONArray();
            if (mpVar.vi() != null) {
                for (int i2 = 0; i2 < mpVar.vi().size(); i2++) {
                    dy dyVar = mpVar.vi().get(i2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("height", dyVar.jx());
                    jSONObject2.put("width", dyVar.l());
                    jSONObject2.put("url", dyVar.hp());
                    jSONObject2.put("image_key", dyVar.eb());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", mpVar.hy());
            jSONObject.put("interaction_type", mpVar.q());
            jSONObject.put("is_compliance_template", jx(mpVar));
            jSONObject.put(g.a.f3271h, mpVar.v_());
            jSONObject.put("description", mpVar.cu());
            jSONObject.put(n.f36449l, mpVar.qk());
            if (mpVar.v() != null) {
                jSONObject.put("comment_num", mpVar.v().a());
                jSONObject.put("score", mpVar.v().w());
                jSONObject.put("app_size", mpVar.v().eb());
                jSONObject.put("app", mpVar.v().s());
            }
            if (df.v(mpVar) != null) {
                JSONObject jsonObj = df.k(mpVar).toJsonObj();
                if (mpVar.hc() > 0 && df.eb(mpVar) > mpVar.hc()) {
                    jsonObj.put("video_duration", mpVar.hc());
                }
                if (com.byazt.nwu.hp.hp(mpVar) && (iArrW = df.w(mpVar)) != null && iArrW.length >= 2 && !com.byazt.nwu.hp.eb(mpVar)) {
                    jsonObj.put("cover_width", iArrW[0]);
                    jsonObj.put("cover_height", iArrW[1]);
                }
                df.eb(mpVar);
                jSONObject.put("video", jsonObj);
            }
            if (ea.xs(mpVar)) {
                jSONObject.put("reward_full_play_time", ea.v(mpVar));
                jSONObject.put("reward_full_time_type", 1);
            }
            jSONObject.put("reward_need_click", ea.d(mpVar));
            if (hd.a(mpVar) != null) {
                jSONObject.put("dynamic_creative", hd.a(mpVar).eb());
            }
            jSONObject.put("live_ad", a(mpVar));
            hp(mpVar, jSONObject);
            if (com.byazt.yx.l.hp().l(mpVar)) {
                jSONObject.put("live_interaction_type", 2);
            } else {
                jSONObject.put("live_interaction_type", 1);
            }
            jSONObject.put("adx_name", mpVar.nn());
            jSONObject.put("can_show_interactive", mpVar.dz());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Map<String, String> w(mp mpVar) {
        HashMap map = null;
        if (mpVar == null) {
            return null;
        }
        List<dy> listVi = mpVar.vi();
        if (listVi != null && listVi.size() > 0) {
            map = new HashMap();
            for (dy dyVar : listVi) {
                if (dyVar != null) {
                    map.put(dyVar.hp(), dyVar.eb());
                }
            }
        }
        return map;
    }

    public static JSONObject hp(View view) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return null;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            Context context = com.byazt.jz.sz.getContext();
            jSONObject.put("width", xh.j(context, width) * 1.0f);
            jSONObject.put("height", xh.j(context, height) * 1.0f);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject hp(mp mpVar) {
        jd jdVarEb = hd.eb(mpVar);
        if (jdVarEb == null) {
            return null;
        }
        String strJ = jdVarEb.j();
        try {
            if (!TextUtils.isEmpty(strJ)) {
                return new JSONObject(strJ);
            }
            String strHp = com.byazt.ca.l.hp().hp("ad", jdVarEb.hp(), jdVarEb.l());
            if (!TextUtils.isEmpty(strHp)) {
                return new JSONObject(strHp);
            }
            u.l("TemplateUtils", "template is null");
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject hp(mp mpVar, JSONObject jSONObject, JSONObject jSONObject2, boolean z2, String str, boolean z3) throws JSONException {
        JSONObject jSONObjectIj = mpVar.ij();
        try {
            jSONObjectIj.put("xSetting", ud.hp(mpVar, (AtomicBoolean) null));
            jSONObjectIj.put("xAdInfo", hp(mpVar, str));
            JSONObject jSONObject3 = new JSONObject();
            ud.hp(jSONObject3, ky.jl(mpVar));
            jSONObject3.put("platform", "android");
            jSONObjectIj.put("xAppInfo", jSONObject3);
            jSONObjectIj.put("xCreative", l(mpVar));
            if (jSONObject2 != null) {
                jSONObjectIj.put("xTemplate", jSONObject2);
            }
            if (jSONObject != null) {
                float fOptDouble = (float) jSONObject.optDouble("width");
                float fOptDouble2 = (float) jSONObject.optDouble("height");
                boolean zOptBoolean = jSONObject.optBoolean("isLandscape");
                if (!Float.isNaN(fOptDouble) && !Float.isNaN(fOptDouble2)) {
                    if (z3 && com.byazt.jz.sz.l().xq()) {
                        float f2 = com.byazt.jz.sz.getContext().getResources().getDisplayMetrics().density;
                        float f3 = Resources.getSystem().getDisplayMetrics().density;
                        jSONObject.put("width", xh.l(f3, xh.hp(f2, fOptDouble)));
                        jSONObject.put("height", xh.l(f3, xh.hp(f2, fOptDouble2)));
                    } else {
                        if (!z3 && com.byazt.jz.sz.l().ij() && !zOptBoolean) {
                            jSONObject.put("width", Math.min(fOptDouble, xh.j(com.byazt.jz.sz.getContext(), xh.j(com.byazt.jz.sz.getContext()))));
                        }
                        jSONObject.put("height", fOptDouble2);
                    }
                } else {
                    jSONObject.put("width", 0.0d);
                    jSONObject.put("height", 0.0d);
                }
                try {
                    jSONObject.put("render_height_limit", hd.hp(mpVar, jSONObject.optInt("width")));
                } catch (JSONException unused) {
                }
                jSONObjectIj.put("xSize", jSONObject);
            }
            JSONObject jSONObject4 = new JSONObject();
            JSONObject jSONObject5 = new JSONObject();
            Context context = com.byazt.jz.sz.getContext();
            jSONObject5.put("width", xh.j(context, xh.j(context)));
            jSONObject5.put("height", xh.j(context, xh.w(context)));
            jSONObject4.put("screen_size", jSONObject5);
            jSONObject4.put("content_size", jSONObject);
            jSONObject4.put("platform", "android");
            jSONObjectIj.put("xEnvInfo", jSONObject4);
            jSONObjectIj.put("gesture_through_enable", z2 && com.byazt.jz.sz.l().nl());
        } catch (Exception unused2) {
        }
        return jSONObjectIj;
    }

    public static String l(mp mpVar, String str) {
        List<dy> listVi;
        if (mpVar != null && (listVi = mpVar.vi()) != null && listVi.size() > 0) {
            for (dy dyVar : listVi) {
                if (dyVar != null && TextUtils.equals(str, dyVar.hp())) {
                    return dyVar.eb();
                }
            }
        }
        return null;
    }

    public static JSONObject hp(mp mpVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            String strJ = mpVar.j();
            if (!TextUtils.isEmpty(strJ)) {
                jSONObject.put("cid", strJ);
            }
            String strW_ = mpVar.w_();
            if (!TextUtils.isEmpty(strW_)) {
                jSONObject.put("log_extra", strW_);
            }
            String strSz = ky.sz(mpVar);
            if (!TextUtils.isEmpty(strSz)) {
                jSONObject.put("download_url", strSz);
            }
            jSONObject.put("isDirectDownload", mpVar.m());
            jSONObject.put("dynamic_configs", mpVar.u());
            if (!TextUtils.isEmpty(str) && str.contains("advance_reward")) {
                jSONObject.put("userData", str);
            }
            if (ec.zy(mpVar)) {
                jSONObject.put("voice_btn_position", ec.xs(mpVar));
            }
            jSONObject.put("if_show_win", mpVar.pp());
            String strWi = mpVar.wi();
            if (!TextUtils.isEmpty(strWi) && strWi.contains(",")) {
                jSONObject.put("isMultAd", 1);
            }
            jSONObject.put("is_derive_image", com.byazt.nwu.hp.j(mpVar));
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static JSONObject hp(float f2, float f3, boolean z2, mp mpVar, boolean z3) throws JSONException {
        String strW;
        String strA;
        com.byazt.gr.l lVarHp;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            JSONObject jSONObject2 = new JSONObject();
            if (z3 && com.byazt.jz.sz.l().xq()) {
                float f4 = com.byazt.jz.sz.getContext().getResources().getDisplayMetrics().density;
                float f5 = Resources.getSystem().getDisplayMetrics().density;
                jSONObject2.put("width", xh.l(f5, xh.hp(f4, f2)));
                jSONObject2.put("height", xh.l(f5, xh.hp(f4, f3)));
            } else {
                jSONObject2.put("width", f2);
                jSONObject2.put("height", f3);
            }
            if (z2) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", l(mpVar));
            if (hd.a(mpVar) != null) {
                strW = hd.a(mpVar).w();
                strA = hd.a(mpVar).a();
            } else {
                strW = null;
                strA = null;
            }
            if (TextUtils.isEmpty(strW)) {
                strW = (hd.a(mpVar) == null || (lVarHp = com.byazt.ir.l.hp(hd.a(mpVar).l())) == null) ? null : lVarHp.w();
            }
            jSONObject.put("template_Plugin", strW);
            jSONObject.put("diff_template_Plugin", strA);
            jSONObject.put("dynamic_configs", mpVar.u());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject hp(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return jSONObject;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject3;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("keys");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i2);
                    if (jSONObject.has(strOptString)) {
                        jSONObject3.put(strOptString, jSONObject.opt(strOptString));
                    }
                }
                jSONObject3.put("xSetting", jSONObject.opt("xSetting"));
                jSONObject3.put("xAdInfo", jSONObject.opt("xAdInfo"));
                jSONObject3.put("xAppInfo", jSONObject.opt("xAppInfo"));
                jSONObject3.put("xSize", jSONObject.opt("xSize"));
                jSONObject3.put("xTemplate", jSONObject.opt("xTemplate"));
                return jSONObject3;
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void hp(mp mpVar, JSONObject jSONObject) {
        if (ky.jl(mpVar) == 7 && y.hp(mpVar)) {
            mpVar.mm().hp(jSONObject);
        }
    }
}
