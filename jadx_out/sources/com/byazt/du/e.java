package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 45})
/* loaded from: classes2.dex */
public class e extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jz.ud f19316l;

    public e(com.byazt.xci.mp mpVar, com.byazt.jz.ud udVar, String str) {
        this.hp = mpVar;
        this.f19316l = udVar;
        this.jx = str;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar, com.byazt.jz.ud udVar) {
        xsVar.hp("getEstimatedInteractionAreaInfo", (com.byazt.oa.w<?, ?>) new e(mpVar, udVar, "getEstimatedInteractionAreaInfo"));
        xsVar.hp("interactionAreaInfo", (com.byazt.oa.w<?, ?>) new e(mpVar, udVar, "interactionAreaInfo"));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        com.byazt.xci.u uVarHp;
        com.byazt.xci.u uVarHp2;
        JSONObject jSONObject2;
        com.byazt.ar.q qVarJx = this.f19316l.jx();
        String str = this.jx;
        str.getClass();
        if (str.equals("interactionAreaInfo")) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("areas");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || (jSONObject2 = jSONArrayOptJSONArray.getJSONObject(0)) == null) {
                uVarHp = null;
                uVarHp2 = null;
            } else {
                uVarHp = com.byazt.xci.u.hp(jSONObject2);
                if (qVarJx != null) {
                    qVarJx.setEasyPlayInteractionAreaInfo(uVarHp);
                    uVarHp2 = com.byazt.xci.u.hp(qVarJx.getEstimatedInteractionAreaInfo());
                } else {
                    uVarHp2 = null;
                }
            }
            if (uVarHp2 == null) {
                if (qVarJx != null) {
                    qVarJx.hp(com.byazt.xci.u.l(null, uVarHp), 1.0d);
                    this.f19316l.l("canMakeVisiable", (JSONObject) null);
                }
            } else if (uVarHp == null) {
                qVarJx.hp(null, -1.0d);
                qVarJx.jx();
                this.f19316l.l("expressWebviewRecycle", (JSONObject) null);
            } else {
                double dHp = com.byazt.xci.u.hp(uVarHp2, uVarHp);
                double d2 = uVarHp.jx * uVarHp.f27553j;
                double d3 = uVarHp2.jx * uVarHp2.f27553j;
                if (d3 == 0.0d) {
                    qVarJx.hp(com.byazt.xci.u.l(uVarHp2, uVarHp), 1.0d);
                    this.f19316l.l("canMakeVisiable", (JSONObject) null);
                    return null;
                }
                if (d2 == 0.0d) {
                    qVarJx.hp(null, -1.0d);
                    qVarJx.jx();
                    this.f19316l.l("expressWebviewRecycle", (JSONObject) null);
                    return null;
                }
                if (dHp / d2 >= 0.8d) {
                    qVarJx.hp(com.byazt.xci.u.l(uVarHp2, uVarHp), (dHp - d3) / d3);
                    this.f19316l.l("canMakeVisiable", (JSONObject) null);
                    return null;
                }
                qVarJx.hp(null, -1.0d);
                qVarJx.jx();
                this.f19316l.l("expressWebviewRecycle", (JSONObject) null);
                return null;
            }
        } else if (str.equals("getEstimatedInteractionAreaInfo") && qVarJx != null) {
            return qVarJx.getEstimatedInteractionAreaInfo();
        }
        return null;
    }
}
