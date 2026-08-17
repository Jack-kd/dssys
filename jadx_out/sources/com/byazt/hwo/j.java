package com.byazt.hwo;

import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.gy.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.rk.w;
import com.byazt.xci.mp;
import com.sigmob.sdk.base.n;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1224, 38})
/* loaded from: classes2.dex */
public class j {
    public static String hp = "tt_csj_node_line_detail";

    private static String a(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    private static String eb(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    public static void hp(String str, String str2) {
        l(str2).remove(str);
    }

    private static String j(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    private static void jx(String str, String str2) {
        JSONObject jSONObjectL;
        try {
            JSONObject jSONObject = new JSONObject(str);
            final String strOptString = jSONObject.optString("node_line_name");
            final String strOptString2 = jSONObject.optString("lifecycle_id");
            final int iOptInt = jSONObject.optInt("video_type", -1);
            final int iOptInt2 = jSONObject.optInt(g.a.f3275l, -1);
            final String strOptString3 = jSONObject.optString("ad_load_id");
            final String strOptString4 = jSONObject.optString("ad_show_id");
            final String strOptString5 = jSONObject.optString("node_line_version");
            final int iOptInt3 = jSONObject.optInt("unexpected_type");
            final int iOptInt4 = jSONObject.optInt("bidding_type");
            String strOptString6 = jSONObject.optString("node_line");
            final JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("node_line_detail");
            if ("app_node_line".equals(strOptString) && !TextUtils.isEmpty(strOptString6) && !strOptString6.contains("0504") && jSONArrayOptJSONArray != null && (jSONObjectL = l(str2, strOptString2)) != null) {
                strOptString6 = strOptString6 + "0504";
                jSONArrayOptJSONArray.put(jSONObjectL);
            }
            final String str3 = strOptString6;
            final String strOptString7 = jSONObject.optString("creative_id");
            final String strOptString8 = jSONObject.optString("req_id");
            final String strOptString9 = jSONObject.optString("extra");
            final int iOptInt5 = jSONObject.optInt("ad_type");
            final String strOptString10 = jSONObject.optString("rit");
            final String strOptString11 = jSONObject.optString("ad_info");
            long jOptLong = jSONObject.optLong("ts");
            final boolean zOptBoolean = jSONObject.optBoolean("need_node_line_detail");
            final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("key_element_info");
            final JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("no_action_array");
            final JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("motion_info");
            final String strOptString12 = jSONObject.optString("style_id");
            final int iOptInt6 = jSONObject.optInt("style_category");
            final int iOptInt7 = jSONObject.optInt("component_type");
            final int iOptInt8 = jSONObject.optInt("render_sequence");
            final int iOptInt9 = jSONObject.optInt("display_area");
            final JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("container_rect");
            final JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("image_rect");
            final JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("video_rect");
            final int iOptInt10 = jSONObject.optInt("image_mode");
            k.hp().hp(jOptLong, strOptString, new com.byazt.fq.hp() { // from class: com.byazt.hwo.j.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        if (!TextUtils.isEmpty(strOptString2)) {
                            jSONObject2.putOpt("lifecycle_id", strOptString2);
                        }
                        if (!TextUtils.isEmpty(strOptString3)) {
                            jSONObject2.putOpt("ad_load_id", strOptString3);
                        }
                        if (!TextUtils.isEmpty(strOptString4)) {
                            jSONObject2.putOpt("ad_show_id", strOptString4);
                        }
                        int i2 = iOptInt;
                        if (i2 > 0) {
                            jSONObject2.putOpt("video_type", Integer.valueOf(i2));
                        }
                        int i3 = iOptInt2;
                        if (i3 > 0) {
                            jSONObject2.putOpt(g.a.f3275l, Integer.valueOf(i3));
                        }
                        jSONObject2.putOpt("key_element_info", jSONObjectOptJSONObject);
                        jSONObject2.putOpt("no_action_array", jSONArrayOptJSONArray2);
                        jSONObject2.putOpt("motion_info", jSONObjectOptJSONObject2);
                        jSONObject2.putOpt("bidding_type", Integer.valueOf(iOptInt4));
                        jSONObject2.putOpt("is_from_cache", 1);
                        jSONObject2.putOpt("node_line_version", strOptString5);
                        jSONObject2.putOpt("unexpected_type", Integer.valueOf(iOptInt3));
                        jSONObject2.putOpt("node_line", str3);
                        if (zOptBoolean) {
                            jSONObject2.putOpt("node_line_detail", jSONArrayOptJSONArray);
                        }
                        if ("easy_play_node_line".equals(strOptString)) {
                            if (!TextUtils.isEmpty(strOptString12)) {
                                jSONObject2.putOpt("style_id", strOptString12);
                            }
                            jSONObject2.putOpt("style_category", Integer.valueOf(iOptInt6));
                            jSONObject2.putOpt("component_type", Integer.valueOf(iOptInt7));
                            jSONObject2.putOpt("render_sequence", Integer.valueOf(iOptInt8));
                            jSONObject2.putOpt("display_area", Integer.valueOf(iOptInt9));
                        }
                        if ("view_node_line".equals(strOptString)) {
                            jSONObject2.putOpt("container_rect", jSONObjectOptJSONObject3);
                            jSONObject2.putOpt("image_rect", jSONObjectOptJSONObject4);
                            jSONObject2.putOpt("video_rect", jSONObjectOptJSONObject5);
                            int i4 = iOptInt10;
                            if (i4 > 0) {
                                jSONObject2.putOpt("image_mode", Integer.valueOf(i4));
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    return com.byazt.jlb.l.l().j(strOptString7).a(strOptString8).s(strOptString9).hp(iOptInt5).jx(strOptString10).q(strOptString11).l(jSONObject2.toString());
                }
            });
        } catch (Throwable unused) {
        }
    }

    private static com.byazt.ctq.jx l(String str) {
        return com.byazt.ry.j.hp(str, hp);
    }

    private static String s(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    private static String w(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    public static void hp(String str, String str2, String str3) {
        l(str3).put(str, str2);
    }

    private static JSONObject l(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                com.byazt.ctq.jx jxVarL = w.l(str);
                if (jxVarL == null) {
                    return null;
                }
                String str3 = jxVarL.get(hp.hp("app") + str2, "");
                if (TextUtils.isEmpty(str3)) {
                    return null;
                }
                return new JSONObject(str3);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static void hp(String str) {
        com.byazt.ctq.jx jxVarL = l(str);
        Map all = jxVarL.getAll();
        if (all == null || all.isEmpty()) {
            return;
        }
        all.size();
        for (String str2 : all.keySet()) {
            Object obj = all.get(str2);
            if (str2 != null && (str2.startsWith("key_tt_csj_node_line_") || str2.startsWith("key_tt_csj_other_node_line_"))) {
                if (obj instanceof String) {
                    jx((String) obj, str);
                }
                jxVarL.remove(str2);
            }
        }
    }

    private static String l(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    public static void hp(final List<l> list, final com.byazt.gy.hp hpVar, String str, final JSONObject jSONObject) {
        if (hpVar == null || jSONObject == null) {
            return;
        }
        k.hp().hp(System.currentTimeMillis() / 1000, str, new com.byazt.fq.hp() { // from class: com.byazt.hwo.j.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                boolean zUf = sz.l().uf();
                try {
                    jSONObject.putOpt("bidding_type", Integer.valueOf(j.hp(hpVar)));
                    jSONObject.putOpt("node_line_version", "1.0.0");
                    jSONObject.putOpt("unexpected_type", Integer.valueOf(hpVar.f20628e));
                    jSONObject.putOpt("node_line", j.hp((List<l>) list));
                    if (zUf) {
                        jSONObject.putOpt("node_line_detail", j.l((List<l>) list));
                    }
                } catch (Throwable unused) {
                }
                com.byazt.jlb.l<com.byazt.jlb.l> lVarL = com.byazt.jlb.l.l();
                mp mpVar = hpVar.f20629q;
                if (mpVar != null) {
                    lVarL = lVarL.j(mpVar.j()).a(hpVar.f20629q.ns()).s(hpVar.f20629q.w_()).q(hpVar.f20629q.hb());
                }
                return lVarL.hp(hpVar.eb).jx(hpVar.f20630s).l(jSONObject.toString());
            }
        });
    }

    public static JSONArray l(List<l> list) {
        JSONArray jSONArray = new JSONArray();
        for (l lVar : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("l_type", lVar.l());
                jSONObject.putOpt("type", lVar.hp());
                jSONObject.putOpt("ts", Long.valueOf(lVar.jx()));
                if (lVar.j() >= 0) {
                    jSONObject.putOpt(n.f36449l, Integer.valueOf(lVar.j()));
                }
                if (lVar.w() >= 0 && "showed".equals(lVar.hp())) {
                    boolean z2 = true;
                    if (lVar.w() != 1) {
                        z2 = false;
                    }
                    jSONObject.putOpt("create_show_tracker", Boolean.valueOf(z2));
                }
            } catch (Throwable unused) {
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    public static String hp(List<l> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<l> it = list.iterator();
        while (it.hasNext()) {
            sb.append(hp(it.next()));
        }
        return sb.toString();
    }

    public static String hp(l lVar) {
        if (lVar == null) {
            return "";
        }
        if ("ad_load".equals(lVar.l())) {
            return l(lVar);
        }
        if ("ad_show".equals(lVar.l())) {
            return jx(lVar);
        }
        if ("video".equals(lVar.l())) {
            return j(lVar);
        }
        if ("download".equals(lVar.l())) {
            return w(lVar);
        }
        if ("app".equals(lVar.l())) {
            return a(lVar);
        }
        if ("view".equals(lVar.l())) {
            return eb(lVar);
        }
        if (!"easy_play".equals(lVar.l())) {
            return "";
        }
        return s(lVar);
    }

    public static int hp(com.byazt.gy.hp hpVar) {
        mp mpVar;
        if (hpVar != null && (mpVar = hpVar.f20629q) != null) {
            try {
                Map<String, Object> mapRp = mpVar.rp();
                if (mapRp == null) {
                    return 0;
                }
                Object obj = mapRp.get("sdk_bidding_type");
                if (obj instanceof Integer) {
                    return ((Integer) obj).intValue();
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static void hp(JSONObject jSONObject, com.byazt.gy.hp hpVar, List<l> list, String str) {
        if (jSONObject == null || hpVar == null || list == null) {
            return;
        }
        try {
            jSONObject.putOpt("node_line_version", "1.0.0");
            jSONObject.putOpt("unexpected_type", Integer.valueOf(hpVar.f20628e));
            jSONObject.putOpt("bidding_type", Integer.valueOf(hp(hpVar)));
            jSONObject.putOpt("node_line", hp(list));
            jSONObject.putOpt("node_line_detail", l(list));
            mp mpVar = hpVar.f20629q;
            if (mpVar != null) {
                jSONObject.putOpt("creative_id", mpVar.j());
                jSONObject.putOpt("req_id", hpVar.f20629q.ns());
                jSONObject.putOpt("extra", hpVar.f20629q.w_());
                jSONObject.putOpt("ad_info", hpVar.f20629q.hb());
            }
            jSONObject.putOpt("ad_type", Integer.valueOf(hpVar.eb));
            if (!TextUtils.isEmpty(hpVar.f20630s)) {
                jSONObject.putOpt("rit", hpVar.f20630s);
            }
            jSONObject.putOpt("ts", Long.valueOf(System.currentTimeMillis() / 1000));
            jSONObject.putOpt("need_node_line_detail", Boolean.valueOf(sz.l().uf()));
            hp(hp.hp(str) + hpVar.hp(), jSONObject.toString(), hpVar.l());
        } catch (Throwable unused) {
        }
    }

    private static String jx(l lVar) {
        if (lVar == null) {
            return "";
        }
        String strHp = lVar.hp();
        strHp.getClass();
        switch (strHp) {
        }
        return "";
    }

    public static int hp(s sVar) {
        if (sVar == null) {
            return 0;
        }
        Object objHp = sVar.hp(n.f36449l);
        if (objHp instanceof Integer) {
            return ((Integer) objHp).intValue();
        }
        return 0;
    }
}
