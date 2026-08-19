package com.byazt.jdb;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.q;
import com.byazt.jdb.hp;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.lf.k;
import com.byazt.pg.jl;
import com.byazt.rx.BaseConstants;
import com.byazt.sf.gu;
import com.byazt.xci.mp;
import com.byazt.xci.rv;
import com.byazt.xci.ux;
import com.byazt.xci.xs;
import com.byazt.xci.y;
import com.byazt.ymw.u;
import com.byazt.zn.b;
import com.byazt.zn.di;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.byazt.zn.xh;
import com.bytedance.android.metrics.LiveMetrics;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 169, 38})
/* loaded from: classes.dex */
public class j {
    public static int hp;

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(mp mpVar, String str, JSONObject jSONObject) throws JSONException {
        com.byazt.jt.l lVarDb;
        if (d.s() && (lVarDb = mpVar.db()) != null) {
            String strZy = lVarDb.zy();
            if (TextUtils.isEmpty(strZy)) {
                return;
            }
            jSONObject.putOpt("media_extra", strZy);
        }
    }

    public static void eb(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void hp(mp mpVar) {
    }

    public static void j(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void jx(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void l(final mp mpVar, final String str, final Map<String, Object> map, final Double d2) throws JSONException {
        if (mpVar == null) {
            return;
        }
        final float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - ky.u(mpVar)).floatValue();
        final String strHp = b.hp(str, ((jl) com.byazt.ym.j.getService("device_info_new")).getUnlockTime(), ky.zy(mpVar), com.byazt.ton.l.hp());
        mpVar.xm().jx();
        hp++;
        hp(mpVar, str, "show", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.38
            public void hp(mp mpVar2, Double d3, JSONObject jSONObject) {
                Object obj;
                Object obj2;
                try {
                    Map<String, Object> mapRp = mpVar2.rp();
                    if (mapRp == null || (obj = mapRp.get("sdk_bidding_type")) == null || Integer.parseInt(obj.toString()) != 2) {
                        return;
                    }
                    if (d3 != null) {
                        jSONObject.put("ttdsp_price", d3);
                    } else if (mpVar2.zd() && (obj2 = mapRp.get("price")) != null) {
                        jSONObject.put("ttdsp_price", Double.parseDouble(obj2.toString()));
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("device", com.byazt.lca.hp.hp(sz.getContext(), com.byazt.qk.q.hp(str)).toString());
                jSONObject2.put(PointParamKey.IS_CACHE, mpVar.uj() ? 1 : 0);
                mp mpVar2 = mpVar;
                jSONObject2.put("cache_type", mpVar2.gu(mpVar2.uj()));
                com.byazt.yek.jx.hp(mpVar, jSONObject2, true);
                Map map2 = map;
                if (map2 != null) {
                    if (!map2.containsKey("show_send_type")) {
                        map.put("show_send_type", 0);
                    }
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                }
                jSONObject2.put("start2req_time", SystemClock.elapsedRealtime() - vv.f21996w);
                jSONObject2.put("start_type", !vv.f21995l.get() ? 1 : 0);
                jSONObject2.put("show_count", j.hp);
                String strW = com.byazt.jz.s.u().w();
                if (!TextUtils.isEmpty(strW)) {
                    jSONObject2.put("can_use_sensor", strW);
                }
                if (sz.l().ms()) {
                    jSONObject2.put("mcod", "-1");
                } else if (!com.byazt.jz.s.u().e()) {
                    jSONObject2.put("mcod", "0");
                }
                if (!com.byazt.jz.s.u().eb()) {
                    jSONObject2.put("od", "0");
                }
                jSONObject2.put("is_shake_ads", com.byazt.jz.s.u().ec());
                jSONObject2.put("direction", com.byazt.cqt.hp.hp().a());
                j.a(mpVar, str, jSONObject2);
                String str2 = strHp;
                if (str2 != null) {
                    xh.hp(jSONObject2, str2);
                }
                jSONObject2.put("live_sdk_status", com.byazt.yx.l.hp().jx());
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject2.put("shakeLiSize", com.byazt.ymw.w.hp(sz.getContext()).hp());
                if (mpVar.hl()) {
                    jSONObject2.put("reward_show_type", mpVar.nf());
                    jSONObject2.put("browse_time", mpVar.ba());
                }
                j.hp(jSONObject2);
                mpVar.xm().hp(jSONObject2, true);
                JSONObject jSONObjectXj = mpVar.xj();
                if (jSONObjectXj != null) {
                    ky.hp(mpVar, jSONObjectXj);
                    jSONObject2.putOpt("applist_info", jSONObjectXj);
                }
                gu.hp(mpVar);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                float f2 = fFloatValue;
                if (f2 <= 0.0f) {
                    f2 = 0.0f;
                }
                jSONObject.putOpt(q.a.f3394i, Float.valueOf(f2));
                com.byazt.mb.jx.jx().hp(mpVar, fFloatValue);
                String strGs = mpVar.gs();
                if (!TextUtils.isEmpty(strGs)) {
                    try {
                        double d3 = Double.parseDouble(strGs);
                        if (d3 <= 0.0d) {
                            jSONObject.put("ttdsp_price", 0);
                            return;
                        }
                        jSONObject.put("ttdsp_price", d3);
                    } catch (Throwable unused) {
                        jSONObject.put("ttdsp_price", 0);
                    }
                }
                hp(mpVar, d2, jSONObject);
            }
        });
        String strHp2 = v.hp();
        List<String> listBv = mpVar.bv();
        if (!TextUtils.isEmpty(strHp2)) {
            HashMap map2 = new HashMap();
            map2.put("aid", mpVar.cx());
            map2.put("cid", mpVar.j());
            map2.put("req_id", mpVar.ns());
            map2.put("customer_id", ky.v(mpVar));
            com.byazt.lf.l.hp(strHp2, listBv, true, map2, hp(mpVar, str, "show"));
        } else if (listBv != null && listBv.size() != 0) {
            hp(mpVar, listBv, str, "no did", "show");
        }
        if (hp % 5 == 0 && com.byazt.lk.hp.hp() != null) {
            com.byazt.lk.hp.hp().l("AdShow" + System.currentTimeMillis());
        }
        if (com.byazt.yx.l.hp().a(mpVar)) {
            k.hp(mpVar);
            com.byazt.we.hp.hp(LiveMetrics.EVENT_LIVESDK_LIVE_SHOW, mpVar, 0L);
        }
        ky.jx();
        com.byazt.tn.l.hp(mpVar.xq());
        com.byazt.yx.l.hp().j();
        com.byazt.jz.s.u().jx().j();
        b.hp(hp, 1);
        com.byazt.jz.j.hp().jx(mpVar.hb());
        com.byazt.mb.jx.jx().a();
    }

    public static void q(mp mpVar, String str, String str2, Map<String, Object> map) {
        ux uxVarA_ = mpVar.A_();
        if (map == null) {
            map = new HashMap<>();
        }
        if (uxVarA_ != null) {
            map.put("wc_type", Integer.valueOf(uxVarA_.w()));
        }
        map.put("rom_new_version", di.k());
        map.put("is_background", Boolean.valueOf(com.byazt.jz.s.u().hp()));
        map.put("interaction_type", Integer.valueOf(mpVar.q()));
        map.put("can_query", Boolean.valueOf(ky.o()));
        hp(mpVar, str, str2, map);
    }

    public static void s(mp mpVar, String str, String str2, Map<String, Object> map) {
        ux uxVarA_ = mpVar.A_();
        if (map == null) {
            map = new HashMap<>();
        }
        if (uxVarA_ != null) {
            map.put("wc_type", Integer.valueOf(uxVarA_.w()));
        }
        map.put("rom_new_version", di.k());
        map.put("is_background", Boolean.valueOf(com.byazt.jz.s.u().hp()));
        map.put("interaction_type", Integer.valueOf(mpVar.q()));
        map.put("can_query", Boolean.valueOf(ky.o()));
        hp(mpVar, str, str2, map);
    }

    public static void hp(String str, String str2, String str3, String str4, com.byazt.dhy.hp hpVar) {
        new hp.C0281hp().w(str3).j(str4).hp(str).l(str2).hp(hpVar);
    }

    public static void j(mp mpVar, String str, final long j2) {
        hp(mpVar, str, "render_live_picture_success", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.23
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                jSONObject.put("duration", j2);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, new JSONObject().toString());
            }
        });
    }

