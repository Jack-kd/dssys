package com.byazt.du;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 670})
/* loaded from: classes2.dex */
public class d extends com.byazt.oa.w<JSONObject, JSONObject> {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.xci.mp f19313l;

    public d(Context context, com.byazt.xci.mp mpVar) {
        this.hp = context;
        this.f19313l = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, Context context, com.byazt.xci.mp mpVar) {
        xsVar.hp("openNewCommonWebPage", (com.byazt.oa.w<?, ?>) new d(context, mpVar));
    }

    @Override // com.byazt.oa.w
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        try {
            String strOptString = jSONObject.optString("web_url");
            String strOptString2 = jSONObject.optString("web_title");
            if (TextUtils.isEmpty(strOptString)) {
                return null;
            }
            if (TextUtils.isEmpty(strOptString2)) {
                strOptString2 = "";
            }
            TTDelegateActivity.j(this.hp, strOptString, strOptString2);
            return null;
        } catch (Throwable th) {
            com.byazt.ymw.u.l("OpenNewWebPageMethod", "method:" + th.getMessage());
            return null;
        }
    }
}
