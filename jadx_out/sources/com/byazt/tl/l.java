package com.byazt.tl;

import android.util.SparseArray;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT, 34})
/* loaded from: classes3.dex */
public class l {
    public final Function<SparseArray<Object>, Object> hp;

    public l(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public View hp(com.byazt.oj.hp hpVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, hpVar);
        sparseArray.put(-99999987, 266013);
        sparseArray.put(-99999985, View.class);
        return (View) this.hp.apply(sparseArray);
    }
}
