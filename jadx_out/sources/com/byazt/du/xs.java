package com.byazt.du;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes2.dex */
public class xs extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;

    public xs(com.byazt.xci.mp mpVar) {
        this.hp = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar) {
        xsVar.hp("getLiveSaasAuthStatus", (com.byazt.oa.w<?, ?>) new xs(mpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        com.byazt.xci.as asVarHp;
        com.byazt.xci.mp mpVar;
        JSONObject jSONObject2 = new JSONObject();
        com.byazt.xci.xs xsVar = null;
        if (jSONObject != null) {
            try {
                asVarHp = com.byazt.xci.as.hp(jSONObject.optJSONObject("live_info"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(MeishuOpenDeepLinkActivity.KEY_DEEP_LINK);
                if (jSONObjectOptJSONObject != null) {
                    xsVar = new com.byazt.xci.xs(jSONObjectOptJSONObject);
                }
            } catch (Throwable th) {
                com.byazt.ymw.u.l("glsas", "method:" + th.getMessage());
                return jSONObject2;
            }
        } else {
            asVarHp = null;
        }
        if (xsVar == null && (mpVar = this.hp) != null) {
            xsVar = mpVar.k();
        }
        if (asVarHp == null) {
            asVarHp = this.hp.gu();
        }
        jSONObject2.put("has_live_silent_auth", asVarHp != null && asVarHp.jx());
        jSONObject2.put("has_install_douyin", com.byazt.zls.hp.hp(xsVar));
        jSONObject2.put("has_live_authed", com.byazt.yx.l.hp().w() == 2);
        boolean z2 = asVarHp != null && asVarHp.j();
        if (z2) {
            z2 = com.byazt.yx.l.hp().jx() == 2;
        }
        jSONObject2.put("has_playable_auth_switch", z2);
        JSONObject jSONObject3 = new JSONObject();
        if (asVarHp != null) {
            jSONObject3.put("aweme_agreements", asVarHp.w());
            jSONObject3.put("aweme_privacy", asVarHp.a());
        }
        jSONObject2.put("aweme_auth_protocol", jSONObject3);
        return jSONObject2;
    }
}
