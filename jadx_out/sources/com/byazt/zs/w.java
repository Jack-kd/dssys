package com.byazt.zs;

import android.content.Context;
import com.byazt.gg.e;
import com.byazt.gg.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPEN_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public static volatile w hp;

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.oi.j f28599a;
    public com.byazt.ks.hp eb;

    /* renamed from: j, reason: collision with root package name */
    public hp f28600j;
    public com.byazt.ql.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public List<com.byazt.ql.l> f28601l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.ss.hp f28602w;

    private w() {
    }

    private void a() {
        ArrayList arrayList = new ArrayList();
        this.f28601l = arrayList;
        com.byazt.ql.jx jxVar = this.jx;
        if (jxVar != null) {
            arrayList.addAll(jxVar.hp());
        }
        com.byazt.ql.j.hp(this.f28601l);
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

    public com.byazt.oi.j j() {
        return this.f28599a;
    }

    public com.byazt.ss.hp jx() {
        return this.f28602w;
    }

    public hp l() {
        return this.f28600j;
    }

    public com.byazt.ks.hp w() {
        return this.eb;
    }

    public void hp(Context context, com.byazt.ql.jx jxVar, hp hpVar) {
        this.jx = jxVar;
        this.f28600j = hpVar;
        a();
    }

    public void hp(com.byazt.ss.hp hpVar) {
        this.f28602w = hpVar;
    }

    public void hp(s sVar) {
        ArrayList arrayList = new ArrayList(new com.byazt.gg.hp().hp());
        if (sVar != null) {
            arrayList.addAll(sVar.hp());
        }
        e.hp(arrayList);
    }

    public void hp(com.byazt.gg.jx jxVar) {
        ArrayList arrayList = new ArrayList(new com.byazt.gg.w().hp());
        if (jxVar != null) {
            arrayList.addAll(jxVar.hp());
        }
        com.byazt.gg.j.hp(arrayList);
    }

    public void hp(com.byazt.oi.j jVar) {
        this.f28599a = jVar;
    }

    public void hp(com.byazt.ks.hp hpVar) {
        this.eb = hpVar;
    }
}
