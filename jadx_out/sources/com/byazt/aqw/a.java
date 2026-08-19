package com.byazt.aqw;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 54})
/* loaded from: classes2.dex */
public class a {
    public final Function<SparseArray<Object>, Object> hp;

    public a(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public void hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 270032);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }

    public void hp(jx jxVar) {
        SparseArray<Object> sparseArray = new SparseArray<>(3);
        sparseArray.put(0, jxVar);
        sparseArray.put(-99999987, 270033);
        sparseArray.put(-99999985, Void.class);
        this.hp.apply(sparseArray);
    }
}
