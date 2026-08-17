package com.byazt.du;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.oa.w<JSONObject, JSONObject> {
    public String hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f19318l;

    public hp(String str, Context context) {
        this.hp = str;
        this.f19318l = context;
    }

    public static void hp(com.byazt.oa.xs xsVar, Context context) {
        xsVar.hp("closeView", (com.byazt.oa.w<?, ?>) new hp("closeView", context));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.hp;
        str.getClass();
        if (!str.equals("closeView")) {
            return jSONObject2;
        }
        Context context = this.f19318l;
        if (context != null) {
            ((Activity) context).finish();
            jSONObject2.put(cb.f11292o, true);
            return jSONObject2;
        }
        jSONObject2.put(cb.f11292o, false);
        return jSONObject2;
    }
}
