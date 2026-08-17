package com.byazt.nw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 38})
/* loaded from: classes3.dex */
public class j {
    public List<hp> hp;

    /* renamed from: j, reason: collision with root package name */
    public String f23838j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23839l;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public int hp;

        /* renamed from: l, reason: collision with root package name */
        public JSONObject f23840l;
    }

    public static j hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        j jVar = new j();
        String strOptString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(strOptString);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    hp hpVar = new hp();
                    hpVar.hp = jSONObjectOptJSONObject.optInt("id");
                    hpVar.f23840l = new JSONObject(jSONObjectOptJSONObject.optString("componentLayout"));
                    arrayList.add(hpVar);
                }
            }
        } catch (JSONException unused) {
        }
        jVar.hp = arrayList;
        jVar.f23839l = jSONObject.optString("diff_data");
        jVar.jx = jSONObject.optString("style_diff");
        jVar.f23838j = jSONObject.optString("tag_diff");
        return jVar;
    }
}
