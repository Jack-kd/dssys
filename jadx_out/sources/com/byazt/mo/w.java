package com.byazt.mo;

import android.graphics.Path;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements jx {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ha.a f23147a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f23148e;
    public final String eb;
    public final eb hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.j f23149j;
    public final com.byazt.ha.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public final Path.FillType f23150l;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.ha.l f23151q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.ha.l f23152s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ha.a f23153w;

    public w(String str, eb ebVar, Path.FillType fillType, com.byazt.ha.jx jxVar, com.byazt.ha.j jVar, com.byazt.ha.a aVar, com.byazt.ha.a aVar2, com.byazt.ha.l lVar, com.byazt.ha.l lVar2, boolean z2) {
        this.hp = ebVar;
        this.f23150l = fillType;
        this.jx = jxVar;
        this.f23149j = jVar;
        this.f23153w = aVar;
        this.f23147a = aVar2;
        this.eb = str;
        this.f23152s = lVar;
        this.f23151q = lVar2;
        this.f23148e = z2;
    }

    public com.byazt.ha.a a() {
        return this.f23153w;
    }

    public com.byazt.ha.a eb() {
        return this.f23147a;
    }

    public String hp() {
        return this.eb;
    }

    public com.byazt.ha.jx j() {
        return this.jx;
    }

    public Path.FillType jx() {
        return this.f23150l;
    }

    public eb l() {
        return this.hp;
    }

    public boolean s() {
        return this.f23148e;
    }

    public com.byazt.ha.j w() {
        return this.f23149j;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.s(sVar, aVar, jxVar, this);
    }
}
