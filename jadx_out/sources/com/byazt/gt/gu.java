package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public class gu {

    /* renamed from: a, reason: collision with root package name */
    public final String f20601a;
    public final String eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f20602j;
    public final String[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final String[] f20603l;

    /* renamed from: w, reason: collision with root package name */
    public final String f20604w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 1132})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f20605a;
        public String eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20606j;
        public String[] jx;

        /* renamed from: l, reason: collision with root package name */
        public String[] f20607l;

        /* renamed from: w, reason: collision with root package name */
        public String f20608w;

        public hp hp(String str) {
            this.hp = str;
            return this;
        }

        public hp j(String str) {
            this.eb = str;
            return this;
        }

        public hp jx(String str) {
            this.f20608w = str;
            return this;
        }

        public hp l(String[] strArr) {
            this.jx = strArr;
            return this;
        }

        public hp hp(String[] strArr) {
            this.f20607l = strArr;
            return this;
        }

        public hp l(String str) {
            this.f20606j = str;
            return this;
        }

        public gu hp() {
            return new gu(this);
        }
    }

    public String hp() {
        return this.hp;
    }

    public String j() {
        return this.f20604w;
    }

    public String jx() {
        return this.f20602j;
    }

    public String[] l() {
        return this.f20603l;
    }

    private gu(hp hpVar) {
        this.hp = hpVar.hp;
        this.f20603l = hpVar.f20607l;
        this.jx = hpVar.jx;
        this.f20602j = hpVar.f20606j;
        this.f20604w = hpVar.f20608w;
        this.f20601a = hpVar.f20605a;
        this.eb = hpVar.eb;
    }

    public static gu hp(int i2) {
        return jl.hp(i2);
    }
}
