package com.byazt.tl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT, 54})
/* loaded from: classes3.dex */
public class a {
    public final Function<SparseArray<Object>, Object> hp;

    public a(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 270012);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
