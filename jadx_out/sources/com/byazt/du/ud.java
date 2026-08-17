package com.byazt.du;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 591})
/* loaded from: classes2.dex */
public class ud extends com.byazt.oa.w<JSONObject, JSONObject> {
    public WeakReference<SSWebView> hp;

    public ud(SSWebView sSWebView) {
        this.hp = new WeakReference<>(sSWebView);
    }

    public static void hp(com.byazt.oa.xs xsVar, SSWebView sSWebView) {
        xsVar.hp("preventTouchEvent", (com.byazt.oa.w<?, ?>) new ud(sSWebView));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean zOptBoolean = jSONObject.optBoolean("isPrevent", false);
            SSWebView sSWebView = this.hp.get();
            if (sSWebView != null) {
                sSWebView.setIsPreventTouchEvent(zOptBoolean);
                jSONObject2.put(cb.f11292o, true);
                return jSONObject2;
            }
            jSONObject2.put(cb.f11292o, false);
            return jSONObject2;
        } catch (Throwable unused) {
            jSONObject2.put(cb.f11292o, false);
            return jSONObject2;
        }
    }
}
