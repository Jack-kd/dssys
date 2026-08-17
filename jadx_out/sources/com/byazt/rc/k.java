package com.byazt.rc;

import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 42})
/* loaded from: classes3.dex */
public class k {
    public final JSONObject hp;

    /* renamed from: l, reason: collision with root package name */
    public int f25150l;

    private k(JSONObject jSONObject) {
        this.hp = jSONObject;
    }

    private int u() {
        return this.hp.optInt("url_balance", 2);
    }

    public boolean a() {
        return this.hp.optInt("segment_mode", 1) == 0;
    }

    public long e() {
        long jOptInt = this.hp.optInt("connect_timeout", -1);
        if (jOptInt >= 2000) {
            return jOptInt;
        }
        return -1L;
    }

    public long eb() {
        long jOptInt = this.hp.optInt("segment_min_kb", 512) * 1024;
        if (jOptInt < 65536) {
            return 65536L;
        }
        return jOptInt;
    }

    public long gu() {
        long jOptInt = this.hp.optInt("read_timeout", -1);
        if (jOptInt >= 4000) {
            return jOptInt;
        }
        return -1L;
    }

    public void hp(int i2) {
        this.f25150l = l(i2);
    }

    public int j() {
        return this.hp.optInt("buffer_count", 512);
    }

    public int jl() {
        return this.hp.optInt("ip_strategy", 0);
    }

    public boolean jx() {
        return u() == 1;
    }

    public int k() {
        return this.hp.optInt("ratio_segment", 0);
    }

    public boolean l() {
        return u() > 0;
    }

    public long q() {
        long jOptInt = this.hp.optInt("segment_max_kb", 0) * 1048576;
        if (jOptInt < eb()) {
            return -1L;
        }
        return jOptInt;
    }

    public long s() {
        long jOptInt = this.hp.optInt("segment_min_init_mb", 10) * 1048576;
        if (jOptInt < 5242880) {
            return 5242880L;
        }
        return jOptInt;
    }

    public float v() {
        return Math.min(Math.max(0.0f, (float) this.hp.optDouble("poor_speed_ratio", 0.0d)), 1.0f);
    }

    public int w() {
        return this.hp.optInt("buffer_size", 8192);
    }

    public float zy() {
        return (float) this.hp.optDouble("main_ratio", 0.0d);
    }

    private int l(int i2) {
        int iOptInt = this.hp.optInt("thread_count", 4);
        if (iOptInt > 16) {
            iOptInt = 16;
        }
        if (iOptInt > 0) {
            return u() == 1 ? Math.min(iOptInt, i2) : iOptInt;
        }
        if (u() > 0) {
            return i2;
        }
        return 1;
    }

    public int hp() {
        return this.f25150l;
    }

    @NonNull
    public static k hp(@NonNull JSONObject jSONObject) {
        return new k(jSONObject);
    }
}
