package com.byazt.jz;

import android.os.Bundle;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes.dex */
public class o implements Function {
    public static volatile o hp;

    private o() {
    }

    public static o instance() {
        if (hp == null) {
            synchronized (o.class) {
                try {
                    if (hp == null) {
                        hp = new o();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        if (!(obj instanceof SparseArray)) {
            return null;
        }
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(-99999987)).intValue() != 1) {
            return null;
        }
        Bundle bundle = (Bundle) sparseArray.get(0);
        com.byazt.pg.s sVar = (com.byazt.pg.s) com.byazt.ym.j.getService("boost");
        if (sVar != null) {
            return sVar.getInitialInstance(bundle);
        }
        return null;
    }
}
