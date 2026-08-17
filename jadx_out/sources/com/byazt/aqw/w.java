package com.byazt.aqw;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public Function<SparseArray<Object>, Object> hp;

    public w(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? com.byazt.xi.hp.f27665l : function;
    }

    public int hp() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 271044);
        sparseArray.put(-99999985, Integer.TYPE);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    public List<String> l() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 271046);
        sparseArray.put(-99999985, List.class);
        return (List) this.hp.apply(sparseArray);
    }

    public hp hp(String str) {
        Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(271045).hp(SparseArray.class).l());
        if (objApply instanceof SparseArray) {
            return new hp((SparseArray) objApply, str);
        }
        return null;
    }
}
