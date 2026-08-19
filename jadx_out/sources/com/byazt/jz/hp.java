package com.byazt.jz;

import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.common.f.g;
import com.byazt.xci.df;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.wt;
import com.byazt.xci.xh;
import com.byazt.xci.y;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 40, 28})
/* loaded from: classes.dex */
public class hp {
    private static com.byazt.xci.n a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.xci.n nVar = new com.byazt.xci.n();
        nVar.hp(jSONObject.optInt("ah", 1));
        nVar.l(jSONObject.optInt("am", 1));
        return nVar;
    }

    private static Map<String, Object> eb(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                map.put(next, jSONObject.opt(next));
            }
        }
        return map;
    }

    public static Pair<com.byazt.xci.hp, ArrayList<Integer>> hp(JSONObject jSONObject, com.byazt.jt.l lVar, f fVar, long j2) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.byazt.xci.hp hpVar = new com.byazt.xci.hp();
            hpVar.hp(jSONObject.optString("request_id"));
            hpVar.hp(jSONObject.optInt("ret"));
            hpVar.l(jSONObject.optString("message"));
            String strOptString = jSONObject.optString("auction_price");
            com.byazt.zn.ec.hp(jSONObject.optString("client_ipv4", ""));
            boolean zOptBoolean = jSONObject.optBoolean("need_get_materials");
            if (hpVar.hp() != 0) {
                return null;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                int i2 = 0;
                while (i2 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    i2++;
                    mp mpVarHp = hp(jSONObjectOptJSONObject, lVar, fVar, i2);
                    int iHp = hp(mpVarHp, lVar != null ? lVar.sz() : 0);
                    boolean zRk = mpVarHp.rk();
                    String strRu = mpVarHp.ru();
                    if (iHp != 200 && ((!zOptBoolean && !zRk) || TextUtils.isEmpty(strRu))) {
                        arrayList.add(Integer.valueOf(iHp));
                    }
                    mpVarHp.nu(strOptString);
                    mpVarHp.jx(j2);
                    mpVarHp.s(zOptBoolean);
                    hpVar.hp(mpVarHp);
                }
            }
            return new Pair<>(hpVar, arrayList);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static com.byazt.xci.o j(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.xci.o oVar = new com.byazt.xci.o();
        oVar.j(jSONObject.optString("bg_url"));
        oVar.jx(jSONObject.optString(g.a.f3271h));
        oVar.hp(jSONObject.optString("reward_image_url"));
        oVar.l(jSONObject.optString("reward_title"));
        oVar.w(jSONObject.optString(MediaFormat.KEY_SUBTITLE));
        return oVar;
    }

    public static com.byazt.xci.di jx(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.xci.di diVar = new com.byazt.xci.di();
        diVar.jx(jSONObject.optString("ugen_dialog_md5"));
        diVar.l(jSONObject.optString("ugen_dialog_url"));
        diVar.hp(jSONObject.optString("dialog_style"));
        return diVar;
    }

    public static com.byazt.xci.w l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.xci.w wVar = new com.byazt.xci.w();
        wVar.jx(jSONObject.optString("app_name"));
        wVar.j(jSONObject.optString("package_name"));
        wVar.l(jSONObject.optString("download_url"));
        wVar.hp(jSONObject.optInt("score", 4));
        wVar.l(jSONObject.optInt("comment_num", 0));
        wVar.jx(jSONObject.optInt("app_size", 0));
        wVar.hp(jSONObject.optString("quick_app_url", ""));
        return wVar;
    }

    private static int s(JSONObject jSONObject) {
        int i2 = 4;
        if ("download".equals(com.byazt.rj.jx.hp(jSONObject))) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app");
            String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString("package_name") : null;
            if (TextUtils.isEmpty(strOptString)) {
                strOptString = jSONObject.optString("package_name");
            }
            if (com.byazt.y.zy.w(sz.getContext(), strOptString)) {
                return 4;
            }
            i2 = 2;
            if (TextUtils.isEmpty(jSONObject.optString("market_url", ""))) {
                return com.byazt.dnb.l.hp(jSONObject) ? 2 : 1;
            }
        }
        return i2;
    }

    public static com.byazt.xci.a w(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.byazt.xci.a aVar = new com.byazt.xci.a();
        aVar.j(jSONObject.optString("developer_name"));
        aVar.l(jSONObject.optString("app_version"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("permissions");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            aVar.l(jSONArrayOptJSONArray);
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    aVar.hp(jSONObjectOptJSONObject.optString("permission_name"), jSONObjectOptJSONObject.optString("permission_desc"));
                }
            }
        }
        aVar.hp(jSONObject.optString("permissions_url"));
        aVar.hp(jSONObject.optInt("score", 0));
        aVar.hp(jSONObject.optJSONArray("creative_tags"));
        aVar.w(jSONObject.optString("privacy_policy_url"));
        aVar.a(jSONObject.optString("desc_url"));
        aVar.eb(jSONObject.optString("reg_number"));
        aVar.s(jSONObject.optString("reg_url"));
        aVar.e(jSONObject.optString("app_name"));
        aVar.q(jSONObject.optString("package_name"));
        return aVar;
    }

    private static int l(mp mpVar, int i2) {
        if (i2 != 3 && i2 != 4 && i2 != 0) {
            if (!ms.hp(mpVar)) {
                return 416;
            }
            if (TextUtils.isEmpty(ms.eb(mpVar))) {
                return TTAdConstant.LIVE_FEED_URL_CODE;
            }
        }
        return 200;
    }

    private static int l(List<com.byazt.xci.dy> list) {
        if (list == null) {
            return TTAdConstant.IMAGE_LIST_CODE;
        }
        if (list.size() <= 0) {
            return TTAdConstant.IMAGE_LIST_SIZE_CODE;
        }
        for (com.byazt.xci.dy dyVar : list) {
            if (dyVar == null) {
                return TTAdConstant.IMAGE_CODE;
            }
            if (TextUtils.isEmpty(dyVar.hp())) {
                return TTAdConstant.IMAGE_URL_CODE;
            }
        }
        return 200;
    }

    public static mp hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return hp(jSONObject, (com.byazt.jt.l) null, (f) null, 0);
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0722  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x07f5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0891  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x08b4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0913  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x09c3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x09ed  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x09f0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x05ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.byazt.xci.mp hp(org.json.JSONObject r21, com.byazt.jt.l r22, com.byazt.xci.f r23, int r24) {
        /*
            Method dump skipped, instructions count: 2555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jz.hp.hp(org.json.JSONObject, com.byazt.jt.l, com.byazt.xci.f, int):com.byazt.xci.mp");
    }

    private static com.byazt.nqo.hp hp(JSONObject jSONObject, mp mpVar) {
        com.byazt.nqo.hp hpVar = new com.byazt.nqo.hp();
        hpVar.hp(jSONObject.optString("id"));
        hpVar.l(jSONObject.optString(TKDownloadReason.KSAD_TK_MD5));
        hpVar.jx(jSONObject.optString("url"));
        hpVar.hp(jSONObject.optInt(com.umeng.ccg.a.f49756j));
        return hpVar;
    }

    private static void hp(mp mpVar, JSONObject jSONObject) {
        com.byazt.xci.xs xsVarK;
        if (mpVar == null || jSONObject == null) {
            return;
        }
        if ((ms.hp(mpVar) || y.hp(mpVar)) && (xsVarK = mpVar.k()) != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("reward_live_deep_link_params");
            xh xhVar = new xh();
            if (jSONObjectOptJSONObject != null) {
                xhVar.hp(jSONObjectOptJSONObject.optString("reward_live_deep_link_user_id"));
                xhVar.w(jSONObjectOptJSONObject.optString("reward_live_deep_link_request_id"));
                xhVar.l(jSONObjectOptJSONObject.optString("reward_live_deep_link_room_id"));
                xhVar.jx(jSONObjectOptJSONObject.optString("reawrd_live_short_touch_params"));
                xhVar.j(jSONObjectOptJSONObject.optString("reawrd_live_extra_pangle_scheme_params"));
                xhVar.hp(jSONObjectOptJSONObject.optLong("reward_live_last_time"));
                mpVar.hp(xhVar);
            } else {
                Map<String, String> mapHp = com.byazt.zn.ms.hp(xsVarK.l());
                if (mapHp == null || mapHp.size() <= 0) {
                    return;
                }
                xhVar.hp(mapHp.get("user_id"));
                xhVar.w(mapHp.get("request_id"));
                xhVar.l(mapHp.get("room_id"));
                xhVar.jx(mapHp.get("live_short_touch_params"));
                xhVar.j(mapHp.get("extra_pangle_scheme_params"));
                mpVar.hp(xhVar);
            }
            mpVar.zy(jSONObject.optBoolean("not_valid_download_url", false));
        }
    }

    private static wt hp(JSONObject jSONObject, int i2) {
        if (jSONObject == null) {
            return null;
        }
        wt wtVar = new wt();
        double dOptDouble = jSONObject.optDouble("splash_clickarea", 1.0d);
        wtVar.hp((int) ((dOptDouble == 1.0d || dOptDouble == 2.0d) ? dOptDouble : 1.0d));
        wtVar.eb(jSONObject.optInt("splash_style_id", 0));
        wtVar.hp(jSONObject.optString("splash_clicktext", ""));
        wtVar.l(jSONObject.optInt("area_height", 50));
        wtVar.jx(jSONObject.optInt("area_width", 236));
        if (i2 == 2) {
            wtVar.j(jSONObject.optInt("area_blank_height", 32));
        } else {
            wtVar.j(jSONObject.optInt("area_blank_height", 82));
        }
        wtVar.w(jSONObject.optInt("half_blank_height", 56));
        wtVar.l(jSONObject.optString("btn_background_dest_color", "#008DEA"));
        wtVar.jx(jSONObject.optString("top_splash_clicktext"));
        wtVar.hp(jSONObject.optJSONObject("text_config"));
        wtVar.l(jSONObject.optJSONObject("top_text_config"));
        wtVar.s(jSONObject.optInt("sliding_distance", 5));
        wtVar.hp(jSONObject.optJSONObject("slide_area"), i2);
        wtVar.a(jSONObject.optInt("splash_load_time_optimization"));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mock_interact");
        if (jSONObjectOptJSONObject != null) {
            try {
                wtVar.hp((float) jSONObjectOptJSONObject.optDouble("enable_ratio", 0.0d));
                wtVar.q(jSONObjectOptJSONObject.optInt("backup_add", 0));
                wtVar.e(jSONObjectOptJSONObject.optInt("slide_direction", 0));
                wtVar.gu(jSONObjectOptJSONObject.optInt("slide_threshold", 55));
                wtVar.jl(jSONObjectOptJSONObject.optInt("view_height_dynamic", 0));
                wtVar.l((float) jSONObjectOptJSONObject.optDouble("view_height_percent", 0.0d));
                wtVar.zy(jSONObjectOptJSONObject.optInt("view_post", 100));
                wtVar.k(jSONObjectOptJSONObject.optInt("ignore_up", 0));
                wtVar.v(jSONObjectOptJSONObject.optInt("long_press_duration", 0));
                wtVar.u(jSONObjectOptJSONObject.optInt("long_press_threshold", 10));
                return wtVar;
            } catch (Exception unused) {
                com.byazt.ymw.u.l("SplashControl", "interact parse error");
            }
        }
        return wtVar;
    }

    public static int hp(mp mpVar, int i2) {
        if (TextUtils.isEmpty(mpVar.j()) || mpVar.j().length() <= 1) {
            return 401;
        }
        int iHp = hp(mpVar.k());
        if (iHp != 200) {
            return iHp;
        }
        int iHp2 = hp(mpVar);
        if (iHp2 != 200) {
            return iHp2;
        }
        int iQ = mpVar.q();
        if (iQ == 2 || iQ == 3) {
            if (TextUtils.isEmpty(mpVar.s())) {
                return 405;
            }
        } else if (iQ != 4) {
            if (iQ == 5 && TextUtils.isEmpty(mpVar.qj())) {
                return TTAdConstant.INTERACTION_TYPE_CODE;
            }
        } else {
            iHp2 = hp(mpVar.v());
            if (iHp2 != 200) {
                return iHp2;
            }
        }
        int iHy = mpVar.hy();
        if (iHy != 2 && iHy != 3 && iHy != 4) {
            if (iHy == 5 || iHy == 15) {
                return df.e(mpVar);
            }
            if (iHy != 16) {
                return iHy != 166 ? iHp2 : l(mpVar, i2);
            }
        }
        return l(mpVar.vi());
    }

    private static int hp(mp mpVar) {
        if (mpVar.hy() != 166 || !ms.hp(mpVar) || d.w()) {
            return 200;
        }
        com.byazt.ymw.u.hp("穿山甲sdk没有集成点播/直播aar，不支持直播物料");
        return 404;
    }

    private static int hp(com.byazt.xci.xs xsVar) {
        if (xsVar == null) {
            return 200;
        }
        if (!TextUtils.isEmpty(xsVar.l()) && !TextUtils.isEmpty(xsVar.j())) {
            return (xsVar.w() == 1 || xsVar.w() == 2) ? 200 : 403;
        }
        if (TextUtils.isEmpty(xsVar.l())) {
            return 402;
        }
        return TTAdConstant.DEEPLINK_FALL_BACK_CODE;
    }

    private static int hp(com.byazt.xci.w wVar) {
        if (wVar == null) {
            return 406;
        }
        return TextUtils.isEmpty(wVar.l()) ? 407 : 200;
    }

    public static void hp(List<mp> list) {
        if (list == null || list.size() <= 1) {
            return;
        }
        List<mp> listSubList = list.subList(1, list.size());
        JSONArray jSONArray = new JSONArray();
        Iterator<mp> it = listSubList.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().ij());
        }
        if (jSONArray.length() > 0) {
            list.get(0).as(jSONArray.toString());
        }
    }
}
