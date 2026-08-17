package com.byazt.bc;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.live.base.api.callback.Callback;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS, 28})
/* loaded from: classes2.dex */
public class hp implements Callback<Object> {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bytedance.android.live.base.api.callback.Callback
    public void invoke(Object obj) {
        if (this.hp != null) {
            this.hp.apply(com.byazt.xi.jx.hp().hp(0, obj).hp(-99999987, 1).l().sparseArray());
        }
    }
}
