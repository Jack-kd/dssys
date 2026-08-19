package com.byazt.mu;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_SDK_DNS_IP, 28})
/* loaded from: classes3.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(com.byazt.qt.l lVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, lVar);
        sparseArray.put(-99999987, 111101);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l(com.byazt.qt.l lVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, lVar);
        sparseArray.put(-99999987, 111102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(com.byazt.qt.l lVar, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, lVar);
        sparseArray.put(1, Integer.valueOf(i2));
        sparseArray.put(-99999987, 111103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
