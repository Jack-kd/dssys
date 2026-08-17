package com.byazt.du;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 166})
/* loaded from: classes2.dex */
public class ns extends com.byazt.oa.w<JSONObject, JSONObject> {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.xci.mp f19325j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jz.ud f19326l;

    public ns(String str, com.byazt.jz.ud udVar, Context context, com.byazt.xci.mp mpVar) {
        this.hp = str;
        this.f19326l = udVar;
        this.jx = context;
        this.f19325j = mpVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.jz.ud udVar, Context context, com.byazt.xci.mp mpVar) {
        xsVar.hp("supportHaptic", (com.byazt.oa.w<?, ?>) new ns("supportHaptic", udVar, context, mpVar));
        xsVar.hp("playHaptic", (com.byazt.oa.w<?, ?>) new ns("playHaptic", udVar, context, mpVar));
        xsVar.hp("stopHaptic", (com.byazt.oa.w<?, ?>) new ns("stopHaptic", udVar, context, mpVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.byazt.oa.w
    public JSONObject hp(JSONObject jSONObject, com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        String str = this.hp;
        str.getClass();
        switch (str) {
            case "stopHaptic":
                Context context = this.jx;
                if (context != null) {
                    com.byazt.bi.jx.l(context);
                }
                return jSONObject2;
            case "supportHaptic":
                Context context2 = this.jx;
                jSONObject2.put("supportHaptic", context2 != null ? com.byazt.bi.jx.hp(context2) : false);
                return jSONObject2;
            case "playHaptic":
                com.byazt.bi.jx.hp(jSONObject, this.jx, this.f19325j);
                return jSONObject2;
            default:
                return jSONObject2;
        }
    }
}
