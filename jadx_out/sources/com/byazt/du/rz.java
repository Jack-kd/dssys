package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ykc.SSWebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX})
/* loaded from: classes2.dex */
public class rz extends com.byazt.oa.w<JSONObject, JSONObject> {
    public SSWebView hp;
    public com.byazt.jz.ud jx;

    /* renamed from: l, reason: collision with root package name */
    public String f19333l;

    public rz(SSWebView sSWebView, String str, com.byazt.jz.ud udVar) {
        this.hp = sSWebView;
        this.f19333l = str;
        this.jx = udVar;
    }

    public static void hp(com.byazt.oa.xs xsVar, SSWebView sSWebView, com.byazt.jz.ud udVar) {
        xsVar.hp("closeWebview", (com.byazt.oa.w<?, ?>) new rz(sSWebView, "closeWebview", udVar));
        xsVar.hp("makeVisible", (com.byazt.oa.w<?, ?>) new rz(sSWebView, "makeVisible", udVar));
        xsVar.hp("getCurrentVisibleState", (com.byazt.oa.w<?, ?>) new rz(sSWebView, "getCurrentVisibleState", udVar));
        xsVar.hp("changeSize", (com.byazt.oa.w<?, ?>) new rz(sSWebView, "changeSize", udVar));
        xsVar.hp("changeFrame", (com.byazt.oa.w<?, ?>) new rz(sSWebView, "changeFrame", udVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2;
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        jSONObject2 = new JSONObject();
        String str = this.f19333l;
        str.getClass();
        switch (str) {
            case "changeSize":
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("size");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 2) {
                    int iOptInt4 = jSONArrayOptJSONArray.optInt(0);
                    int iOptInt5 = jSONArrayOptJSONArray.optInt(1);
                    com.byazt.jz.ud udVar = this.jx;
                    if (udVar != null) {
                        udVar.hp(iOptInt4, iOptInt5);
                    }
                }
                return jSONObject2;
            case "changeFrame":
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(SQLiteMTAHelper.TABLE_POINT);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("size");
                int iOptInt6 = Integer.MAX_VALUE;
                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() != 2) {
                    iOptInt = Integer.MAX_VALUE;
                    iOptInt2 = Integer.MAX_VALUE;
                } else {
                    iOptInt2 = jSONArrayOptJSONArray2.optInt(0);
                    iOptInt = jSONArrayOptJSONArray2.optInt(1);
                }
                if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() != 2) {
                    iOptInt3 = Integer.MAX_VALUE;
                } else {
                    iOptInt6 = jSONArrayOptJSONArray3.optInt(0);
                    iOptInt3 = jSONArrayOptJSONArray3.optInt(1);
                }
                com.byazt.jz.ud udVar2 = this.jx;
                if (udVar2 != null) {
                    udVar2.hp(iOptInt2, iOptInt, iOptInt6, iOptInt3);
                    return jSONObject2;
                }
                return jSONObject2;
            case "getCurrentVisibleState":
                jSONObject2.put("visibleState", !com.byazt.jz.dy.l(this.hp, 50, 5) ? 1 : 0);
                return jSONObject2;
            case "closeWebview":
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.du.rz.1
                    @Override // java.lang.Runnable
                    public void run() {
                        rz.this.hp.setVisibility(8);
                    }
                });
                com.byazt.ar.q qVarJx = this.jx.jx();
                if (qVarJx != null) {
                    qVarJx.l();
                    jSONObject2.put(cb.f11292o, true);
                    return jSONObject2;
                }
                jSONObject2.put(cb.f11292o, false);
                return jSONObject2;
            case "makeVisible":
                if (this.hp != null) {
                    jSONObject2.put(cb.f11292o, true);
                    com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.du.rz.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (rz.this.hp != null) {
                                rz.this.hp.setVisibility(0);
                            }
                            com.byazt.ar.q qVarJx2 = rz.this.jx.jx();
                            if (qVarJx2 != null) {
                                qVarJx2.L_();
                            }
                        }
                    });
                    return jSONObject2;
                }
                jSONObject2.put(cb.f11292o, false);
                return jSONObject2;
            default:
                return jSONObject2;
        }
    }
}
