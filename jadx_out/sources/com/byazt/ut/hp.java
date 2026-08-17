package com.byazt.ut;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.kw.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_REAL_TIME, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;
    public SQLiteDatabase jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.co.l f26434l;

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(Context context) {
        try {
            this.jx = new l(context).getWritableDatabase();
        } catch (Throwable th) {
            e.l(th);
        }
        this.f26434l = new com.byazt.co.l();
    }

    public synchronized void hp(com.byazt.gs.hp hpVar) {
        com.byazt.co.l lVar = this.f26434l;
        if (lVar != null) {
            lVar.insert(this.jx, hpVar);
        }
    }

    public synchronized boolean hp(String str) {
        com.byazt.co.l lVar = this.f26434l;
        if (lVar == null) {
            return false;
        }
        return lVar.hp(this.jx, str);
    }
}
