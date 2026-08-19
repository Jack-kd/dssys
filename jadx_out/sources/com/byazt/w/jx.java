package com.byazt.w;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 30})
/* loaded from: classes3.dex */
public class jx {
    public static int hp = 0;
    public static int jx = 2;

    /* renamed from: l, reason: collision with root package name */
    public static int f26858l = 1;

    /* renamed from: j, reason: collision with root package name */
    public int f26860j = hp;

    /* renamed from: w, reason: collision with root package name */
    public long f26863w = 0;

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f26859a = null;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public String f26862s = "";

    /* renamed from: q, reason: collision with root package name */
    public String f26861q = "";

    public boolean hp() {
        return this.f26860j == f26858l;
    }

    public int l() {
        return this.eb;
    }

    public jx hp(int i2) {
        this.f26860j = i2;
        return this;
    }

    public jx l(int i2) {
        this.eb = i2;
        return this;
    }
}
