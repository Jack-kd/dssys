package com.byazt.xci;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 791})
/* loaded from: classes3.dex */
public class qh {

    /* renamed from: a, reason: collision with root package name */
    public String f27439a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27440j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f27441l;

    /* renamed from: w, reason: collision with root package name */
    public String f27442w;

    public qh(String str, String str2, String str3, String str4) {
        this.hp = str3;
        this.f27441l = str2;
        this.f27440j = str;
        this.jx = str4;
    }

    public void hp(String str, String str2, String str3, String str4) {
        this.hp = str3;
        this.f27441l = str2;
        this.f27440j = str;
        this.jx = str4;
    }

    public JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tk", this.hp).put("vd", this.f27440j).put("cr", this.jx).put(NotificationCompat.CATEGORY_ERROR, this.f27441l);
            if (!TextUtils.isEmpty(this.jx) && this.jx.equals("2")) {
                if (!TextUtils.isEmpty(this.f27442w)) {
                    jSONObject.put("i6", this.f27442w);
                }
                if (!TextUtils.isEmpty(this.f27439a)) {
                    jSONObject.put("prov", this.f27439a);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String l() {
        return this.hp;
    }

    public String toString() throws JSONException {
        JSONObject jSONObjectJx = jx();
        return jSONObjectJx.length() > 0 ? jSONObjectJx.toString() : "";
    }

    public void l(String str) {
        this.f27439a = str;
    }

    public String hp() {
        return this.f27441l;
    }

    public void hp(String str) {
        this.f27442w = str;
    }
}
