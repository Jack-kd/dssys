package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends com.byazt.p000if.a implements l {
    public long hp;

    public s(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.a
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.s.1
                @Override // java.lang.Runnable
                public void run() {
                    s.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.p000if.a
    public void hp(final List<k> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(list);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.s.2
                @Override // java.lang.Runnable
                public void run() {
                    s.super.hp(list);
                }
            });
        }
    }
}
