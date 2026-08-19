package com.byazt.du;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD, 19})
/* loaded from: classes2.dex */
public class jl extends com.byazt.oa.w<JSONObject, JSONObject> {
    public com.byazt.xci.mp hp;

    /* renamed from: l, reason: collision with root package name */
    public List<JSONObject> f19321l;

    public jl(com.byazt.xci.mp mpVar, List<JSONObject> list) {
        this.hp = mpVar;
        this.f19321l = list;
    }

    public static void hp(com.byazt.oa.xs xsVar, com.byazt.xci.mp mpVar, List<JSONObject> list) {
        xsVar.hp("getAdsData", (com.byazt.oa.w<?, ?>) new jl(mpVar, list));
    }

    @Override // com.byazt.oa.w
    @Nullable
    public JSONObject hp(@NonNull JSONObject jSONObject, @NonNull com.byazt.oa.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        int iOptInt = jSONObject != null ? jSONObject.optInt("ads_num", 3) : -1;
        if (iOptInt < 0) {
            iOptInt = 3;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("creatives", new JSONArray().put(this.hp.ij()));
        jSONObject2.put("firstRes", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        List<JSONObject> list = this.f19321l;
        if (list != null && list.size() > 0) {
            if (iOptInt > this.f19321l.size()) {
                iOptInt = this.f19321l.size();
            }
            int iMin = Math.min(iOptInt, 3);
            for (int i2 = 0; i2 < iMin; i2++) {
                jSONArray.put(i2, this.f19321l.get(i2));
            }
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("creatives", jSONArray);
        jSONObject2.put("secondRes", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("data", jSONObject2);
        return jSONObject5;
    }
}
