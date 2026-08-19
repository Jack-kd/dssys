package com.byazt.jkd;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 19})
/* loaded from: classes.dex */
public class jl {

    /* renamed from: a, reason: collision with root package name */
    public int f21575a;
    public int eb;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21576j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21577l;

    /* renamed from: q, reason: collision with root package name */
    public int f21578q;

    /* renamed from: s, reason: collision with root package name */
    public int f21579s;

    /* renamed from: w, reason: collision with root package name */
    public int f21580w;

    private boolean hp(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    private int j(int i2) {
        switch (i2) {
            case 1:
                return this.hp;
            case 2:
            case 6:
            default:
                return 0;
            case 3:
            case 4:
                return this.f21577l;
            case 5:
                return this.f21576j;
            case 7:
                return this.jx;
            case 8:
            case 10:
                return this.f21575a;
            case 9:
                return this.f21580w;
        }
    }

    public boolean jx(int i2) {
        return hp(j(i2), 4);
    }

    public boolean l(int i2) {
        return hp(j(i2), 1);
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("banner", this.hp);
            jSONObject.put(MediationConstant.RIT_TYPE_SPLASH, this.f21577l);
            jSONObject.put("rewarded", this.jx);
            jSONObject.put("feed", this.f21576j);
            jSONObject.put(MediationConstant.RIT_TYPE_DRAW, this.f21580w);
            jSONObject.put("full_screen", this.f21575a);
            jSONObject.put("slide_move_max_num", this.eb);
            jSONObject.put("motion_max_num", this.f21579s);
            jSONObject.put("sensor_interval", this.f21578q);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return super.toString();
        }
    }

    public static jl hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        jl jlVar = new jl();
        try {
            JSONObject jSONObject = new JSONObject(str);
            jlVar.hp = jSONObject.optInt("banner");
            jlVar.f21577l = jSONObject.optInt(MediationConstant.RIT_TYPE_SPLASH);
            jlVar.jx = jSONObject.optInt("rewarded");
            jlVar.f21576j = jSONObject.optInt("feed");
            jlVar.f21580w = jSONObject.optInt(MediationConstant.RIT_TYPE_DRAW);
            jlVar.f21575a = jSONObject.optInt("full_screen");
            jlVar.eb = jSONObject.optInt("slide_move_max_num", 5);
            jlVar.f21579s = jSONObject.optInt("motion_max_num", 300);
            jlVar.f21578q = jSONObject.optInt("sensor_interval", 3);
        } catch (Throwable unused) {
        }
        return jlVar;
    }

    public int jx() {
        int i2 = this.f21578q;
        if (i2 < 0 || i2 > 3) {
            return 3;
        }
        return i2;
    }

    public int l() {
        return this.f21579s;
    }

    public boolean hp(int i2) {
        return hp(j(i2), 2);
    }

    public int hp() {
        return this.eb;
    }
}
