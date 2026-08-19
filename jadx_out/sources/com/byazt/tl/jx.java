package com.byazt.tl;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT, 30})
/* loaded from: classes3.dex */
public class jx {
    public final Function<SparseArray<Object>, Object> hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public String hp() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 267001);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    public String j() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 267004);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    public String jx() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 267003);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    public String l() {
        SparseArray<Object> sparseArray = new SparseArray<>(2);
        sparseArray.put(-99999987, 267002);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }
}
