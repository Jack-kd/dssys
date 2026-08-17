package com.byazt.ni;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f23587j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23588l = -1;

    /* renamed from: w, reason: collision with root package name */
    public String f23589w;

    public String hp() {
        return l().toString();
    }

    public JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        hp(jSONObject);
        return jSONObject;
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ah_plan_type", this.hp);
            jSONObject.put("error_code", String.valueOf(this.f23588l));
            jSONObject.put("error_msg", this.jx);
            jSONObject.put("real_device_plan", this.f23587j);
            jSONObject.put("device_plans", this.f23589w);
        } catch (Throwable unused) {
        }
    }

    public static hp hp(String str) {
        String strOptString;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        hp hpVar = new hp();
        try {
            JSONObject jSONObject = new JSONObject(str);
            hpVar.f23589w = jSONObject.optString("device_plans", null);
            hpVar.f23587j = jSONObject.optString("real_device_plan", null);
            hpVar.jx = jSONObject.optString("error_msg", null);
            hpVar.hp = jSONObject.optString("ah_plan_type", null);
            strOptString = jSONObject.optString("error_code");
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strOptString)) {
            hpVar.f23588l = -1;
            return hpVar;
        }
        hpVar.f23588l = Integer.parseInt(strOptString);
        return hpVar;
    }
}
