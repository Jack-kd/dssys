package com.byazt.xoi;

import com.anythink.core.common.f.a;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1415, 30})
/* loaded from: classes3.dex */
public class jx {
    public static void hp(com.byazt.rt.jx jxVar, com.byazt.iqm.l lVar, Map<String, Object> map) {
        if (com.byazt.di.l.l().rz()) {
            String strSz = lVar != null ? lVar.sz() : null;
            l lVarHd = com.byazt.di.l.l().hd();
            if (lVarHd != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("lt_days", Integer.valueOf(lVarHd.hp()));
                    jSONObject.putOpt(a.C0051a.f3218o, lVarHd.jx(strSz));
                } catch (Exception e2) {
                    com.byazt.aw.l.j("AdLoadEventManager", "put 元素 异常：" + e2.getMessage());
                }
                try {
                    jSONObject.putOpt("score", Float.valueOf(com.byazt.di.hp.jl().hp(strSz)));
                } catch (Exception e3) {
                    com.byazt.aw.l.j("AdLoadEventManager", "put 元素异常：" + e3.getMessage());
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("dis_c", Integer.valueOf(hp.l(strSz)));
                    jSONObject2.putOpt("ins_d", Integer.valueOf(hp.w()));
                    jSONObject2.putOpt("act_d", Integer.valueOf(hp.l()));
                    jSONObject2.putOpt("act_times", Integer.valueOf(hp.j()));
                    jSONObject.putOpt("active_target", jSONObject2);
                } catch (Exception e4) {
                    com.byazt.aw.l.j("AdLoadEventManager", "put 元素异常：" + e4.getMessage());
                }
                if (lVar != null && lVar.r() != null) {
                    Map<String, Object> mapR = lVar.r();
                    if (mapR.containsKey(MediationConstant.KEY_USE_POLICY)) {
                        try {
                            jSONObject.putOpt("user_enter", mapR.get(MediationConstant.KEY_USE_POLICY));
                        } catch (Exception e5) {
                            com.byazt.aw.l.j("AdLoadEventManager", "put 元素异常：" + e5.getMessage());
                        }
                    }
                }
                map.put("dynamic_policy", jSONObject);
            }
        }
    }
}
