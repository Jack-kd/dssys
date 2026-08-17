package com.byazt.uhd;

import android.util.SparseArray;
import com.byazt.jz.d;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 935, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    @com.byazt.kj.hp(hp = {0, 1, 935, 8})
    public static class hp extends eb {
        public hp(com.byazt.bm.l lVar) {
            super(lVar);
        }

        @Override // com.byazt.uhd.eb
        public boolean isLimitPersonalAds() {
            int iRk = com.byazt.di.l.l().rk();
            if (iRk > 0) {
                return true;
            }
            if (iRk < 0) {
                return false;
            }
            return super.isLimitPersonalAds();
        }

        @Override // com.byazt.uhd.eb
        public boolean isProgrammaticRecommend() {
            int iWt = com.byazt.di.l.l().wt();
            if (iWt > 0) {
                return false;
            }
            if (iWt < 0) {
                return true;
            }
            return super.isProgrammaticRecommend();
        }
    }

    public static void hp(com.byazt.wi.j jVar) {
        com.byazt.jt.hp hpVar = new com.byazt.jt.hp(com.byazt.di.hp.jl().r().sparseArray());
        jVar.hp(8475, com.byazt.kd.j.hp(l(hpVar.gu())));
        jVar.hp(8457, com.byazt.kd.j.hp(hp(hpVar.v())));
        jVar.hp(1, Boolean.valueOf(com.byazt.dl.l.hp().eb()));
    }

    private static SparseArray<Object> jx(com.byazt.jt.j jVar) {
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        if (jVar != null) {
            jVarHp.hp(8311, new hp(jVar.getMediationPrivacyConfig()));
            jVarHp.hp(8023, Boolean.valueOf(jVar.isCanUsePhoneState()));
            jVarHp.hp(8024, Boolean.valueOf(jVar.isCanUseLocation()));
            jVarHp.hp(8025, Boolean.valueOf(jVar.isCanUseWriteExternal()));
            jVarHp.hp(8026, Boolean.valueOf(jVar.alist()));
            jVarHp.hp(8480, Boolean.valueOf(jVar.isCanUseWifiState()));
            jVarHp.hp(8479, Boolean.valueOf(jVar.isCanUseAndroidId()));
            jVarHp.hp(8312, jVar.getTTLocation() != null ? new a(jVar.getTTLocation()) : null);
            jVarHp.hp(8483, jVar.getTTLocation());
            jVarHp.hp(8484, jVar.getDevImei());
            jVarHp.hp(8485, jVar.getAndroidId());
            jVarHp.hp(8486, jVar.getDevOaid());
            jVarHp.hp(8487, jVar.getMacAddress());
            jVarHp.hp(8554, jVar.userPrivacyConfig());
            jVarHp.hp(8549, Boolean.valueOf(jVar.isCanUsePermissionRecordAudio()));
        } else {
            jVarHp.hp(8311, new hp(null));
            Boolean bool = Boolean.TRUE;
            jVarHp.hp(8023, bool);
            jVarHp.hp(8024, bool);
            jVarHp.hp(8025, bool);
            jVarHp.hp(8026, bool);
            jVarHp.hp(8480, bool);
            jVarHp.hp(8479, bool);
            jVarHp.hp(8312, new a(null));
            jVarHp.hp(8483, null);
            jVarHp.hp(8484, "");
            jVarHp.hp(8485, "");
            jVarHp.hp(8486, "");
            jVarHp.hp(8487, "");
            jVarHp.hp(8549, bool);
        }
        return jVarHp.l();
    }

    public static void l(com.byazt.wi.j jVar) {
        com.byazt.jt.hp hpVar = new com.byazt.jt.hp(com.byazt.di.hp.jl().r().sparseArray());
        jVar.hp(8475, com.byazt.kd.j.hp(hp(hpVar.gu())));
        jVar.hp(8457, com.byazt.kd.j.hp(hp(hpVar.v())));
        jVar.hp(1, Boolean.valueOf(com.byazt.dl.l.hp().eb()));
    }

    public static void hp(com.byazt.wi.j jVar, com.byazt.wi.j jVar2) {
        jVar.hp(8424, com.byazt.kd.j.hp(jVar2.l()));
    }

    public static SparseArray<Object> hp(com.byazt.bm.hp hpVar) {
        if (hpVar == null) {
            return null;
        }
        com.byazt.wi.j jVarHp = com.byazt.wi.j.hp();
        jVarHp.hp(8458, Boolean.valueOf(hpVar.w()));
        jVarHp.hp(8459, hpVar.gu());
        jVarHp.hp(8460, hpVar.hp());
        jVarHp.hp(8461, Boolean.valueOf(hpVar.l()));
        jVarHp.hp(8310, new s(hpVar.jx()));
        jVarHp.hp(8462, hpVar.j());
        jVarHp.hp(8463, hpVar.a());
        jVarHp.hp(8464, hpVar.eb());
        jVarHp.hp(8465, Boolean.valueOf(hpVar.s()));
        jVarHp.hp(8466, Boolean.valueOf(hpVar.q()));
        jVarHp.hp(8467, Boolean.valueOf(hpVar.e()));
        return jVarHp.l();
    }

    public static SparseArray<Object> l(com.byazt.jt.j jVar) {
        return jx(jVar);
    }

    public static SparseArray<Object> hp(com.byazt.jt.j jVar) {
        return jx(jVar == null ? null : new com.byazt.sii.eb(jVar, false));
    }

    public static JSONObject hp() {
        try {
            JSONObject jSONObject = new JSONObject();
            Map<String, com.byazt.gkj.j> mapL = l.hp().l();
            if (mapL != null && mapL.size() > 0) {
                for (Map.Entry<String, com.byazt.gkj.j> entry : mapL.entrySet()) {
                    String key = entry.getKey();
                    com.byazt.gkj.j value = entry.getValue();
                    long jInitDuration = value.initDuration();
                    int iInitStatus = value.initStatus();
                    if (jInitDuration != 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("status", iInitStatus);
                        jSONObject2.put("duration", jInitDuration);
                        jSONObject.put(key, jSONObject2);
                        value.clearInitStatus();
                    }
                }
            }
            if (com.byazt.owd.a.hp > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("status", 1);
                jSONObject3.put("duration", com.byazt.owd.a.hp);
                jSONObject3.put("plugin", d.l() ? 1 : 0);
                jSONObject3.put("layer_real_cost_time", com.byazt.owd.a.jx);
                jSONObject.put(MediationConstant.ADN_PANGLE, jSONObject3);
                com.byazt.owd.a.hp = 0L;
            }
            if (com.byazt.owd.a.f24201l > 0) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("status", 1);
                jSONObject4.put("duration", com.byazt.owd.a.f24201l);
                jSONObject4.put("plugin", d.l() ? 1 : 0);
                jSONObject4.put("layer_real_cost_time", com.byazt.owd.a.f24200j);
                jSONObject.put("fusion", jSONObject4);
                com.byazt.owd.a.f24201l = 0L;
            }
            if (com.byazt.uhd.hp.j() != null && com.byazt.uhd.hp.j().hp() != null && com.byazt.uhd.hp.j().hp().size() > 0) {
                for (Map.Entry<String, com.byazt.qyg.hp> entry2 : com.byazt.uhd.hp.j().hp().entrySet()) {
                    String key2 = entry2.getKey();
                    com.byazt.qyg.hp value2 = entry2.getValue();
                    long jInitDuration2 = value2.initDuration();
                    int iInitStatus2 = value2.initStatus();
                    if (jInitDuration2 != 0) {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("status", iInitStatus2);
                        jSONObject5.put("duration", jInitDuration2);
                        jSONObject.put(key2, jSONObject5);
                        value2.clearInitStatus();
                    }
                }
            }
            if (jSONObject.length() == 0) {
                return null;
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }
}
