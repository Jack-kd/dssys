package com.byazt.lf;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.jz.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 736, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s implements com.byazt.jw.a {
    public static final s hp = new s();

    /* renamed from: l, reason: collision with root package name */
    public volatile SQLiteDatabase f22596l;

    @Override // com.byazt.jw.a
    public String a() {
        return null;
    }

    @Override // com.byazt.jw.a
    public SQLiteDatabase hp(Context context) {
        if (this.f22596l == null) {
            synchronized (s.class) {
                try {
                    if (this.f22596l == null) {
                        com.byazt.pd.j jVarHp = com.byazt.pd.jx.hp(sz.getContext()).hp();
                        jVarHp.hp();
                        this.f22596l = jVarHp.l();
                    }
                } finally {
                }
            }
        }
        return this.f22596l;
    }

    @Override // com.byazt.jw.a
    public String j() {
        return "logstats";
    }

    @Override // com.byazt.jw.a
    public String jx() {
        return null;
    }

    @Override // com.byazt.jw.a
    public String l() {
        return "adevent";
    }

    @Override // com.byazt.jw.a
    public String w() {
        return "logstatsbatch";
    }

    @Override // com.byazt.jw.a
    public String hp() {
        return "loghighpriority";
    }
}
