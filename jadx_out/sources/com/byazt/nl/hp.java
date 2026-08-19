package com.byazt.nl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.anythink.core.common.m.q;
import com.byazt.aw.w;
import com.byazt.fct.jx;
import com.byazt.iqm.l;
import com.byazt.lsx.a;
import com.byazt.lsx.j;
import com.byazt.lsx.s;
import com.byazt.tgw.e;
import com.byazt.zg.d;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.analytics.pro.bv;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2059, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private static void l(j jVar) {
        jVar.hp("block_pacing", "-1");
        jVar.hp("rit_adn_show_rule_id", "-1");
        jVar.hp("block_show_count", "-1");
    }

    public void hp(j jVar, l lVar, String str, boolean z2, String str2, int i2, Map<String, Object> map) {
        String strHp;
        if (i2 > 0) {
            strHp = com.byazt.dq.hp.hp(i2);
        } else {
            strHp = "";
            i2 = 0;
        }
        jVar.hp("mediation_request").hp("server_bidding_extra", str2).hp("mediation_req_type", Integer.valueOf(i2 != 0 ? z2 ? 2 : 3 : !z2 ? 1 : 0)).hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar != null ? lVar.b() : 0)).l(i2).gu(strHp);
        HashMap map2 = new HashMap();
        if (map != null && map.size() > 0) {
            map2.putAll(map);
        }
        if (lVar != null && lVar.jx() == 5) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parallel_num", com.byazt.gp.j.hp().jx());
                jSONObject.put("interval", com.byazt.gp.j.hp().j());
                jSONObject.put("primerit_list", com.byazt.gp.j.hp().l());
                map2.put("preload_info", jSONObject);
            } catch (JSONException unused) {
            }
        }
        if (lVar != null && lVar.ec() == 3 && (com.byazt.fqv.hp.hp().gu() || com.byazt.fqv.hp.hp().jl())) {
            map2.put("init_splash_request_duration", Long.valueOf(com.byazt.fqv.hp.hp().q()));
        }
        if (lVar != null && lVar.ky() != null && !lVar.ky().isEmpty()) {
            map2.putAll(lVar.ky());
        }
        map2.put("csj_plugin_version", jx.j());
        a.hp(jVar, lVar, (e) null, (com.byazt.rt.jx) null, map2);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map2);
    }

    public void hp(j jVar, com.byazt.rt.jx jxVar, l lVar, com.byazt.tgw.l lVar2, long j2, String str, boolean z2, int i2, boolean z3, boolean z4) {
        jVar.hp("mediation_fill").hp(j2).hp("server_bidding_extra", str).hp("mediation_req_type", Integer.valueOf(!z2 ? 1 : 0)).hp(PointParamKey.AD_COUNT, Integer.valueOf(i2)).l(0).gu("");
        HashMap map = new HashMap();
        if (lVar != null && lVar.ec() == 3) {
            if (com.byazt.fqv.hp.hp().gu()) {
                com.byazt.fqv.hp.hp().hp(com.byazt.lsx.hp.jx);
                map.put("init_splash_fill_duration", Long.valueOf(com.byazt.fqv.hp.hp().e()));
            } else if (com.byazt.fqv.hp.hp().jl()) {
                map.put("init_splash_fill_duration", Long.valueOf(com.byazt.fqv.hp.hp().e()));
            }
        }
        a.hp(jVar, lVar, (e) null, jxVar, map);
        map.put("timeout_req", Integer.valueOf(z3 ? 1 : 0));
        map.put("is_callback", Integer.valueOf(z4 ? 1 : 0));
        if (lVar != null && lVar.ky() != null && !lVar.ky().isEmpty()) {
            map.putAll(lVar.ky());
        }
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, l lVar, com.byazt.rt.jx jxVar, long j2, int i2, int i3, int i4, String str, int i5, int i6, com.byazt.tgw.l lVar2, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObjectQ;
        jVar.hp("mediation_request_end").hp(j2).hp(PointParamKey.AD_COUNT, Integer.valueOf(i5)).hp(MediationConstant.KEY_REASON, Integer.valueOf(i6)).l(i4);
        HashMap map = new HashMap();
        a.hp(jVar, lVar, (e) null, jxVar, map);
        map.put("requested_adn_count", Integer.valueOf(i2));
        map.put("requested_level_count", Integer.valueOf(i3));
        if (jSONObject != null) {
            map.put("auto_detail", jSONObject);
        }
        if (jSONObject2 != null) {
            map.put(bv.f48896W, jSONObject2);
        }
        if (lVar2 != null) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.putOpt("layer_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(lVar2.w())));
                jSONObject3.putOpt("req_interval", Long.valueOf(lVar2.eb()));
                jSONObject3.putOpt("total_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(lVar2.a())));
                map.put("preload_req", jSONObject3);
            } catch (Throwable unused) {
            }
        }
        if (lVar != null && (jSONObjectQ = lVar.q()) != null) {
            map.put("behavior", jSONObjectQ);
        }
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, @Nullable l lVar, com.byazt.dq.hp hpVar, String str) {
        JSONObject jSONObjectQ;
        jVar.hp("total_load_fail").hp("server_bidding_extra", str);
        int i2 = hpVar.hp;
        if (i2 == 10003) {
            jVar.l(MeishuOpenDeepLinkActivity.REQUEST_CODE_DEEP_LINK).gu("延长瀑布流总超时时长或者缩短层超时并添加兜底代码位");
            hp(jVar);
        } else if (i2 == 810085) {
            jVar.l(i2).gu(hpVar.f19238l);
            hp(jVar);
        } else if (hpVar instanceof com.byazt.le.jx) {
            com.byazt.le.jx jxVar = (com.byazt.le.jx) hpVar;
            jVar.l(i2).gu(hpVar.f19238l);
            jVar.hp("block_pacing", jxVar.hp());
            jVar.hp("waterfall_show_rule_id", jxVar.l());
        } else if (hpVar instanceof com.byazt.le.l) {
            com.byazt.le.l lVar2 = (com.byazt.le.l) hpVar;
            jVar.l(i2).gu(hpVar.f19238l);
            jVar.hp("block_show_count", lVar2.hp());
            jVar.hp("waterfall_show_rule_id", lVar2.l());
        } else if (hpVar instanceof com.byazt.le.hp) {
            jVar.l(i2).gu(hpVar.f19238l);
            hp(jVar);
        } else {
            jVar.l(10086).gu("Ad load fail all loadsorts! ");
            hp(jVar);
        }
        HashMap map = new HashMap();
        if (lVar != null && (jSONObjectQ = lVar.q()) != null) {
            map.put("behavior", jSONObjectQ);
        }
        if (lVar != null && lVar.ky() != null && !lVar.ky().isEmpty()) {
            map.putAll(lVar.ky());
        }
        jVar.hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar != null ? lVar.b() : 0));
        a.hp(jVar, lVar, (e) null, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, e eVar, l lVar, String str, boolean z2, int i2, int i3, int i4, int i5, com.byazt.dq.hp hpVar, long j2, boolean z3, boolean z4, String str2, long j3) {
        int iJ;
        if ((hpVar instanceof com.byazt.le.jx) || (hpVar instanceof com.byazt.le.l) || (hpVar instanceof com.byazt.le.hp)) {
            jVar.l(hpVar.hp).gu(hpVar.f19238l);
        }
        jVar.hp("media_request").a(str).hp(j3).hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar != null ? lVar.b() : 0)).hp("adn_count", Integer.valueOf(i3)).hp("mediationrit_req_type", Integer.valueOf(i4)).hp("mediationrit_req_type_src", Integer.valueOf(i5)).hp("mediation_req_type", Integer.valueOf(!z2 ? 1 : 0)).hp("media_req_type", Integer.valueOf(i2));
        HashMap map = new HashMap();
        map.put("timeout_req", Integer.valueOf(z3 ? 1 : 0));
        map.put("is_callback", Integer.valueOf(z4 ? 1 : 0));
        if (lVar != null && lVar.vq() && !TextUtils.isEmpty(str2)) {
            map.put("origin_link_id", str2);
        }
        if (lVar != null && lVar.xh() != null && eVar != null && MediationConstant.ADN_PANGLE.equals(eVar.v()) && eVar.zy() == 5 && (iJ = lVar.xh().j()) == 1) {
            map.put("support_render_control", Integer.valueOf(iJ));
        }
        if (j2 != -1) {
            map.put("start_time", Long.valueOf(SystemClock.elapsedRealtime() - j2));
        }
        a.hp(jVar, lVar, eVar, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, com.byazt.rt.jx jxVar, int i2, String str, long j2, l lVar, int i3, int i4, int i5, String str2, long j3, long j4) {
        jVar.hp("media_fill").hp(j2).l(i2).gu(str).hp("adn_count", Integer.valueOf(i3)).hp("adn_preload", Integer.valueOf((jxVar == null || !jxVar.isAdnPreload()) ? 0 : 1)).hp(PointParamKey.AD_COUNT, Integer.valueOf(i4));
        jVar.hp("fill_type", Integer.valueOf(i5));
        if (str2 != null) {
            jVar.hp("sub_adn_name", str2);
        }
        HashMap map = new HashMap();
        boolean z2 = j3 >= 0;
        if (jxVar != null && jxVar.isCustomAd()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                map.put("custom_adn_rec_time", Long.valueOf(j3));
            }
        }
        if (j4 != -1) {
            map.put("end_time", Long.valueOf(j4));
        }
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName()) && jxVar.getAdType() == 5 && jxVar.getSupportRender() == 1) {
            map.put("if_to_express", Integer.valueOf(jxVar.getSupportRender()));
        }
        if (com.byazt.di.l.l().su() && jxVar != null && 5 == jxVar.getAdType()) {
            jVar.hp("ex_info", s.hp().hp(jxVar));
        }
        Long lHp = hp(jxVar);
        if (lHp != null) {
            jVar.hp("cid", String.valueOf(lHp));
        }
        a.hp(jVar, lVar, (e) null, jxVar, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    private Long hp(com.byazt.rt.jx jxVar) {
        Map<String, Object> extraMsg;
        if (jxVar == null || (extraMsg = jxVar.getExtraMsg()) == null || !(extraMsg.get("creative_id") instanceof Long)) {
            return null;
        }
        return (Long) extraMsg.get("creative_id");
    }

    public void hp(j jVar, com.byazt.dq.hp hpVar, l lVar, e eVar, int i2, int i3, int i4, String str, long j2, String str2, String str3, String str4, long j3) {
        if (hpVar instanceof com.byazt.le.jx) {
            com.byazt.le.jx jxVar = (com.byazt.le.jx) hpVar;
            jVar.l(hpVar.hp).gu(hpVar.f19238l);
            jVar.hp("block_pacing", jxVar.hp());
            jVar.hp("adn_rit_show_rule_id", jxVar.l());
        } else if (hpVar instanceof com.byazt.le.l) {
            com.byazt.le.l lVar2 = (com.byazt.le.l) hpVar;
            jVar.l(hpVar.hp).gu(hpVar.f19238l);
            jVar.hp("block_show_count", lVar2.hp());
            jVar.hp("adn_rit_show_rule_id", lVar2.l());
        } else if (hpVar instanceof com.byazt.le.hp) {
            jVar.l(hpVar.hp);
            jVar.gu(hpVar.f19238l);
            l(jVar);
        } else {
            jVar.l(hpVar != null ? hpVar.jx : -1).gu(hpVar != null ? hpVar.f19237j : "unknown error");
            l(jVar);
        }
        jVar.hp("media_fill_fail").hp(j2).a(str).hp("adn_count", Integer.valueOf(i2)).hp("adn_preload", 0).hp("mediationrit_req_type", Integer.valueOf(i3)).hp("mediationrit_req_type_src", Integer.valueOf(i4));
        HashMap map = new HashMap();
        Object objHp = hpVar.hp("is_dex_adapter");
        if (objHp != null) {
            map.put("is_dex_adapter", objHp);
        }
        boolean z2 = j3 >= 0;
        if (eVar != null && eVar.as()) {
            map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
            map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                map.put("custom_adn_rec_time", Long.valueOf(j3));
            }
        }
        a.hp(jVar, lVar, eVar, (com.byazt.rt.jx) null, map);
        if (!TextUtils.isEmpty(str2)) {
            jVar.q(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            jVar.hp("level_tag", str3);
        }
        if (str4 != null) {
            jVar.hp("sub_adn_name", str4);
        }
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, e eVar, l lVar, int i2, int i3) {
        jVar.hp("adapter_request_fail").hp(0L).a((String) null).l(q.f5857o).gu("adapter create fail !").hp("mediationrit_req_type", Integer.valueOf(i2)).hp("mediationrit_req_type_src", Integer.valueOf(i3));
        HashMap map = new HashMap();
        a.hp(jVar, lVar, eVar, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, l lVar, int i2) {
        jVar.hp("get_config_error").l(i2);
        HashMap map = new HashMap();
        a.hp(jVar, lVar, (e) null, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, com.byazt.rt.jx jxVar, l lVar, List<com.byazt.rt.jx> list, List<com.byazt.rt.jx> list2) {
        Iterator<com.byazt.rt.jx> it;
        HashMap map;
        jVar.hp("bidding_win_event");
        HashMap map2 = new HashMap();
        a.hp(jVar, lVar, (e) null, jxVar, map2);
        JSONArray jSONArray = new JSONArray();
        if (!d.hp(list)) {
            for (com.byazt.rt.jx jxVar2 : list) {
                if (jxVar2 != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        map = map2;
                        try {
                            jSONObject.putOpt("mediation_rit", jxVar2.getAdNetworkSlotId());
                            jSONObject.putOpt(MediationConstant.EXTRA_ADN_NAME, jxVar2.getAdNetWorkName());
                            jSONObject.putOpt("load_sort", Integer.valueOf(jxVar2.getLoadSort()));
                            jSONObject.putOpt("show_sort", Integer.valueOf(jxVar2.getShowSort()));
                            jSONObject.putOpt("exchange_rate", jxVar2.getExchangeRate());
                            jSONObject.putOpt("rit_cpm", Double.valueOf(jxVar2.getCpm()));
                            jSONObject.putOpt("m_aid", jxVar2.getAid());
                            jSONObject.putOpt("req_bidding_type", Integer.valueOf(jxVar2.getAdNetworkSlotType()));
                            jSONObject.putOpt("win_state", 1);
                            jSONObject.putOpt("ad_extra", jxVar2.getAdExtra());
                            jSONObject.putOpt("win_callback", jxVar2.getWinCallback());
                            jSONObject.putOpt("loss_callback", jxVar2.getFailCallback());
                            if (jxVar2.isServerBiddingAd()) {
                                jSONObject.putOpt("pricing_type", Integer.valueOf(jxVar2.getPricingType()));
                            }
                            jSONArray.put(jSONObject);
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                    }
                } else {
                    map = map2;
                }
                map2 = map;
            }
        }
        HashMap map3 = map2;
        if (!d.hp(list2)) {
            Iterator<com.byazt.rt.jx> it2 = list2.iterator();
            while (it2.hasNext()) {
                com.byazt.rt.jx next = it2.next();
                if (next != null) {
                    it = it2;
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("mediation_rit", next.getAdNetworkSlotId());
                        jSONObject2.putOpt(MediationConstant.EXTRA_ADN_NAME, next.getAdNetWorkName());
                        jSONObject2.putOpt("load_sort", Integer.valueOf(next.getLoadSort()));
                        jSONObject2.putOpt("show_sort", Integer.valueOf(next.getShowSort()));
                        jSONObject2.putOpt("exchange_rate", next.getExchangeRate());
                        jSONObject2.putOpt("rit_cpm", Double.valueOf(next.getCpm()));
                        jSONObject2.putOpt("m_aid", next.getAid());
                        jSONObject2.putOpt("req_bidding_type", Integer.valueOf(next.getAdNetworkSlotType()));
                        jSONObject2.putOpt("win_state", 0);
                        jSONObject2.putOpt("ad_extra", next.getAdExtra());
                        jSONObject2.putOpt("win_callback", next.getWinCallback());
                        jSONObject2.putOpt("loss_callback", next.getFailCallback());
                        if (next.isServerBiddingAd()) {
                            jSONObject2.putOpt("pricing_type", Integer.valueOf(next.getPricingType()));
                        }
                        jSONArray.put(jSONObject2);
                    } catch (Exception unused3) {
                    }
                } else {
                    it = it2;
                }
                it2 = it;
            }
        }
        map3.put("others", jSONArray);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map3);
    }

    public void hp(j jVar, l lVar, JSONObject jSONObject) {
        jVar.hp("start_bidding_request").hp(2).hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar != null ? lVar.b() : 0));
        HashMap map = new HashMap();
        if (jSONObject != null) {
            map.put("exchange_time", jSONObject);
        }
        a.hp(jVar, lVar, (e) null, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, l lVar, com.byazt.pj.l lVar2, int i2) {
        if (lVar2 == null) {
            return;
        }
        j result = jVar.hp("return_bidding_result").hp(lVar2.eb).setResult(lVar2.f24415a);
        com.byazt.dq.hp hpVar = lVar2.f24421s;
        j jVarL = result.l(hpVar == null ? 0 : hpVar.hp);
        com.byazt.dq.hp hpVar2 = lVar2.f24421s;
        jVarL.gu(hpVar2 == null ? "" : hpVar2.f19238l).hp(2).hp("fill_type", Integer.valueOf(i2)).hp("server_bidding_extra", lVar2.f24417j).hp(PointParamKey.AD_COUNT, Integer.valueOf(lVar2.f24420q));
        HashMap map = new HashMap();
        com.byazt.ney.j.hp(lVar2.f24416e, lVar2.hp, map);
        JSONObject jSONObject = lVar2.gu;
        if (jSONObject != null) {
            map.put("exchange_time", jSONObject);
        }
        a.hp(jVar, lVar, (e) null, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, e eVar, l lVar, String str) {
        jVar.hp("get_bidding_adm_to_adn").a(str);
        HashMap map = new HashMap();
        a.hp(jVar, lVar, eVar, (com.byazt.rt.jx) null, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, com.byazt.rt.jx jxVar, l lVar, e eVar, long j2) {
        jVar.hp("bidding_adm_load").hp(j2);
        HashMap map = new HashMap();
        if (com.byazt.di.l.l().su() && jxVar != null && 5 == jxVar.getAdType()) {
            jVar.hp("ex_info", s.hp().hp(jxVar));
        }
        a.hp(jVar, lVar, eVar, jxVar, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, com.byazt.rt.jx jxVar, l lVar, e eVar) {
        jVar.hp("bidding_adm_cache");
        HashMap map = new HashMap();
        a.hp(jVar, lVar, eVar, jxVar, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, l lVar, com.byazt.rt.jx jxVar, e eVar) {
        jVar.hp("media_cache_success");
        HashMap map = new HashMap();
        a.hp(jVar, lVar, eVar, jxVar, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(j jVar, l lVar, com.byazt.rt.jx jxVar, long j2) {
        jVar.hp("mediation_video_cached").hp(j2);
        HashMap map = new HashMap();
        a.hp(jVar, lVar, (e) null, jxVar, map);
        com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
    }

    public void hp(final j jVar, final com.byazt.rt.jx jxVar, final l lVar, final int i2, final String str, final long j2, final String str2, final boolean z2, final int i3) {
        w.j(new Runnable() { // from class: com.byazt.nl.hp.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.rt.jx jxVar2;
                com.byazt.rt.jx jxVar3 = jxVar;
                jVar.hp("media_show_listen").hp("adn_preload", Integer.valueOf((jxVar3 == null || !jxVar3.isAdnPreload()) ? 0 : 1)).hp("play_again", Integer.valueOf(i2)).hp("is_repeat", Integer.valueOf(z2 ? 1 : 0));
                String str3 = str;
                if (str3 != null) {
                    jVar.hp("sub_adn_name", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    jVar.hp("callstack_message", str2);
                }
                HashMap map = new HashMap();
                map.put("enable_label_return", Integer.valueOf(com.byazt.di.l.l().yr() ? 1 : 0));
                map.put("if_labelapi_call", Integer.valueOf(com.byazt.di.hp.jl().hp() ? 1 : 0));
                map.put("is_fill_quick_ad", Integer.valueOf(i3));
                com.byazt.xoi.jx.hp(jxVar, lVar, map);
                boolean z3 = j2 >= 0;
                com.byazt.rt.jx jxVar4 = jxVar;
                if (jxVar4 != null && jxVar4.isCustomAd()) {
                    map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
                    map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z3));
                    if (z3) {
                        map.put("custom_adn_rec_time", Long.valueOf(j2));
                    }
                }
                com.byazt.rt.jx jxVar5 = jxVar;
                if (jxVar5 != null && !TextUtils.isEmpty(jxVar5.getAdLifecycleId())) {
                    com.byazt.uk.hp.hp(map, jxVar.getAdLifecycleId());
                }
                a.hp(jVar, lVar, (e) null, jxVar, map);
                com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
                if (com.byazt.di.l.l().e() && (jxVar2 = jxVar) != null && MediationConstant.ADN_PANGLE.equals(jxVar2.getAdNetWorkName())) {
                    com.byazt.lsx.jx.j();
                }
            }
        });
    }

    public void hp(final j jVar, final com.byazt.rt.jx jxVar, final l lVar, final int i2, final String str, final long j2, final String str2, final boolean z2) {
        w.j(new Runnable() { // from class: com.byazt.nl.hp.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.rt.jx jxVar2 = jxVar;
                jVar.hp("media_click_listen").hp("adn_preload", Integer.valueOf((jxVar2 == null || !jxVar2.isAdnPreload()) ? 0 : 1)).hp("play_again", Integer.valueOf(i2)).hp("is_repeat", Integer.valueOf(z2 ? 1 : 0));
                String str3 = str;
                if (str3 != null) {
                    jVar.hp("sub_adn_name", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    jVar.hp("callstack_message", str2);
                }
                HashMap map = new HashMap();
                boolean z3 = j2 >= 0;
                com.byazt.rt.jx jxVar3 = jxVar;
                if (jxVar3 != null && jxVar3.isCustomAd()) {
                    map.put("custom_adn_sample_ratio", Double.valueOf(xs.jx()));
                    map.put("custom_adn_sample_ratio_result", Boolean.valueOf(z3));
                    if (z3) {
                        map.put("custom_adn_rec_time", Long.valueOf(j2));
                    }
                }
                com.byazt.rt.jx jxVar4 = jxVar;
                if (jxVar4 != null && !TextUtils.isEmpty(jxVar4.getAdLifecycleId())) {
                    com.byazt.uk.hp.hp(map, jxVar.getAdLifecycleId());
                }
                a.hp(jVar, lVar, (e) null, jxVar, map);
                com.byazt.lsx.jx.hp(com.byazt.di.l.getContext(), jVar, map);
            }
        });
    }

    private static void hp(j jVar) {
        jVar.hp("block_pacing", "-1");
        jVar.hp("waterfall_show_rule_id", "-1");
        jVar.hp("block_show_count", "-1");
    }
}
