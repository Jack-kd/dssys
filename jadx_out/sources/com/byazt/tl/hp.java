package com.byazt.tl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT, 28})
/* loaded from: classes3.dex */
public class hp {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(int i2, String str) {
        SparseArray<Object> sparseArray = new SparseArray<>(4);
        sparseArray.put(0, Integer.valueOf(i2));
        sparseArray.put(1, str);
        sparseArray.put(-99999987, 268013);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 268015);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 268014);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
