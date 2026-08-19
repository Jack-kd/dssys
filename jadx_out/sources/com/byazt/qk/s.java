package com.byazt.qk;

import com.byazt.jz.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static void hp(NativeExpressView nativeExpressView) {
        if (nativeExpressView == null) {
            return;
        }
        ud jsObject = nativeExpressView.getJsObject();
        if (jsObject != null) {
            jsObject.l("notifyAdClicked", (JSONObject) null);
        }
        com.byazt.fb.eb uGenV3Render = nativeExpressView.getUGenV3Render();
        if (uGenV3Render != null) {
            uGenV3Render.hp("notifyAdClicked", (Map<String, String>) null);
        }
    }
}
