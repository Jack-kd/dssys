package com.byazt.mey;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.api.ATAdConst;
import com.byazt.tgw.q;
import com.byazt.zg.wv;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 589, 30})
/* loaded from: classes3.dex */
public class jx {
    public static com.byazt.ewl.hp hp(com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, com.byazt.ewl.l lVar3) {
        com.byazt.tgw.hp hpVarHp;
        com.byazt.qy.hp hpVarHp2;
        if (lVar != null && lVar2 != null) {
            lVar.hp(hp(lVar2, lVar));
            lVar.l(lVar2.sz());
            if (lVar.e()) {
                com.byazt.fct.l.hp(com.byazt.di.l.getContext(), lVar.zy());
                if (com.byazt.uhd.hp.hp(lVar.zy()) != null && (hpVarHp = com.byazt.dl.jx.hp().hp(lVar.zy())) != null && hpVarHp.j() != null && (hpVarHp2 = hpVarHp.j().hp(lVar.o(), lVar.v())) != null && hp(hpVarHp2)) {
                    return com.byazt.vne.j.hp(hpVarHp2.hp(), lVar, lVar3);
                }
            } else {
                if (lVar.gu()) {
                    return com.byazt.vne.j.hp(lVar, lVar3);
                }
                if (com.byazt.qca.jx.hp(lVar.s())) {
                    return new com.byazt.vne.jx(lVar3);
                }
            }
        }
        return null;
    }

    public static String hp(com.byazt.iqm.l lVar, com.byazt.xl.l lVar2) {
        if (lVar != null && lVar2 != null) {
            strHp = TextUtils.isEmpty(lVar.hp()) ? null : lVar.hp();
            if (!TextUtils.isEmpty(lVar2.jl())) {
                return (strHp + "_") + lVar2.jl();
            }
        }
        return strHp;
    }

    public static boolean hp(com.byazt.qy.hp hpVar) {
        if (hpVar == null) {
            return false;
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.ky.hp.hp().a();
        if (functionA != null) {
            if (!TextUtils.isEmpty(hpVar.hp())) {
                com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
                hpVarHp.hp(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, hpVar.hp());
                com.byazt.aw.l.l("TMe", "custom className is " + hpVar.hp());
                hpVarHp.hp(-99999987, 8229);
                hpVarHp.hp(-99999985, Boolean.class);
                return ((Boolean) functionA.apply(hpVarHp.l().sparseArray())).booleanValue();
            }
            com.byazt.aw.l.l("TMe", "custom className is empty");
        } else {
            com.byazt.aw.l.l(MediationConstant.TAG, "load ad check custom name class loader is null ");
        }
        return false;
    }

    public static Map<String, Object> hp(com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (lVar != null && lVar2 != null) {
            com.byazt.tgw.hp hpVarHp = com.byazt.di.l.l().hp(lVar.zy());
            if (hpVarHp != null) {
                concurrentHashMap.put("tt_ad_network_config_appid", hpVarHp.l());
                concurrentHashMap.put("tt_ad_network_config_appKey", hpVarHp.jx());
            }
            concurrentHashMap.put("tt_ad_origin_type", Integer.valueOf(lVar.k()));
            concurrentHashMap.put("tt_ad_sub_type", Integer.valueOf(lVar.v()));
            Map<String, Object> mapR = lVar2.r();
            if (mapR != null && mapR.size() > 0) {
                for (Map.Entry<String, Object> entry : mapR.entrySet()) {
                    if (entry.getKey() != null && entry.getValue() != null) {
                        concurrentHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            int iNs = lVar2.ns();
            int iCx = lVar2.cx();
            if (iNs < 0) {
                iNs = 0;
            }
            if (iCx < 0) {
                iCx = 0;
            }
            concurrentHashMap.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, Integer.valueOf(iCx));
            concurrentHashMap.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, Integer.valueOf(iNs));
            concurrentHashMap.put("ad_type", Integer.valueOf(lVar2.ec()));
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                    if (entry2.getKey() != null && entry2.getValue() != null) {
                        concurrentHashMap.put(entry2.getKey(), entry2.getValue());
                    }
                }
            }
        }
        return concurrentHashMap;
    }

    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, com.byazt.xl.l lVar2, q qVar, String str) {
        if (jxVar == null || lVar2 == null || lVar == null) {
            return;
        }
        if ((lVar2.ec() == 0 || lVar2.ec() == 100) && lVar2.wv() != 0.0d) {
            jxVar.setCpm(lVar2.wv());
        }
        if (lVar2.cx()) {
            jxVar.setServerBiddingShowCpm(lVar2.hq());
            jxVar.setServerBiddingLoadCpm(lVar2.ud());
            if (lVar2.nu() != null) {
                jxVar.setAid(lVar2.nu().jx());
                jxVar.setAdExtra(lVar2.nu().j());
                jxVar.setWinCallback(lVar2.nu().s());
                jxVar.setFailCallback(lVar2.nu().q());
                jxVar.setPricingType(lVar2.nu().hp());
            }
        }
        jxVar.setAdNetworkSlotType(lVar2.ec());
        jxVar.setLoadSort(lVar2.sz());
        jxVar.setShowSort(lVar2.n());
        if (str == null) {
            str = "";
        }
        jxVar.setSdkVersion(str);
        jxVar.setAdNetWorkName(lVar2.zy());
        jxVar.setCustomAdNetWorkName(lVar2.s() != null ? lVar2.s().u() : "");
        jxVar.setExchangeRate(lVar2.dy());
        jxVar.setDiscount(lVar2.s() != null ? lVar2.s().cx() : null);
        jxVar.setFillTime(SystemClock.elapsedRealtime());
        jxVar.setAdNetworkSlotId(lVar2.jl());
        jxVar.setRit(lVar2.l());
        jxVar.setSdkNum(com.byazt.rt.hp.l(lVar2.zy()));
        jxVar.setMediationRitReqTypeFromRealReq(lVar2.eb());
        jxVar.setMediationRitReqTypeSrcFromRealReq(lVar2.a());
        jxVar.setLinkIdFromRealReq(lVar.hp());
        jxVar.setMediationRitReqType(lVar2.eb());
        jxVar.setMediationRitReqTypeSrc(lVar2.a());
        jxVar.setOriginType(lVar2.k());
        jxVar.setSubAdType(lVar2.v());
        jxVar.setAdType(lVar.ec());
        jxVar.setIfReuseAds(lVar2.lv());
        jxVar.setIsRefresh(lVar2.d());
        wv.hp(jxVar, lVar2.s(), lVar, false);
        if (qVar != null) {
            int i2 = qVar.f25864l;
            jxVar.putEventParam("if_test", Integer.valueOf(i2 == 1 ? i2 : 0));
            jxVar.putEventParam("server_bidding_extra", qVar.hp);
            int mediationRitReqType = jxVar.getMediationRitReqType(lVar.hp());
            if (mediationRitReqType == 1 || mediationRitReqType == 2) {
                jxVar.setTimeoutFill(qVar.f25865w);
            }
        }
        if (lVar2.nu() != null && lVar2.nu() != null) {
            jxVar.putExtraMsg("extra_data_and_no_parse", lVar2.nu().l());
        }
        jxVar.setLoadByDexPl(lVar2.xh());
    }
}
