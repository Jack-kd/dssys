package com.byazt.ju;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_200, 302})
/* loaded from: classes.dex */
public class zy extends com.byazt.qt.jl {
    public String hp;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f21692l;

    public zy(String str) {
        this.hp = str;
    }

    @Override // com.byazt.qt.jl
    public double getDuration() {
        return 0.0d;
    }

    @Override // com.byazt.qt.jl
    public int getHeight() {
        return this.jx;
    }

    @Override // com.byazt.qt.jl
    public String getImageUrl() {
        return !TextUtils.isEmpty(this.hp) ? this.hp : "";
    }

    @Override // com.byazt.qt.jl
    public int getWidth() {
        return this.f21692l;
    }

    @Override // com.byazt.qt.jl
    public boolean isValid() {
        return !TextUtils.isEmpty(this.hp);
    }

    public zy(String str, int i2, int i3) {
        this.hp = str;
        this.f21692l = i2;
        this.jx = i3;
    }
}
