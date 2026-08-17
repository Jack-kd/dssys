package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends com.byazt.p000if.jx implements l {
    public long hp;

    public w(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.jx
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.w.1
                @Override // java.lang.Runnable
                public void run() {
                    w.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.p000if.jx
    public void hp(final List<e> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(list);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.w.2
                @Override // java.lang.Runnable
                public void run() {
                    w.super.hp(list);
                }
            });
        }
    }
}
