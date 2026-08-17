package com.byazt.usq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1249, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static w hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26432l = false;
    public long jx = 180000;

    /* renamed from: j, reason: collision with root package name */
    public long f26431j = 43200000;

    /* renamed from: w, reason: collision with root package name */
    public long f26433w = 3;

    /* renamed from: a, reason: collision with root package name */
    public long f26430a = 30;
    public long eb = 15;

    private w() {
    }

    public static w hp() {
        if (hp == null) {
            synchronized (w.class) {
                try {
                    if (hp == null) {
                        hp = new w();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public long a() {
        return this.f26430a;
    }

    public long eb() {
        return this.eb;
    }

    public long j() {
        return this.jx;
    }

    public long jx() {
        return this.f26431j;
    }

    public boolean l() {
        return this.f26432l;
    }

    public long w() {
        return this.f26433w;
    }

    public synchronized void hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            if (!jSONObject.toString().isEmpty()) {
                this.f26432l = jSONObject.optBoolean("sensorenable", false);
                this.jx = jSONObject.optLong("interval", 180000L);
                this.f26431j = jSONObject.optLong("expireduation", 43200000L);
                this.f26433w = jSONObject.optLong("showinterval", 3L);
                this.f26430a = jSONObject.optLong("azimuth_unit", 30L);
                this.eb = jSONObject.optLong("angle_unit", 15L);
            }
        }
    }
}
