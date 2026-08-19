package com.byazt.bs;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 28})
/* loaded from: classes2.dex */
public class hp extends eb {
    public hp(Context context, com.byazt.yc.hp hpVar, com.byazt.jw.w wVar) {
        super(context, hpVar, wVar);
    }

    @Override // com.byazt.bs.eb, com.byazt.bs.l
    public String hp() {
        return ((eb) this).f18661l.l().w();
    }

    @Override // com.byazt.bs.eb
    public byte jx() {
        return (byte) 3;
    }

    @Override // com.byazt.bs.eb
    public byte l() {
        return (byte) 1;
    }

    public static String jx(String str) {
        return "ALTER TABLE " + str + " ADD COLUMN encrypt INTEGER default 0";
    }

    public static String l(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.byazt.bs.eb, com.byazt.cmm.hp
    public boolean hp(com.byazt.jw.l lVar) {
        return com.byazt.giz.hp.eb(lVar);
    }
}
