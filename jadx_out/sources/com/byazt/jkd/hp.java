package com.byazt.jkd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 28})
/* loaded from: classes.dex */
public class hp {
    public String hp;

    /* renamed from: k, reason: collision with root package name */
    public List<String> f21563k;

    /* renamed from: n, reason: collision with root package name */
    public int f21565n;
    public int ns;

    /* renamed from: l, reason: collision with root package name */
    public int f21564l = 1;
    public int jx = 2;

    /* renamed from: j, reason: collision with root package name */
    public int f21562j = 1;

    /* renamed from: w, reason: collision with root package name */
    public int f21570w = 0;

    /* renamed from: a, reason: collision with root package name */
    public int f21560a = 1;
    public int eb = 3;

    /* renamed from: s, reason: collision with root package name */
    public int f21567s = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f21566q = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f21561e = 0;
    public int gu = TTAdConstant.STYLE_SIZE_RADIO_3_2;
    public int jl = 2000;
    public boolean zy = false;

    /* renamed from: v, reason: collision with root package name */
    public int f21569v = 2;

    /* renamed from: u, reason: collision with root package name */
    public int f21568u = 100;
    public int xs = 0;
    public boolean vv = false;
    public boolean ec = false;
    public long sz = 0;

    private hp() {
    }

    public static hp hp() {
        return new hp();
    }

    public hp a(int i2) {
        this.f21567s = i2;
        return this;
    }

    public hp e(int i2) {
        this.f21562j = i2;
        return this;
    }

    public hp eb(int i2) {
        this.f21566q = i2;
        return this;
    }

    public hp gu(int i2) {
        this.f21570w = i2;
        return this;
    }

    public hp j(int i2) {
        this.f21561e = i2;
        return this;
    }

    public hp jl(int i2) {
        this.f21560a = i2;
        return this;
    }

    public int jx() {
        return this.f21565n;
    }

    public hp k(int i2) {
        this.f21568u = i2;
        return this;
    }

    public int l() {
        return this.ns;
    }

    public hp q(int i2) {
        this.jx = i2;
        return this;
    }

    public hp s(int i2) {
        this.f21564l = i2;
        return this;
    }

    public hp v(int i2) {
        this.xs = i2;
        return this;
    }

    public hp w(int i2) {
        this.gu = i2;
        return this;
    }

    public hp zy(int i2) {
        this.f21569v = i2;
        return this;
    }

    public hp hp(int i2) {
        this.ns = i2;
        return this;
    }

    public hp jx(int i2) {
        this.jl = i2;
        return this;
    }

    public hp l(int i2) {
        this.f21565n = i2;
        return this;
    }

    public hp hp(boolean z2) {
        this.vv = z2;
        return this;
    }

    public hp jx(boolean z2) {
        this.zy = z2;
        return this;
    }

    public hp l(boolean z2) {
        this.ec = z2;
        return this;
    }

    public hp hp(long j2) {
        this.sz = j2;
        return this;
    }

    public hp hp(String str) {
        this.hp = str;
        return this;
    }
}
