package com.byazt.cm;

import android.annotation.SuppressLint;
import android.content.Context;
import com.byazt.cm.hp;
import com.byazt.jz.sz;
import com.byazt.oyr.hp;
import com.byazt.xci.r;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 725, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile w hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.oyr.hp f18899j;
    public com.byazt.vb.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f18900l;

    private w(Context context) {
        this.f18900l = context == null ? sz.getContext() : context.getApplicationContext();
        hp.C0335hp c0335hp = new hp.C0335hp();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.byazt.oyr.hp hpVarHp = c0335hp.hp(10000L, timeUnit).l(10000L, timeUnit).jx(10000L, timeUnit).hp(new hp.C0202hp()).hp(r.hp()).hp(r.l()).hp(true).hp();
        this.f18899j = hpVarHp;
        com.byazt.uhg.j jVarHp = hpVarHp.a().hp();
        if (jVarHp != null) {
            jVarHp.hp(32);
            jVarHp.l(com.byazt.lca.jx.hp().w());
        }
    }

    public static w hp() {
        if (hp == null) {
            synchronized (w.class) {
                try {
                    if (hp == null) {
                        com.byazt.nml.hp.hp().hp(com.byazt.lca.jx.hp().a() != 2);
                        hp = new w(sz.getContext());
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void j() {
        if (this.jx == null) {
            this.jx = new com.byazt.vb.hp();
        }
    }

    public com.byazt.vb.hp jx() {
        j();
        return this.jx;
    }

    public com.byazt.oyr.hp l() {
        return this.f18899j;
    }
}
