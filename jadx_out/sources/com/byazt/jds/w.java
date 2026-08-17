package com.byazt.jds;

import android.os.Looper;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1095, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w {
    public volatile j hp;
    public final com.byazt.fxy.l jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.jw.w f21467l;

    public w(com.byazt.jw.w wVar, com.byazt.fxy.l lVar) {
        this.f21467l = wVar;
        this.jx = lVar;
    }

    public void a() {
        com.byazt.jw.j jVarJ = this.f21467l.j();
        if (jVarJ != null && jVarJ.v() != null) {
            jx();
            return;
        }
        j jVarW = w();
        jVarW.hp(this);
        jVarW.start();
    }

    public Looper eb() {
        com.byazt.jw.j jVarJ = this.f21467l.j();
        return (jVarJ == null || jVarJ.v() == null) ? w().getLooper() : jVarJ.v();
    }

    public void jx() {
    }

    public j w() {
        if (this.hp == null) {
            synchronized (this) {
                try {
                    if (this.hp == null) {
                        this.hp = new j();
                    }
                } finally {
                }
            }
        }
        return this.hp;
    }
}
