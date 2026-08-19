package com.byazt.tl;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends com.byazt.pt.jx {
    public final Function<SparseArray<Object>, Object> hp;

    public w(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp(View view, String str, int i2) {
        SparseArray<Object> sparseArray = new SparseArray<>(5);
        sparseArray.put(0, view);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(-99999987, 142102);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 142104);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 142103);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
