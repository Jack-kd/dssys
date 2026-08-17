package com.byazt.du;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 693})
/* loaded from: classes2.dex */
public class as extends com.byazt.oa.w<JSONObject, JSONObject> {
    public final com.byazt.jz.ud hp;

    public as(com.byazt.jz.ud udVar) {
        this.hp = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar) {
        xsVar.hp("sendLog", (com.byazt.oa.w<?, ?>) new as(udVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        int i2;
        long j2;
        com.byazt.cey.w wVar;
        JSONObject jSONObject2 = new JSONObject();
        try {
        } catch (Throwable th) {
            th = th;
            i2 = 1;
        }
        if (jSONObject != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extJson");
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString(PointParamKey.CATEGORY);
                String strOptString2 = jSONObjectOptJSONObject.optString("tag");
                String strOptString3 = jSONObjectOptJSONObject.optString("label");
                try {
                } catch (Throwable th2) {
                    th = th2;
                    i2 = 1;
                    jSONObject2.put("code", i2);
                    jSONObject2.put("msg", "exception: " + th.getMessage());
                    return jSONObject2;
                }
                if (!this.hp.a(strOptString3)) {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "is not reportclickother");
                    return jSONObject2;
                }
                com.byazt.xci.mp mpVarS = this.hp.s();
                if (com.byazt.xci.pu.l(mpVarS) && TextUtils.equals(strOptString3, "track")) {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "track is not send");
                    return jSONObject2;
                }
                long j3 = 0;
                try {
                    j2 = Long.parseLong(jSONObjectOptJSONObject.optString(f.a.f3244d));
                } catch (Exception unused) {
                    j2 = 0;
                }
                if (j2 == 0 && mpVarS != null) {
                    try {
                        j2 = Long.parseLong(mpVarS.j());
                    } catch (Exception unused2) {
                    }
                }
                try {
                    j3 = Long.parseLong(jSONObjectOptJSONObject.optString("ext_value"));
                } catch (Exception unused3) {
                }
                JSONObject jSONObject3 = new JSONObject();
                String strOptString4 = jSONObjectOptJSONObject.optString("extra");
                if (!TextUtils.isEmpty(strOptString4)) {
                    try {
                        jSONObject3 = new JSONObject(strOptString4);
                    } catch (Exception unused4) {
                    }
                }
                this.hp.hp(strOptString3, jSONObject3);
                if ("click".equals(strOptString3)) {
                    jSONObject3 = this.hp.zy(jSONObject3);
                    WeakReference<com.byazt.cey.w> weakReferenceE = this.hp.e();
                    if (weakReferenceE != null && (wVar = weakReferenceE.get()) != null) {
                        wVar.l();
                    }
                }
                String strHp = this.hp.hp(strOptString2, strOptString3);
                String strOptString5 = jSONObject3.optString("log_extra");
                if (mpVarS != null && strOptString3.contains("sanfang") && TextUtils.isEmpty(strOptString5)) {
                    jSONObject3.putOpt("log_extra", mpVarS.w_());
                }
                com.byazt.jdb.j.hp(strOptString, strHp, strOptString3, j2, j3, jSONObject3, this.hp.ky());
                jSONObject2.put("code", 0);
                return jSONObject2;
            }
            jSONObject2.put("code", 1);
            jSONObject2.put("msg", "extJson is null");
            return jSONObject2;
        }
        jSONObject2.put("code", 1);
        jSONObject2.put("msg", "params is null");
        return jSONObject2;
    }
}
