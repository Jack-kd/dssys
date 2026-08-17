package com.byazt.zg;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, 19})
/* loaded from: classes3.dex */
public class jl {
    public static com.byazt.dq.jx hp(com.byazt.iqm.l lVar, com.byazt.rt.jx jxVar, boolean z2) {
        if (jxVar == null || lVar == null) {
            return null;
        }
        com.byazt.dq.jx jxVar2 = new com.byazt.dq.jx();
        jxVar2.hp(jxVar.getAdNetworkPlatformId());
        jxVar2.s(jxVar.getAdNetWorkName());
        jxVar2.q(jxVar.getCustomAdNetWorkName());
        jxVar2.e(jxVar.getAdNetworkSlotId());
        jxVar2.zy(jxVar.getLevelTag());
        if (z2) {
            if (hp() || !(jxVar.isServerBiddingAd() || jxVar.isClientBiddingAd() || jxVar.isMultiBiddingAd())) {
                jxVar2.gu(jxVar.getNetWorkPlatFormCpm());
            } else {
                jxVar2.gu("-3");
            }
        } else if (l() || !jxVar.isServerBiddingAd()) {
            jxVar2.gu(jxVar.getMultiCpm());
        } else {
            jxVar2.gu("-3");
        }
        jxVar2.v(jxVar.getReqId());
        jxVar2.l(jxVar.getAdNetworkSlotType());
        jxVar2.k(jxVar.getErrorMsg());
        jxVar2.hp(l(lVar));
        jxVar2.l(hp(jxVar));
        jxVar2.eb(lVar.n());
        jxVar2.a(hp(lVar));
        StringBuilder sb = new StringBuilder();
        sb.append(lVar.nd());
        jxVar2.jx(sb.toString());
        com.byazt.bki.a aVarN = com.byazt.di.hp.jl().n();
        jxVar2.j(aVarN != null ? aVarN.jx() : null);
        jxVar2.w(aVarN != null ? aVarN.j() : null);
        Map<String, Object> mapR = lVar.r();
        if (mapR != null && !mapR.isEmpty()) {
            HashMap map = new HashMap();
            for (Map.Entry<String, Object> entry : mapR.entrySet()) {
                Object value = entry.getValue();
                map.put(entry.getKey(), value == null ? null : value.toString());
            }
            jxVar2.hp(map);
        }
        jxVar2.jl(jxVar.getDiscount());
        return jxVar2;
    }

    private static String l(com.byazt.iqm.l lVar) {
        if (lVar == null) {
            return null;
        }
        switch (lVar.ec()) {
        }
        return null;
    }

    private static boolean l() {
        return com.byazt.di.l.l().r();
    }

    private static String hp(com.byazt.iqm.l lVar) {
        com.byazt.tgw.l lVarHp;
        if (lVar == null || com.byazt.dl.l.hp().s() != 1 || (lVarHp = com.byazt.dl.j.hp().hp(lVar.sz(), lVar.ec(), 102)) == null || lVarHp.jx() == 1) {
            return null;
        }
        String strRz = lVar.rz();
        if (TextUtils.isEmpty(strRz)) {
            return null;
        }
        try {
            return new JSONObject(strRz).optString("experiment_detail_id");
        } catch (JSONException unused) {
            return null;
        }
    }

    private static String hp(com.byazt.rt.jx jxVar) {
        if (jxVar == null) {
            return null;
        }
        switch (jxVar.getSubAdType()) {
            case 1:
            case 8:
                break;
            case 2:
            case 7:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                int adType = jxVar.getAdType();
                if (adType != 1) {
                    if (adType != 5) {
                        if (adType != 7) {
                        }
                    }
                }
                break;
        }
        return null;
    }

    private static boolean hp() {
        return com.byazt.di.l.l().dy();
    }

    public static boolean hp(List<com.byazt.rt.jx> list, List<com.byazt.rt.jx> list2, List<com.byazt.rt.jx> list3, com.byazt.iqm.l lVar, boolean z2, String str, int i2, List<com.byazt.tgw.e> list4) throws JSONException {
        int iL = com.byazt.toc.l.l(str);
        com.byazt.lsx.a.hp(list, list2, list3, lVar, iL);
        if (z2 || iL != 0) {
            return false;
        }
        if (list.size() > 0) {
            for (com.byazt.rt.jx jxVar : list) {
                if (jxVar != null) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(str, jxVar.getAdNetworkSlotId()) + "isReady-》广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",是否已准备好？isReady()：" + jxVar.isReady(str));
                    if (jxVar.isReady(str) && !jxVar.isHasShown()) {
                        return true;
                    }
                }
            }
        }
        if (list3 != null && list3.size() > 0) {
            for (com.byazt.rt.jx jxVar2 : list3) {
                if (jxVar2 != null) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(str, jxVar2.getAdNetworkSlotId()) + "isReady-》广告类型：" + com.byazt.rt.hp.hp(jxVar2.getAdNetworkPlatformId()) + ",是否已准备好？isReady()：" + jxVar2.isReady(str));
                    if (jxVar2.isReady(str) && !jxVar2.isHasShown()) {
                        return true;
                    }
                }
            }
        }
        if (list2 != null && list2.size() > 0) {
            for (com.byazt.rt.jx jxVar3 : list2) {
                if (jxVar3 != null) {
                    com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(str, jxVar3.getAdNetworkSlotId()) + "isReady--->biding-->广告类型：" + com.byazt.rt.hp.hp(jxVar3.getAdNetworkPlatformId()) + ",是否已准备好？isReady()：" + jxVar3.isReady(str));
                    if (jxVar3.isReady(str) && !jxVar3.isHasShown()) {
                        return true;
                    }
                }
            }
        }
        if (list4 != null && list4.size() > 0) {
            for (com.byazt.tgw.e eVar : list4) {
                String strVv = eVar.vv();
                if (eVar.sz() && com.byazt.xob.hp.hp().j(str, strVv, i2) && com.byazt.xob.hp.hp().hp(strVv, lVar, false) == 3) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hp(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("show_adn_load_error_detail");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public static com.byazt.dq.hp hp(com.byazt.iqm.l lVar, com.byazt.dq.hp hpVar, List<com.byazt.dq.l> list) {
        if (hpVar != null && lVar != null && list != null && list.size() != 0 && hp(lVar.r())) {
            JSONArray jSONArray = new JSONArray();
            for (com.byazt.dq.l lVar2 : list) {
                if (lVar2 != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(MediationConstant.EXTRA_ADN_NAME, TextUtils.isEmpty(lVar2.jx()) ? lVar2.j() : lVar2.jx());
                        jSONObject.put("mediation_rit", lVar2.l());
                        jSONObject.put("ad_type", lVar2.hp());
                        jSONObject.put("error_code", lVar2.w());
                        jSONObject.put("error_msg", lVar2.a());
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            hpVar.f19238l = jSONArray.toString();
        }
        return hpVar;
    }
}
