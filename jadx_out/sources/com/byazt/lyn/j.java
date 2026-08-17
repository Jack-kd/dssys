package com.byazt.lyn;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 38})
/* loaded from: classes3.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public boolean f22833a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f22834j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f22835l;

    /* renamed from: w, reason: collision with root package name */
    public int f22836w;

    public j(String str, String str2, String str3, String str4, int i2) {
        this.hp = str;
        this.jx = str3;
        this.f22836w = i2;
        this.f22835l = str2;
        this.f22833a = !TextUtils.isEmpty(str2);
        this.f22834j = str4;
    }

    public String a() {
        return this.f22834j;
    }

    public int eb() {
        return this.f22836w;
    }

    public boolean hp() {
        return this.f22833a;
    }

    public String j() {
        if (TextUtils.isEmpty(this.f22835l)) {
            return this.hp;
        }
        return this.hp + "_" + this.f22835l;
    }

    public String jx() {
        return this.f22835l;
    }

    public String l() {
        return this.hp;
    }

    public boolean s() {
        return this.f22836w == 1;
    }

    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.hp + "', showRulesVersion='" + this.jx + "', timingMode=" + this.f22836w + '}';
    }

    public String w() {
        return this.jx;
    }
}
