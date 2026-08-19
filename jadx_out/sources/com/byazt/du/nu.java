package com.byazt.du;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 546})
/* loaded from: classes2.dex */
public class nu extends com.byazt.oa.w<JSONObject, JSONObject> {
    public SSWebView hp;

    /* renamed from: l, reason: collision with root package name */
    public String f19327l;

    public nu(SSWebView sSWebView, String str) {
        this.hp = sSWebView;
        this.f19327l = str;
    }

    public JSONObject jx() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.byazt.jz.s.u().l(com.byazt.jz.sz.getContext()) && this.hp != null) {
                jSONObject.put("code", 0);
                jSONObject.put("codeMsg", cb.f11292o);
                this.hp.O_();
                return jSONObject;
            }
            jSONObject.put("code", -1);
            jSONObject.put("codeMsg", "unavailable");
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static void hp(com.byazt.oa.xs xsVar, SSWebView sSWebView, String str) {
        xsVar.hp("close_twist_observer", (com.byazt.oa.w<?, ?>) new nu(sSWebView, str));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        return jx();
    }
}
