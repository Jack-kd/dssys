package com.byazt.vu;

import com.byazt.xci.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 874, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {

    /* renamed from: j, reason: collision with root package name */
    public static int f26709j = 1;

    /* renamed from: w, reason: collision with root package name */
    public static int f26710w = 2;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.jt.l f26711a;
    public f eb;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.ocx.w f26712q;

    /* renamed from: s, reason: collision with root package name */
    public String f26713s;

    public w(com.byazt.jt.l lVar, f fVar, com.byazt.ocx.w wVar) {
        this.f26711a = lVar;
        this.eb = fVar;
        if (lVar != null) {
            this.f26713s = lVar.j();
        }
        this.f26712q = wVar;
    }

    public String a() {
        return this.f26713s;
    }

    public com.byazt.ocx.w eb() {
        return this.f26712q;
    }

    public com.byazt.jt.l j() {
        return this.f26711a;
    }

    public f w() {
        return this.eb;
    }
}