    public static void jx(final mp mpVar, String str, String str2, final long j2, final JSONObject jSONObject) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.15
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put("duration", j2);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
            }
        });
    }

    public static void w(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void j(mp mpVar, String str, final JSONObject jSONObject) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        hp(mpVar, str, "splash_ad_showstat", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.36
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
            }
        });
    }

    public static void jx(mp mpVar, String str, String str2) {
        hp(mpVar, str, str2, (com.byazt.dhy.hp) null);
    }

    public static void jx(mp mpVar, String str, String str2, JSONObject jSONObject) {
        if (mpVar == null) {
            return;
        }
        new hp.C0281hp().w(mpVar.j()).j(mpVar.w_()).hp(str).l(str2).hp(jSONObject).hp((com.byazt.dhy.hp) null);
    }

    public static void a(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void hp(mp mpVar, String str, String str2, com.byazt.dhy.hp hpVar) {
        if (mpVar == null) {
            return;
        }
        new hp.C0281hp().w(mpVar.j()).j(mpVar.w_()).hp(str).l(str2).eb(mpVar.ns()).hp(hpVar);
    }

    public static void jx(final mp mpVar, String str, final long j2) {
        hp(mpVar, str, "load", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.21
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
                jSONObject.put("duration", Math.min(j2, 600000L));
            }
        });
    }

    public static void jx(mp mpVar, String str, final JSONObject jSONObject) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        hp(mpVar, str, "cache_correct_details", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.31
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
            }
        });
    }

    public static void jx(final mp mpVar, String str) {
        hp(mpVar, str, "cache_ana_upload", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.37
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                mpVar.xm().hp(jSONObject2, false);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
            }
        });
    }

    public static void hp(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, com.byazt.dhy.hp hpVar) {
        new hp.C0281hp().j(str4).hp(str).jx(str3).l(str2).w(str5).hp(jSONObject).hp(hpVar);
    }

    public static void hp(mp mpVar, String str, String str2, JSONObject jSONObject, com.byazt.dhy.hp hpVar) {
        if (mpVar == null) {
            return;
        }
        new hp.C0281hp().w(mpVar.j()).j(mpVar.w_()).hp(str).l(str2).hp(jSONObject).eb(mpVar.ns()).hp(hpVar);
    }

    public static void hp(final mp mpVar, String str, String str2, final JSONObject jSONObject) {
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.1
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    com.byazt.nwu.hp.hp(jSONObject3, mpVar);
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                }
            }
        });
    }

    public static void l(mp mpVar, String str, String str2, Map<String, Object> map) {
        hp(mpVar, str, str2, map);
    }

    public static void hp(final mp mpVar, String str, String str2, final Map<String, Object> map) {
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.12
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                if (map != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                    com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            }
        });
    }

    public static void l(mp mpVar, String str) {
        if (mpVar != null) {
            com.byazt.bl.jx jxVar = new com.byazt.bl.jx();
            jxVar.setId("0:00");
            jxVar.setName(str);
            com.byazt.mb.jx.jx().hp("skip", mpVar.j(), mpVar.ns(), mpVar.q_(), (String) null);
            hp(mpVar.ju(), jxVar);
        }
    }

    public static void hp(final mp mpVar, final String str, final Map<String, Object> map) {
        com.byazt.dnb.s.hp((Runnable) new com.byazt.uid.eb("repost_show_check") { // from class: com.byazt.jdb.j.22
            @Override // java.lang.Runnable
            public void run() {
                if (mpVar == null) {
                    return;
                }
                final float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - ky.u(mpVar)).floatValue();
                j.hp(mpVar, str, "show_check", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.22.1
                    @Override // com.byazt.dhy.hp
                    public void onSend(JSONObject jSONObject) throws JSONException {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("device", com.byazt.lca.hp.hp(sz.getContext(), com.byazt.qk.q.hp(str)).toString());
                        jSONObject2.put(PointParamKey.IS_CACHE, mpVar.uj() ? 1 : 0);
                        mp mpVar2 = mpVar;
                        jSONObject2.put("cache_type", mpVar2.gu(mpVar2.uj()));
                        com.byazt.yek.jx.hp(mpVar, jSONObject2, false);
                        Map map2 = map;
                        if (map2 != null) {
                            for (Map.Entry entry : map2.entrySet()) {
                                jSONObject2.put((String) entry.getKey(), entry.getValue());
                            }
                        }
                        jSONObject2.put("start2req_time", SystemClock.elapsedRealtime() - vv.f21996w);
                        jSONObject2.put("start_type", !vv.f21995l.get() ? 1 : 0);
                        jSONObject2.put("show_count", j.hp);
                        jSONObject2.put("can_use_sensor", com.byazt.jz.s.u().w());
                        jSONObject2.put("is_shake_ads", com.byazt.jz.s.u().ec());
                        jSONObject2.put("direction", com.byazt.cqt.hp.hp().a());
                        AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                        j.a(mpVar, str, jSONObject2);
                        com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                        jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                        float f2 = fFloatValue;
                        if (f2 <= 0.0f) {
                            f2 = 0.0f;
                        }
                        jSONObject.putOpt(q.a.f3394i, Float.valueOf(f2));
                    }
                });
            }
        });
    }

    public static void hp(final mp mpVar, final String str, final Map<String, Object> map, final Double d2) {
        com.byazt.dnb.s.hp(new com.byazt.uid.eb("report_show") { // from class: com.byazt.jdb.j.33
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                j.l(mpVar, str, (Map<String, Object>) map, d2);
            }
        });
    }

    private static void hp(mp mpVar, List<String> list, String str, String str2, String str3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("track_type", str3);
            jSONObject.put("error_msg", str2);
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append(list.get(i2));
                if (i2 == size - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            jSONObject.put("url", sb.toString());
            jSONObject.put("urls_size", size);
        } catch (Exception unused) {
        }
        hp(str, mpVar.j(), mpVar.w_(), jSONObject);
    }

    public static void l(mp mpVar, String str, final JSONObject jSONObject) {
        hp(mpVar, ky.l(mpVar), str, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.7
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject3);
                }
            }
        });
    }

    public static void l(final mp mpVar, final int i2) {
        if (mpVar.hl()) {
            hp(mpVar, ky.l(mpVar), "reward_task_diff", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.10
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("reward_show_type", mpVar.nf());
                    jSONObject2.put("reward_action_type", i2);
                    jSONObject2.put("task_action", mpVar.nf() == i2 ? 0 : 1);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            });
        }
    }

    public static void l(mp mpVar, String str, String str2, final long j2) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.13
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                jSONObject.put("timestamp", j2);
            }
        });
    }

    public static void l(final mp mpVar, String str, String str2, final long j2, final JSONObject jSONObject) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.14
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put("duration", j2);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
            }
        });
    }

    public static void l(mp mpVar, String str, String str2) {
        hp(mpVar, str, str2, (com.byazt.dhy.hp) null);
    }

    public static void l(mp mpVar, String str, String str2, JSONObject jSONObject) {
        hp(mpVar, str, str2, jSONObject);
    }

    public static void l(mp mpVar, String str, long j2) {
        String str2;
        if (sz.l().df()) {
            final long jCurrentTimeMillis = System.currentTimeMillis() - j2;
            str.getClass();
            switch (str) {
                case "banner_ad":
                    str2 = "banner_ad_loadtime";
                    break;
                case "rewarded_video":
                    str2 = "rewarded_video_loadtime";
                    break;
                case "stream":
                    str2 = "stream_loadtime";
                    break;
                case "fullscreen_interstitial_ad":
                    str2 = "fullscreen_interstitial_ad_loadtime";
                    break;
                case "embeded_ad":
                    str2 = "embeded_ad_loadtime";
                    break;
                case "interaction":
                    str2 = "interaction_loadtime";
                    break;
                case "draw_ad":
                    str2 = "draw_ad_loadtime";
                    break;
                default:
                    str2 = "";
                    break;
            }
            hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.16
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    jSONObject.put("duration", jCurrentTimeMillis);
                }
            });
        }
    }

    public static void hp(final mp mpVar, final String str, final long j2) {
        hp(mpVar, str, "download_creative_duration", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.39
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("device", com.byazt.lca.hp.hp(sz.getContext(), com.byazt.qk.q.hp(str)).toString());
                jSONObject2.put("download_creative_duration", j2);
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(final String str, mp mpVar, String str2, final int i2, final Map<String, Long> map) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str2, "ad_show_time", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.40
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(n.f36449l, Integer.valueOf(i2));
                Map map2 = map;
                if (map2 != null) {
                    for (Map.Entry entry : map2.entrySet()) {
                        jSONObject2.putOpt((String) entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                jSONObject.put("duration", str);
            }
        });
    }

    public static void hp(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return;
        }
        String strOptString = jSONObject.optString("tag");
        String strOptString2 = jSONObject.optString("ad_id");
        String strOptString3 = jSONObject.optString("log_extra");
        if (TextUtils.isEmpty(strOptString3) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString)) {
            return;
        }
        hp(strOptString, strOptString2, strOptString3, jSONObject2);
    }

    public static void hp(String str, String str2, String str3, final JSONObject jSONObject) {
        hp(str, "show_url", str2, str3, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.41
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject3.toString());
                }
            }
        });
    }

    public static void hp(final mp mpVar, final String str) {
        String strL;
        if (mpVar == null || str == null || (strL = ky.l(mpVar)) == null) {
            return;
        }
        hp(mpVar, strL, "page_on_create", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.42
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(g.f49361v, str);
                xh.hp(jSONObject2, "");
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
            }
        });
    }

    public static void l(final mp mpVar) {
        hp(mpVar, "landingpage", "open_url_h5", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.20
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
            }
        });
    }

    public static void l(final mp mpVar, String str, final int i2) {
        hp(mpVar, str, "qpon_apply", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.30
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("qpon_apply_status", i2);
                    com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                    jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void hp(String str, final mp mpVar, final com.byazt.xci.q qVar, final String str2, final boolean z2, final Map<String, Object> map, final int i2, boolean z3, final boolean z4) throws JSONException {
        if (mpVar == null || z3) {
            return;
        }
        final float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - ky.u(mpVar)).floatValue();
        hp(mpVar, str2, str, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.2
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                com.byazt.xci.q qVar2 = qVar;
                if (qVar2 != null) {
                    JSONObject jSONObjectHp = qVar2.hp(mpVar);
                    jSONObjectHp.put("device", com.byazt.lca.hp.hp(sz.getContext(), com.byazt.qk.q.hp(str2)).toString());
                    jSONObjectHp.put("is_valid", z2);
                    int i3 = i2;
                    if (i3 > 0 && i3 <= 2) {
                        jSONObjectHp.put("user_behavior_type", i3);
                    }
                    xh.hp(jSONObjectHp, "");
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObjectHp.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    j.a(mpVar, str2, jSONObjectHp);
                    jSONObjectHp.putOpt("obm_convert", com.byazt.xci.sz.jx(mpVar));
                    jSONObjectHp.put("can_use_sensor", com.byazt.jz.s.u().w());
                    if (sz.l().ms()) {
                        jSONObjectHp.put("mcod", "-1");
                    } else if (!com.byazt.jz.s.u().e()) {
                        jSONObjectHp.put("mcod", "0");
                    }
                    if (!com.byazt.jz.s.u().eb()) {
                        jSONObjectHp.put("od", "0");
                    }
                    jSONObjectHp.put("is_shake_ads", com.byazt.jz.s.u().ec());
                    jSONObjectHp.put("live_sdk_config", com.byazt.yx.l.hp().s());
                    jSONObjectHp.put("direction", com.byazt.cqt.hp.hp().a());
                    jSONObjectHp.put(PointParamKey.IS_CACHE, mpVar.uj() ? 1 : 0);
                    mp mpVar2 = mpVar;
                    jSONObjectHp.put("cache_type", mpVar2.gu(mpVar2.uj()));
                    com.byazt.yek.jx.hp(mpVar, jSONObjectHp, false);
                    jSONObjectHp.put(n.f36449l, z4 ? 1 : 0);
                    com.byazt.nwu.hp.hp(jSONObjectHp, mpVar);
                    com.byazt.zn.d.hp(jSONObjectHp, mpVar);
                    j.hp(jSONObjectHp);
                    if (mpVar.hl()) {
                        jSONObjectHp.put("reward_show_type", mpVar.nf());
                        jSONObjectHp.put("browse_time", mpVar.ba());
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObjectHp.toString());
                }
                float f2 = fFloatValue;
                if (f2 <= 0.0f) {
                    f2 = 0.0f;
                }
                jSONObject.putOpt(q.a.f3394i, Float.valueOf(f2));
            }
        });
        String strHp = v.hp();
        List<String> listOr = mpVar.or();
        if (!TextUtils.isEmpty(strHp) && "click".equals(str)) {
            HashMap map2 = new HashMap();
            map2.put("aid", mpVar.cx());
            map2.put("cid", mpVar.j());
            map2.put("req_id", mpVar.ns());
            map2.put("customer_id", ky.v(mpVar));
            com.byazt.lf.l.hp(strHp, listOr, true, map2, hp(mpVar, str2, "click"));
        } else if (listOr != null && listOr.size() != 0 && "click".equals(str)) {
            hp(mpVar, listOr, str2, "no did", "click");
        }
        if (str == "click") {
            if (com.byazt.we.hp.hp(mpVar)) {
                com.byazt.we.hp.hp(LiveMetrics.EVENT_LIVESDK_REC_LIVE_PLAY, mpVar, 0L);
            }
            com.byazt.yx.l.hp().j(mpVar);
        }
        b.hp(1, 2);
    }

    public static void l(long j2, final mp mpVar) {
        if (mpVar != null && mp.jx(mpVar)) {
            final long jCurrentTimeMillis = j2 > 0 ? System.currentTimeMillis() - j2 : 0L;
            hp(mpVar, "splash_ad", "play_duration_sum", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.32
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("skip_duration", jCurrentTimeMillis);
                    com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            });
        }
    }

    public static JSONObject hp(mp mpVar, String str, String str2) {
        return hp(mpVar.w_(), mpVar.j(), mpVar.ns(), str, str2);
    }

    public static JSONObject hp(String str, String str2, String str3, String str4, String str5) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("log_extra", str);
            jSONObject.put("ad_id", str2);
            jSONObject.put("req_id", str3);
            jSONObject.put("tag", str4);
            jSONObject.put("track_type", str5);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void hp(final mp mpVar, String str, String str2, final long j2) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.3
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("duration", j2);
                jSONObject2.put("rom_new_version", di.k());
                jSONObject2.put("is_background", com.byazt.jz.s.u().hp());
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(com.byazt.bl.l lVar, com.byazt.qt.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(aVar);
        sz.hp().hp(lVar, arrayList);
    }

    public static void hp(Context context, mp mpVar, String str, String str2, JSONObject jSONObject) throws JSONException {
        if (TextUtils.isEmpty(str2) || mpVar == null || jSONObject == null) {
            return;
        }
        Object objOpt = jSONObject.opt(f.a.f3244d);
        if (objOpt == null) {
            objOpt = mpVar.j();
        }
        String strOptString = jSONObject.optString(PointParamKey.CATEGORY);
        if (TextUtils.isEmpty(strOptString)) {
            strOptString = "app_union";
        }
        Object objOpt2 = jSONObject.opt("log_extra");
        if (objOpt2 == null) {
            objOpt2 = mpVar.w_();
        }
        try {
            jSONObject.putOpt("nt", Integer.valueOf(com.byazt.ymw.vv.jx(context)));
            jSONObject.putOpt("scene_tag", "csj_sdk");
            jSONObject.putOpt("tag", "7.6.4.3");
            jSONObject.putOpt("subtag", str);
        } catch (Exception e2) {
            u.hp(e2.getMessage());
        }
        String string = "";
        String string2 = objOpt == null ? "" : objOpt.toString();
        if (objOpt2 != null) {
            string = objOpt2.toString();
        }
        new hp.C0281hp().w(string2).jx(strOptString).j(string).hp(str).hp(jSONObject).l(str2).hp(new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.4
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
            }
        });
    }

    public static void hp(final long j2, final mp mpVar) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, "splash_ad", "skip", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.5
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("skip_duration", j2);
                com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(final mp mpVar, String str, final JSONObject jSONObject) {
        hp(mpVar, ky.l(mpVar), str, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.6
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    com.byazt.nwu.hp.hp(jSONObject3, mpVar);
                    jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
                }
            }
        });
    }

    public static void hp(final mp mpVar, String str, String str2, final long j2, final int i2, final Map<String, Object> map) {
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.8
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                jSONObject.put("duration", j2);
                jSONObject.put("percent", i2);
                if (map != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                    com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            }
        });
    }

    public static void hp(final mp mpVar, final int i2) {
        hp(mpVar, ky.l(mpVar), "reward_callback", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.9
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("reward_show_type", mpVar.nf());
                jSONObject2.put("browse_time", mpVar.ba());
                jSONObject2.put("reward_action_type", i2);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(final mp mpVar, String str, String str2, final long j2, final JSONObject jSONObject) {
        if (mpVar == null || jSONObject == null) {
            return;
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.11
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put("duration", j2);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
            }
        });
    }

    public static void hp(String str, String str2, String str3, String str4) {
        new hp.C0281hp().hp(str3).l(str4).w(str).j(str2).hp((com.byazt.dhy.hp) null);
    }

    public static void hp(mp mpVar, String str, String str2, String str3) {
        final JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("refer", str3);
                com.byazt.nwu.hp.hp(jSONObject, mpVar);
            }
        } catch (Throwable unused) {
        }
        hp(mpVar, str, str2, new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.17
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject);
            }
        });
    }

    public static void hp(String str, final String str2, final String str3, long j2, long j3, JSONObject jSONObject, final byte b3) {
        final float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - ky.s(jSONObject.optString("log_extra"))).floatValue();
        new hp.C0281hp().hp(str2).l(str3).jx(str).w(String.valueOf(j2)).a(String.valueOf(j3)).hp(jSONObject).hp(new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.18
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = new JSONObject();
                String strOptString = jSONObject2.optString(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, null);
                if (strOptString != null) {
                    jSONObject3 = new JSONObject(strOptString);
                }
                jSONObject3.put("device", com.byazt.lca.hp.hp(sz.getContext(), com.byazt.qk.q.hp(str2)).toString());
                jSONObject3.put("js_event", 1);
                byte b4 = b3;
                if (b4 != -1) {
                    jSONObject3.put("biz_type", (int) b4);
                }
                jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject3.toString());
                jSONObject2.put("tag", str2);
                if ("click".equals(str3)) {
                    float f2 = fFloatValue;
                    if (f2 <= 0.0f) {
                        f2 = 0.0f;
                    }
                    jSONObject2.putOpt(q.a.f3394i, Float.valueOf(f2));
                }
            }
        });
    }

    public static void hp(mp mpVar, String str, Map<String, Object> map, boolean z2) {
        if (z2) {
            hp(mpVar, str, "lp_open_dpl", map);
            return;
        }
        ux uxVarA_ = mpVar.A_();
        if (map == null) {
            map = new HashMap<>();
        }
        if (uxVarA_ != null) {
            map.put("wc_type", Integer.valueOf(uxVarA_.w()));
        }
        map.put("rom_new_version", di.k());
        map.put("is_background", Boolean.valueOf(com.byazt.jz.s.u().hp()));
        map.put("interaction_type", Integer.valueOf(mpVar.q()));
        map.put("can_query", Boolean.valueOf(ky.o()));
        hp(mpVar, str, "open_url_app", map);
    }

    public static void hp(mp mpVar, String str, Throwable th, boolean z2, boolean z3) throws JSONException {
        if (z3) {
            if (z2) {
                hp(mpVar, str, "lp_openurl", th);
                hp(mpVar, str, "lp_deeplink_success_realtime", th);
                return;
            } else {
                hp(mpVar, str, "deeplink_success_realtime", th);
                return;
            }
        }
        if (z2) {
            hp(mpVar, str, "lp_openurl_failed", th);
            hp(mpVar, str, "lp_deeplink_fail_realtime", th);
        } else {
            hp(mpVar, str, "deeplink_fail_realtime", th);
        }
    }

    public static void hp(mp mpVar, String str, String str2, Throwable th) throws JSONException {
        ux uxVarA_ = mpVar.A_();
        JSONObject jSONObject = null;
        if (uxVarA_ != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("wc_type", uxVarA_.w());
                } catch (Throwable unused) {
                }
                jSONObject = jSONObject2;
            } catch (Throwable unused2) {
            }
        }
        if (th != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                jSONObject.put("throwable", th.getMessage());
            } catch (Exception unused3) {
            }
        }
        hp(mpVar, str, str2, jSONObject);
    }

    public static void hp(final long j2, String str, mp mpVar) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, "open_appback", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.19
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                jSONObject.put("duration", j2);
            }
        });
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        jxVarHp.put("save_jump_success_time", 0L);
        jxVarHp.put("save_jump_success_ad_tag", "");
    }

    public static void hp(mp mpVar, String str, final int i2, final String str2) {
        hp(mpVar, str, "render_live_picture_fail", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.24
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("error_code", Integer.valueOf(i2));
                jSONObject2.putOpt("error_message", str2);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(mp mpVar, String str, final long j2, final String str2) {
        hp(mpVar, str, "live_play_success", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.25
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                jSONObject.put("duration", j2);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("session_id", str2);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(mp mpVar, String str, final int i2, final String str2, final String str3) {
        hp(mpVar, str, "live_play_fail", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.26
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("error_code", Integer.valueOf(i2));
                jSONObject2.putOpt("error_message", str2);
                jSONObject2.putOpt("session_id", str3);
                jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(mp mpVar, String str, final long j2, final JSONObject jSONObject, final String str2) {
        hp(mpVar, str, "live_play_close", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.27
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    jSONObject3.putOpt("session_id", str2);
                    jSONObject2.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject.toString());
                }
                jSONObject2.put("duration", j2);
            }
        });
    }

    public static void hp(final mp mpVar, String str, final int i2, final int i3, final int i4, final boolean z2) {
        if (mpVar != null && mpVar.qd() == 1) {
            hp(mpVar, str, "open_live", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.28
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    int i5 = i4;
                    int iW = mpVar.w();
                    jSONObject2.put("live_interaction_type", iW);
                    jSONObject2.put("client_live_interaction_type", i2);
                    jSONObject2.put("real_live_interaction_type", i3);
                    jSONObject2.put("reward_live_type", y.l(mpVar));
                    jSONObject2.put("is_inner", z2);
                    rv rvVarC_ = mpVar.C_();
                    if (mpVar.w() == 9 && mpVar.D_() != null) {
                        rvVarC_ = mpVar.D_().j();
                    }
                    if (rvVarC_ != null) {
                        jSONObject2.putOpt("saas_info", rvVarC_.hp());
                    }
                    xs xsVarK = mpVar.k();
                    if (xsVarK != null) {
                        String strL = xsVarK.l();
                        if (strL.length() > 500) {
                            strL = strL.substring(0, 500);
                        }
                        jSONObject2.put(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK, strL);
                        if (!strL.startsWith("snssdk1128") && !strL.startsWith("snssdk2329") && iW == 1 && i5 != 0) {
                            i5 = 2;
                        }
                    }
                    jSONObject2.put("live_interaction_status", i5);
                    jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            });
        }
    }

    public static void hp(final mp mpVar, String str, final int i2) {
        hp(mpVar, str, "qpon_join", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.29
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("join_status", i2);
                    com.byazt.nwu.hp.hp(jSONObject2, mpVar);
                    jSONObject.putOpt(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void hp(final int i2, String str, final mp mpVar) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, "saas_auth", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.34
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("saas_auth_status", i2);
                rv rvVarC_ = mpVar.C_();
                if (rvVarC_ != null) {
                    jSONObject2.put("saas_auth_type", rvVarC_.l());
                }
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(String str, mp mpVar) {
        if (mpVar == null) {
            return;
        }
        hp(mpVar, str, "ec_mall_task", new com.byazt.dhy.hp() { // from class: com.byazt.jdb.j.35
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("mall_reward_callback", 1);
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
            }
        });
    }

    public static void hp(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            com.byazt.sii.eb ebVarXs = com.byazt.jz.s.u().xs();
            jSONObject2.put("isCanUseLocation", ebVarXs.isCanUseLocation());
            jSONObject2.put("isCanUsePhoneState", ebVarXs.isCanUsePhoneState());
            jSONObject2.put("isCanUseWifiState", ebVarXs.isCanUseWifiState());
            jSONObject2.put("isCanUseWriteExternal", ebVarXs.isCanUseWriteExternal());
            jSONObject2.put("alist", ebVarXs.alist());
            jSONObject2.put("isCanUseAndroidId", ebVarXs.isCanUseAndroidId());
            jSONObject2.put("isCanUsePermissionRecordAudio", ebVarXs.isCanUsePermissionRecordAudio());
            Map<String, Object> mapUserPrivacyConfig = ebVarXs.userPrivacyConfig();
            if (mapUserPrivacyConfig != null && !mapUserPrivacyConfig.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                for (Map.Entry<String, Object> entry : mapUserPrivacyConfig.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (TextUtils.equals(key, "mcod") && sz.l().ms()) {
                        jSONObject3.put(key, "-1");
                    } else {
                        jSONObject3.put(key, value);
                    }
                }
                jSONObject2.put("update_privacyConfig", jSONObject3);
            }
            jSONObject.put("regulation_data", jSONObject2);
        } catch (JSONException unused) {
        }
    }
}
