package com.byazt.fp;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME, 38})
/* loaded from: classes2.dex */
public class j implements Function<SparseArray<Object>, Object> {
    public EventListener hp;

    public j(EventListener eventListener) {
        this.hp = eventListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null || this.hp == null) {
            return null;
        }
        return this.hp.onEvent(((Integer) sparseArray.get(-99999987)).intValue(), com.byazt.da.hp.hp((SparseArray<Object>) sparseArray.get(-99999979)));
    }
}
