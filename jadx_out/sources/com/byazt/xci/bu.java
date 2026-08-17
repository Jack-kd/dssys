package com.byazt.xci;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE})
/* loaded from: classes3.dex */
public class bu {
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public String f27215j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27216l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27217w;

    public bu(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.hp = jSONObject;
            this.f27216l = jSONObject.optInt("dialog_type");
            this.jx = jSONObject.optString("template_url");
            this.f27215j = jSONObject.optString("template_md5");
        }
        com.byazt.nqo.hp hpVar = new com.byazt.nqo.hp();
        hpVar.l(w());
        hpVar.jx(j());
    }

    public boolean a() {
        return this.f27217w;
    }

    public JSONObject hp() {
        return this.hp;
    }

    public String j() {
        return this.jx;
    }

    public int jx() {
        return this.f27216l;
    }

    public JSONObject l() {
        return this.hp;
    }

    public String w() {
        return this.f27215j;
    }

    public void hp(boolean z2) {
        this.f27217w = z2;
    }
}
