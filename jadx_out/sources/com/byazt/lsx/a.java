package com.byazt.lsx;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.anythink.core.common.f.a;
import com.baidu.mobads.sdk.api.SplashAd;
import com.baidu.mobads.sdk.internal.d;
import com.byazt.pg.ns;
import com.byazt.zg.o;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 310, 54})
/* loaded from: classes3.dex */
public class a {
    public static int hp;
    public static int jx;

    /* renamed from: l, reason: collision with root package name */
    public static int f22672l;

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, int i2, String str, long j2, int i3, int i4, String str2) {
        com.byazt.bcj.jx jxVarL;
        com.byazt.tgw.l lVarHp;
        j jVarL = j.l();
        jVarL.hp("media_reward_verify").hp("adn_preload", Integer.valueOf((jxVar == null || !jxVar.isAdnPreload()) ? 0 : 1)).hp(MediationConstant.KEY_REASON, Integer.valueOf(i3)).hp("play_again", Integer.valueOf(i2));
        if (i4 != 0 && i4 != 20000) {
            jVarL.l(i4).gu(str2);
        }
        HashMap map = new HashMap();
        boolean z2 = j2 >= 0;
        if (jxVar != null && jxVar.isCustomAd()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                map.put("custom_adn_rec_time", Long.valueOf(j2));
            }
        }
        if (lVar != null && (jxVarL = com.byazt.di.l.l()) != null && (lVarHp = jxVarL.hp(lVar.sz(), lVar.ec(), 101)) != null) {
            map.put("reward_callback_type", Integer.valueOf(lVarHp.f()));
            map.put("reward_start_time", Integer.valueOf(lVarHp.m()));
        }
        if (str != null) {
            jVarL.hp("sub_adn_name", str);
        }
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    private static int j() {
        ns nsVar = (ns) com.byazt.ym.j.getService("m_d_s");
        if (nsVar == null) {
            return -1;
        }
        Object data = nsVar.getData(3);
        if (data instanceof Integer) {
            return ((Integer) data).intValue();
        }
        return -1;
    }

    public static void jx() {
        j jVarL = j.l();
        jVarL.hp("start_up");
        jx.hp(com.byazt.di.l.getContext(), jVarL, (Map<String, Object>) null);
    }

    public static void l(final com.byazt.iqm.l lVar, final int i2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.7
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, i2);
            }
        });
    }

    public static void l() {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: R.b
            @Override // java.lang.Runnable
            public final void run() {
                com.byazt.lsx.a.hp(jVarJx);
            }
        });
    }

    public static void l(long j2) {
        j jVarL = j.l();
        jVarL.hp("sdk_backstage").hp(j2);
        HashMap map = new HashMap();
        if (com.byazt.fqv.hp.hp().gu()) {
            if (com.byazt.fqv.hp.hp().s() > 0) {
                com.byazt.fqv.hp.hp().hp(hp.jx);
                map.put("call_init_method_duration", Long.valueOf(com.byazt.fqv.hp.hp().s()));
            }
        } else if (com.byazt.fqv.hp.hp().jl()) {
            map.put("call_init_method_duration", Long.valueOf(com.byazt.fqv.hp.hp().s()));
        }
        map.put("v2Enc_config", o.hp("v2Enc_config"));
        map.put("v4Enc_config", o.hp("v4Enc_config"));
        map.put("v2Enc_exchange", o.hp("v2Enc_exchange"));
        map.put("v4Enc_exchange", o.hp("v4Enc_exchange"));
        map.put("v2Enc_reward", o.hp("v2Enc_reward"));
        map.put("v4Enc_reward", o.hp("v4Enc_reward"));
        map.put("enable_label_return", Integer.valueOf(com.byazt.di.l.l().yr() ? 1 : 0));
        map.put("if_labelapi_call", Integer.valueOf(com.byazt.di.hp.jl().hp() ? 1 : 0));
        map.put("adn_init_duration", com.byazt.uhd.w.hp());
        map.put("sdk_boost_type", Integer.valueOf(com.byazt.wu.hp.w()));
        map.put("layer_init_type", Integer.valueOf(j()));
        com.byazt.ami.w.hp(map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, int i2, String str, long j2, boolean z2, int i3) {
        hp(jxVar, lVar, i2, str, j2, (String) null, z2, i3);
    }

    public static void hp() {
        j jVarL = j.l();
        jVarL.hp("mediation_sdk_init");
        try {
            hp(jVarL, (com.byazt.iqm.l) null, (com.byazt.tgw.e) null, (com.byazt.rt.jx) null, (Map<String, Object>) null);
            jx.hp(com.byazt.di.l.getContext(), jVarL, (Map<String, Object>) null);
        } catch (Throwable unused) {
        }
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final int i2, final String str, final long j2, final String str2, final boolean z2, final int i3) {
        final j jVarJx = j.jx();
        com.byazt.ymw.e.jx().post(new Runnable() { // from class: com.byazt.lsx.a.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, i2, str, j2, str2, z2, i3);
            }
        });
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, String str) {
        j jVarL = j.l();
        jVarL.hp("media_show_dislike").gu(str);
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, int i2, String str, long j2, boolean z2) {
        hp(jxVar, lVar, i2, str, j2, (String) null, z2);
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final int i2, final String str, final long j2, final String str2, final boolean z2) {
        final j jVarJx = j.jx();
        com.byazt.ymw.e.jx().post(new Runnable() { // from class: com.byazt.lsx.a.12
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, i2, str, j2, str2, z2);
            }
        });
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, boolean z2, int i2) {
        hp(jxVar, lVar, z2, i2, (Map<String, Object>) null);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, boolean z2, int i2, Map<String, Object> map) {
        j jVarL = j.l();
        jVarL.hp("media_show").hp("adn_preload", Integer.valueOf((jxVar == null || !jxVar.isAdnPreload()) ? 0 : 1)).hp("play_again", Integer.valueOf(i2)).hp("is_repeat", Integer.valueOf(z2 ? 1 : 0));
        HashMap map2 = new HashMap();
        if (map != null && !map.isEmpty()) {
            map2.putAll(map);
        }
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map2);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map2);
    }

    public static void hp(List<com.byazt.rt.jx> list, List<com.byazt.rt.jx> list2, List<com.byazt.rt.jx> list3, com.byazt.iqm.l lVar, int i2) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            arrayList.addAll(list);
        }
        if (list2 != null && list2.size() > 0) {
            arrayList.addAll(list2);
        }
        if (list3 != null && list3.size() > 0) {
            arrayList.addAll(list3);
        }
        int i3 = 0;
        com.byazt.rt.jx jxVar = arrayList.size() > 0 ? (com.byazt.rt.jx) arrayList.get(0) : null;
        j jVarL = j.l();
        jVarL.hp("media_show_is_ready");
        if (i2 == 0) {
            try {
                JSONArray jSONArray = new JSONArray();
                int size = arrayList.size();
                boolean zIsReady = false;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    com.byazt.rt.jx jxVar2 = (com.byazt.rt.jx) obj;
                    if (jxVar2 != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(SplashAd.KEY_BIDFAIL_ADN, jxVar2.getAdNetWorkName());
                        jSONObject.put("type", com.byazt.rt.hp.hp(jxVar2.getAdType(), jxVar2.getSubAdType()));
                        jSONObject.put("adnSlotId", jxVar2.getAdNetworkSlotId());
                        jSONObject.put("loadSort", jxVar2.getLoadSort());
                        jSONObject.put("showSort", jxVar2.getShowSort());
                        if (lVar != null) {
                            jSONObject.put("isReady", jxVar2.isReady(lVar.sz()) ? 1 : 0);
                        }
                        jSONObject.put("hasShown", jxVar2.isHasShown() ? 1 : 0);
                        if (jxVar2.adnHasAdVideoCachedApi()) {
                            jSONObject.put("is_video_cache_success", jxVar2.isCacheSuccess() ? 1 : 0);
                        }
                        jSONObject.put("mediationrit_req_type", jxVar2.getMediationRitReqType(lVar != null ? lVar.hp() : null));
                        jSONObject.put("mediationrit_req_type_src", jxVar2.getMediationRitReqTypeSrc(lVar != null ? lVar.hp() : null));
                        jSONArray.put(jSONObject);
                        if (!zIsReady && lVar != null) {
                            if (lVar.ec() == 5) {
                                zIsReady = jxVar2.isReady(lVar.sz());
                            } else {
                                zIsReady = jxVar2.isReady(lVar.sz()) && !jxVar2.isHasShown();
                            }
                        }
                    }
                }
                if (!zIsReady) {
                    i3 = -1;
                }
                jVarL.l(i3);
                jVarL.gu(jSONArray.toString());
            } catch (JSONException unused) {
            }
        } else {
            jVarL.l(2);
            jVarL.gu(com.byazt.dq.hp.hp(i2));
        }
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(List<com.byazt.rt.jx> list, com.byazt.iqm.l lVar, int i2) throws JSONException {
        com.byazt.rt.jx jxVar = (list == null || list.size() <= 0) ? null : list.get(0);
        j jVarL = j.l();
        jVarL.hp("media_show_fail");
        if (i2 == 0) {
            jVarL.l(40052);
            if (jxVar != null) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (com.byazt.rt.jx jxVar2 : list) {
                        if (jxVar2 != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(SplashAd.KEY_BIDFAIL_ADN, jxVar2.getAdNetWorkName());
                            jSONObject.put("type", com.byazt.rt.hp.hp(jxVar2.getAdType(), jxVar2.getSubAdType()));
                            jSONObject.put("adnSlotId", jxVar2.getAdNetworkSlotId());
                            jSONObject.put("loadSort", jxVar2.getLoadSort());
                            jSONObject.put("showSort", jxVar2.getShowSort());
                            if (lVar != null) {
                                jSONObject.put("isReady", jxVar2.isReady(lVar.sz()) ? 1 : 0);
                            }
                            jSONObject.put("hasShown", jxVar2.isHasShown() ? 1 : 0);
                            jSONArray.put(jSONObject);
                        }
                    }
                    jVarL.gu(jSONArray.toString());
                } catch (JSONException unused) {
                }
            }
        } else {
            jVarL.l(i2);
            jVarL.gu(com.byazt.dq.hp.hp(i2));
        }
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jVarL.hp("is_video_cache_success", 0);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.iqm.l lVar, int i2) {
        j jVarL = j.l();
        jVarL.hp("media_carousel_fail").l(i2).gu(com.byazt.dq.hp.hp(i2));
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, (com.byazt.rt.jx) null, map);
        jVarL.hp("is_video_cache_success", 0);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(final int i2, final int i3, final long j2, final String str, final String str2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.18
            @Override // java.lang.Runnable
            public void run() {
                jVarJx.hp("rit_map_query").setResult(i3).hp(j2).w(i2);
                HashMap map = new HashMap();
                if (!TextUtils.isEmpty(str)) {
                    jVarJx.s(str);
                    map.put("origin_rit", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    jVarJx.l(str2);
                    map.put(MediationConstant.KEY_GM_PRIME_RIT, str2);
                }
                jx.hp(com.byazt.di.l.getContext(), jVarJx, map);
            }
        });
    }

    public static void hp(final com.byazt.tgw.e eVar, final com.byazt.iqm.l lVar, final String str, final boolean z2, final int i2, final int i3, final int i4, final int i5, final com.byazt.dq.hp hpVar, final long j2, final boolean z3, final boolean z4, final long j3) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.19
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, eVar, lVar, str, z2, i2, i3, i4, i5, hpVar, j2, z3, z4, null, j3);
            }
        });
    }

    public static void hp(final com.byazt.tgw.e eVar, final com.byazt.iqm.l lVar, final String str, final boolean z2, final int i2, final int i3, final int i4, final int i5, final com.byazt.dq.hp hpVar, final long j2, final boolean z3, final boolean z4, final String str2, final long j3) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.20
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, eVar, lVar, str, z2, i2, i3, i4, i5, hpVar, j2, z3, z4, str2, j3);
            }
        });
    }

    public static void hp(com.byazt.tgw.e eVar, com.byazt.iqm.l lVar, com.byazt.rt.jx jxVar, int i2, String str) {
        j jVarL = j.l();
        j jVarHp = jVarL.hp("bidding_info_invalid").l(i2).gu(str).hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar != null ? lVar.b() : 0));
        com.byazt.bcj.l.hp(com.byazt.di.l.l());
        jVarHp.hp("grouping_params", com.byazt.bcj.l.hp(com.byazt.di.hp.jl().n())).hp("log_source", 2);
        HashMap map = new HashMap();
        hp(jVarL, lVar, eVar, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(final com.byazt.rt.jx jxVar, final int i2, final String str, final long j2, final com.byazt.iqm.l lVar, final int i3, final int i4, final int i5, final String str2, final long j3, final long j4) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.21
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, i2, str, j2, lVar, i3, i4, i5, str2, j3, j4);
            }
        });
    }

    public static void hp(final com.byazt.dq.hp hpVar, final com.byazt.iqm.l lVar, final com.byazt.tgw.e eVar, final int i2, final int i3, final int i4, final String str, final long j2, final String str2, final String str3, final String str4, final long j3) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.22
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, hpVar, lVar, eVar, i2, i3, i4, str, j2, str2, str3, str4, j3);
            }
        });
    }

    public static void hp(com.byazt.dq.hp hpVar, com.byazt.iqm.l lVar, com.byazt.tgw.e eVar, int i2, int i3, int i4, String str, long j2) {
        j jVarL = j.l();
        jVarL.hp("bidding_adm_load_fail").hp(j2).a(str).l(hpVar != null ? hpVar.jx : -1).gu(hpVar != null ? hpVar.f19237j : "unknown error").hp("adn_count", Integer.valueOf(i2)).hp("adn_preload", 0).hp("mediationrit_req_type", Integer.valueOf(i3)).hp("mediationrit_req_type_src", Integer.valueOf(i4));
        if (hpVar instanceof com.byazt.le.hp) {
            jVarL.f22779v = hpVar.hp;
            jVarL.jl = hpVar.f19238l;
        }
        HashMap map = new HashMap();
        hp(jVarL, lVar, eVar, (com.byazt.rt.jx) null, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(@Nullable final com.byazt.iqm.l lVar, final com.byazt.dq.hp hpVar, final String str) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.23
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, hpVar, str);
            }
        });
    }

    public static void hp(final com.byazt.tgw.e eVar, final com.byazt.iqm.l lVar, final int i2, final int i3) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.24
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, eVar, lVar, i2, i3);
            }
        });
    }

    public static void hp(final com.byazt.iqm.l lVar, final String str, final boolean z2, final String str2, final int i2, final Map<String, Object> map) {
        if (lVar != null) {
            com.byazt.yf.hp.getInstance().startRequestRit(lVar.hp(), hp.jx);
        }
        final j jVarJx = j.jx();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.2
            @Override // java.lang.Runnable
            public void run() {
                jVarJx.hp(System.currentTimeMillis() - jCurrentTimeMillis);
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, str, z2, str2, i2, map);
            }
        });
    }

    public static void hp(Map<String, Object> map, final com.byazt.iqm.l lVar, final com.byazt.rt.jx jxVar, final long j2, final int i2, final int i3, final int i4, final String str, final int i5, final int i6, final com.byazt.tgw.l lVar2, final JSONObject jSONObject) {
        JSONObject jSONObject2;
        int i7;
        final j jVarJx = j.jx();
        if (map != null) {
            int iIntValue = map.get("group_type") instanceof Integer ? ((Integer) map.get("group_type")).intValue() : 0;
            double dDoubleValue = map.get("ecpm") instanceof Double ? ((Double) map.get("ecpm")).doubleValue() : 0.0d;
            jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("price_from", map.get("price_from"));
                jSONObject2.put("grout_type", iIntValue);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("target_ecpm_origin", dDoubleValue);
                jSONObject3.put("target_ecpm_upper", map.get("upper_cpm_x"));
                jSONObject2.put("price", jSONObject3);
                if (map.get("price_source") != null) {
                    jSONObject2.put("price_source", map.get("price_source"));
                }
                int iIntValue2 = map.get("rule_in_use") instanceof Integer ? ((Integer) map.get("rule_in_use")).intValue() : 0;
                boolean zBooleanValue = map.get("has_serverBidding") instanceof Boolean ? ((Boolean) map.get("has_serverBidding")).booleanValue() : false;
                if (iIntValue != 3 && iIntValue != 4) {
                    i7 = 0;
                } else if (!zBooleanValue) {
                    i7 = 1;
                } else if (dDoubleValue == 0.0d) {
                    i7 = 2;
                } else if (iIntValue2 == 0) {
                    i7 = 5;
                } else {
                    i7 = (iIntValue != 4 || (map.get("serverBidding_timeout") instanceof Boolean ? ((Boolean) map.get("serverBidding_timeout")).booleanValue() : false)) ? 4 : 3;
                }
                jSONObject2.put("pos_state", i7);
                jSONObject2.put(a.C0051a.f3218o, map.get(a.C0051a.f3218o));
                jSONObject2.put("rule_inuse", iIntValue2);
            } catch (JSONException unused) {
            }
        } else {
            jSONObject2 = null;
        }
        final JSONObject jSONObject4 = jSONObject2;
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, jxVar, j2, i2, i3, i4, str, i5, i6, lVar2, jSONObject4, jSONObject);
            }
        });
    }

    public static void hp(final com.byazt.iqm.l lVar, final com.byazt.rt.jx jxVar, final long j2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, jxVar, j2);
            }
        });
    }

    public static void hp(final com.byazt.iqm.l lVar, final com.byazt.rt.jx jxVar, final com.byazt.tgw.e eVar) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.5
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, jxVar, eVar);
            }
        });
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final com.byazt.tgw.l lVar2, final long j2, final String str, final boolean z2, final int i2, final boolean z3, final boolean z4) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.6
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, lVar2, j2, str, z2, i2, z3, z4);
            }
        });
    }

    public static void hp(final boolean z2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.8
            @Override // java.lang.Runnable
            public void run() {
                jVarJx.hp("get_config_start").hp(MediationConstant.KEY_REASON, Integer.valueOf(z2 ? com.byazt.lto.hp.hp().getBoolean("is_config_from_assert", false) ? 2 : 1 : 0));
                jx.hp(com.byazt.di.l.getContext(), jVarJx, (Map<String, Object>) null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void hp(j jVar) {
        jVar.hp("init_adn_splash_info_request");
        jx.hp(com.byazt.di.l.getContext(), jVar, (Map<String, Object>) null);
    }

    public static void hp(final long j2, final boolean z2, final String str, final int i2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: R.a
            @Override // java.lang.Runnable
            public final void run() {
                com.byazt.lsx.a.hp(jVarJx, z2, j2, i2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void hp(j jVar, boolean z2, long j2, int i2, String str) {
        jVar.hp("init_adn_splash_info_result").hp("result", Integer.valueOf(z2 ? 1 : 0)).hp("duration", Long.valueOf(j2));
        if (!z2) {
            jVar.hp("error_code", Integer.valueOf(i2)).hp("error_msg", str);
        }
        jx.hp(com.byazt.di.l.getContext(), jVar, (Map<String, Object>) null);
    }

    public static void hp(long j2) {
        String str;
        j jVarL = j.l();
        jVarL.hp("sdk_init").jx(j2);
        com.byazt.ctq.jx jxVarA = com.byazt.lto.hp.a();
        boolean z2 = jxVarA.getBoolean("check_unity3d", false);
        long j3 = jxVarA.getLong("check_unity3d_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z2 && jCurrentTimeMillis - j3 > 2592000000L) {
            try {
                Class.forName("com.unity3d.player.UnityPlayer");
                str = "unity_pure";
                try {
                    Class.forName("com.bytedance.android.NativeAdManager");
                    str = MediationConstant.ADN_UNITY;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                str = null;
            }
            if (str != null) {
                jVarL.hp("develop_type", str);
            }
            jxVarA.put("check_unity3d", true);
            jxVarA.put("check_unity3d_time", jCurrentTimeMillis);
        }
        HashMap map = new HashMap();
        int iJ = com.byazt.fqv.hp.hp().j();
        if (iJ > 0) {
            com.byazt.fqv.hp.hp().w();
            map.put("discard_num", Integer.valueOf(iJ));
        }
        map.put("csj_plugin_version", com.byazt.fct.jx.j());
        map.put("init_count", Integer.valueOf(o.l()));
        JSONObject jSONObjectHp = o.hp();
        if (jSONObjectHp != null) {
            map.put(d.f11442a, jSONObjectHp);
        }
        o.hp(map);
        o.l(map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.9
            @Override // java.lang.Runnable
            public void run() {
                jVarJx.hp("callstack_dynamic");
                jVarJx.hp("callstack_message", str);
                jVarJx.hp("callstack_report_time", 1);
                jx.hp(com.byazt.di.l.getContext(), jVarJx, (Map<String, Object>) null);
            }
        });
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final String str, final int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.10
            @Override // java.lang.Runnable
            public void run() {
                jVarJx.hp("callstack_static").hp("callstack_message", str).hp("callstack_report_time", Integer.valueOf(i2));
                HashMap map = new HashMap();
                a.hp(jVarJx, lVar, (com.byazt.tgw.e) null, jxVar, map);
                jx.hp(com.byazt.di.l.getContext(), jVarJx, map);
            }
        });
    }

    public static void hp(long j2, int i2, int i3, long j3, JSONObject jSONObject, Map<String, Object> map) {
        j jVarL = j.l();
        jVarL.hp("sdk_init_end");
        jVarL.hp(j2);
        jVarL.jx(j3);
        jVarL.hp("adn_count", Integer.valueOf(i2));
        HashMap map2 = new HashMap();
        if (map != null && map.size() > 0) {
            map2.putAll(map);
        }
        map2.put("is_from_local_config", Integer.valueOf(i3));
        JSONObject adnAdapterVersion = com.byazt.uhd.j.getAdnAdapterVersion();
        if (adnAdapterVersion != null) {
            map2.put("adapter_version_list", adnAdapterVersion);
        }
        if (jSONObject != null) {
            map2.put("init_stage_time", jSONObject);
        }
        map2.put("init_count", Integer.valueOf(o.l()));
        map2.put("sdk_boost_type", Integer.valueOf(com.byazt.wu.hp.w()));
        map2.put("layer_init_type", Integer.valueOf(j()));
        jx.hp(com.byazt.di.l.getContext(), jVarL, map2);
    }

    public static void hp(int i2, int i3, long j2, boolean z2, boolean z3, JSONObject jSONObject, long j3, JSONObject jSONObject2) {
        j jVarL = j.l();
        boolean z4 = com.byazt.lto.hp.hp().getBoolean("is_config_from_assert", false);
        if (i2 != 1) {
            i2 = (z2 || (i2 == 0 && z4)) ? 2 : 0;
        }
        jVarL.setResult(i2).hp(j2).hp("get_config_final").a(i3).l(i3).hp("transparent_params", com.byazt.di.l.l().zy());
        HashMap map = new HashMap();
        com.byazt.ney.j.hp(z3, jVarL, jSONObject, map);
        if (jSONObject2 != null) {
            map.put("cfg_handle_time", jSONObject2);
        }
        map.put("config_size", Long.valueOf(j3));
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(final com.byazt.iqm.l lVar, final JSONObject jSONObject) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.11
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, jSONObject);
            }
        });
    }

    public static void hp(final com.byazt.iqm.l lVar, final com.byazt.pj.l lVar2, final int i2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.13
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, lVar, lVar2, i2);
            }
        });
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final List<com.byazt.rt.jx> list, final List<com.byazt.rt.jx> list2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.14
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, list, list2);
            }
        });
    }

    public static void hp(final com.byazt.tgw.e eVar, final com.byazt.iqm.l lVar, final String str) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.15
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, eVar, lVar, str);
            }
        });
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final com.byazt.tgw.e eVar, final long j2) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.16
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, eVar, j2);
            }
        });
    }

    public static void hp(final com.byazt.rt.jx jxVar, final com.byazt.iqm.l lVar, final com.byazt.tgw.e eVar) {
        final j jVarJx = j.jx();
        com.byazt.aw.w.j(new Runnable() { // from class: com.byazt.lsx.a.17
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.nl.hp.hp().hp(jVarJx, jxVar, lVar, eVar);
            }
        });
    }

    public static void hp(com.byazt.iqm.l lVar, String str) {
        j jVarL = j.l();
        jVarL.hp("cache_cannot_use").hp("cache_invalid_info", str);
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, (com.byazt.rt.jx) null, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.iqm.l lVar, com.byazt.rt.jx jxVar, String str) {
        j jVarL = j.l();
        jVarL.hp("rit_cache_cannot_use").hp("cache_invalid_info", str);
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jVarL.hp("mediationrit_req_type", 2);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.iqm.l lVar) {
        j jVarL = j.l();
        jVarL.hp("media_will_show");
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, (com.byazt.rt.jx) null, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, com.byazt.dq.hp hpVar, int i2, int i3, String str, long j2) {
        hp(jxVar, lVar, hpVar, i2, i3, str, j2, (String) null);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, com.byazt.dq.hp hpVar, int i2, int i3, String str, long j2, String str2) {
        j jVarL = j.l();
        jVarL.setResult(i2).l(hpVar != null ? hpVar.jx : 0).gu(hpVar != null ? hpVar.f19237j : null).hp("media_show_fail_listen").hp("play_again", Integer.valueOf(i3));
        if (str != null) {
            jVarL.hp("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            jVarL.hp("callstack_message", str2);
        }
        HashMap map = new HashMap();
        boolean z2 = j2 >= 0;
        if (jxVar != null && jxVar.isCustomAd()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                map.put("custom_adn_rec_time", Long.valueOf(j2));
            }
        }
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, int i2, int i3, int i4, String str) {
        j jVarL = j.l();
        jVarL.setResult(i3).hp("media_show_after").hp("play_again", Integer.valueOf(i4)).hp(MediationConstant.KEY_REASON, Integer.valueOf(i2));
        if (!TextUtils.isEmpty(str)) {
            jVarL.hp("callstack_message", str);
        }
        HashMap map = new HashMap();
        hp(jVarL, lVar, (com.byazt.tgw.e) null, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    public static void hp(String str, com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, com.byazt.tgw.e eVar, com.byazt.dq.hp hpVar) {
        j jVarL = j.l();
        j jVarGu = jVarL.l(hpVar != null ? hpVar.hp : 0).gu(hpVar != null ? hpVar.f19238l : null);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        jVarGu.w(str).hp("custom_adn_init_fail");
        HashMap map = new HashMap();
        hp(jVarL, lVar, eVar, jxVar, map);
        jx.hp(com.byazt.di.l.getContext(), jVarL, map);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:152:0x011f
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Path cross not found for [B:155:0x00f8, B:30:0x011f], limit reached: 160 */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(com.byazt.lsx.j r16, com.byazt.iqm.l r17, com.byazt.tgw.e r18, com.byazt.rt.jx r19, java.util.Map<java.lang.String, java.lang.Object> r20) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.lsx.a.hp(com.byazt.lsx.j, com.byazt.iqm.l, com.byazt.tgw.e, com.byazt.rt.jx, java.util.Map):void");
    }
}
