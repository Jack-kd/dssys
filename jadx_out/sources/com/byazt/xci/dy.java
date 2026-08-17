package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER})
/* loaded from: classes3.dex */
public class dy {

    /* renamed from: a, reason: collision with root package name */
    public String f27227a;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public double f27228j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27229l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f27230w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_IGNORE_BACKGROUND_RENDERSTALL})
    public static final class hp extends com.byazt.qt.jl {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public double f27231j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f27232l;

        public hp(int i2, int i3, String str, double d2) {
            this.hp = i2;
            this.f27232l = i3;
            this.jx = str;
            this.f27231j = d2;
        }

        @Override // com.byazt.qt.jl
        public double getDuration() {
            return this.f27231j;
        }

        @Override // com.byazt.qt.jl
        public int getHeight() {
            return this.hp;
        }

        @Override // com.byazt.qt.jl
        public String getImageUrl() {
            return this.jx;
        }

        @Override // com.byazt.qt.jl
        public int getWidth() {
            return this.f27232l;
        }

        @Override // com.byazt.qt.jl
        public boolean isValid() {
            String str;
            return this.hp > 0 && this.f27232l > 0 && (str = this.jx) != null && str.length() > 0;
        }
    }

    public boolean a() {
        return this.f27230w;
    }

    public String eb() {
        return this.f27227a;
    }

    public String hp() {
        return this.hp;
    }

    public double j() {
        return this.f27228j;
    }

    public int jx() {
        return this.jx;
    }

    public int l() {
        return this.f27229l;
    }

    public boolean w() {
        return !TextUtils.isEmpty(this.hp) && this.f27229l > 0 && this.jx > 0;
    }

    public void hp(String str) {
        this.hp = str;
    }

    public void l(int i2) {
        this.jx = i2;
    }

    public void hp(int i2) {
        this.f27229l = i2;
    }

    public void l(String str) {
        this.f27227a = str;
    }

    public void hp(double d2) {
        this.f27228j = d2;
    }

    public void hp(boolean z2) {
        this.f27230w = z2;
    }

    public static com.byazt.qt.jl hp(dy dyVar) {
        if (dyVar == null || !dyVar.w()) {
            return null;
        }
        return new hp(dyVar.jx(), dyVar.l(), dyVar.hp(), dyVar.j());
    }

    public static final com.byazt.qt.jl hp(int i2, int i3, String str, double d2) {
        return new hp(i2, i3, str, d2);
    }
}
