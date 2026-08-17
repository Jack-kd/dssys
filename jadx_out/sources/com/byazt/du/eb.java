package com.byazt.du;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 94})
/* loaded from: classes2.dex */
public class eb extends com.byazt.oa.j<JSONObject, JSONObject> {
    public WeakReference<com.byazt.jz.ud> hp;

    public eb(com.byazt.jz.ud udVar) {
        this.hp = new WeakReference<>(udVar);
    }

    @Override // com.byazt.oa.j
    public void j() {
    }

    public static void hp(com.byazt.oa.xs xsVar, final com.byazt.jz.ud udVar) {
        xsVar.hp("commonConvert", new j.l() { // from class: com.byazt.du.eb.1
            @Override // com.byazt.oa.j.l
            public com.byazt.oa.j hp() {
                return new eb(udVar);
            }
        });
    }

    @Override // com.byazt.oa.j
    public void hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        WeakReference<com.byazt.jz.ud> weakReference;
        com.byazt.qb.hp hpVarFi;
        JSONObject jSONObjectL;
        com.byazt.lf.k kVarHp;
        int i2;
        com.byazt.jz.s.u().f();
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.xci.mp mpVarHp = null;
        try {
            weakReference = this.hp;
        } catch (Exception unused) {
        } catch (Throwable th) {
            com.byazt.lf.k.hp().hp("commonConvert", "js", 0, jSONObject2);
            com.byazt.yx.l.hp().j(null);
            throw th;
        }
        if (weakReference == null) {
            com.byazt.lf.k.hp().hp("commonConvert", "js", 1, jSONObject2);
        } else {
            com.byazt.jz.ud udVar = weakReference.get();
            if (udVar == null) {
                jx();
                kVarHp = com.byazt.lf.k.hp();
                i2 = 2;
            } else if (jSONObject == null) {
                kVarHp = com.byazt.lf.k.hp();
                i2 = 3;
            } else {
                mpVarHp = com.byazt.jz.hp.hp(jSONObject);
                int iOptInt = jSONObject.optInt("j_live_saas_param_interaction_type", -1);
                int iOptInt2 = jSONObject.optInt("j_download_adapter_mode", 0);
                int iOptInt3 = jSONObject.optInt("j_common_convert_source", 0);
                if (mpVarHp == null) {
                    kVarHp = com.byazt.lf.k.hp();
                    i2 = 4;
                } else {
                    mpVarHp.hp(true);
                    jSONObject2.putOpt("live_interaction_type", Integer.valueOf(mpVarHp.w()));
                    jSONObject2.putOpt(com.sigmob.sdk.base.n.f36450m, mpVarHp.w_());
                    if (mpVarHp.ec() == null && (hpVarFi = mpVarHp.fi()) != null && (jSONObjectL = hpVarFi.l()) != null) {
                        mpVarHp.hp(com.byazt.xci.k.hp(jSONObjectL));
                    }
                    udVar.hp(iOptInt3, mpVarHp, iOptInt, iOptInt2);
                    com.byazt.lf.k.hp().hp("commonConvert", "js", 0, jSONObject2);
                    com.byazt.yx.l.hp().j(mpVarHp);
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("code", 200);
                        hp((eb) jSONObject3);
                        return;
                    } catch (Exception e2) {
                        e2.getMessage();
                        return;
                    }
                }
            }
            kVarHp.hp("commonConvert", "js", i2, jSONObject2);
        }
        com.byazt.yx.l.hp().j(mpVarHp);
    }
}
