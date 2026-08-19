package com.byazt.fp;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements EventListener {
    public Function<SparseArray<Object>, Object> hp;

    public w(Function<SparseArray<Object>, Object> function) {
        this.hp = function;
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i2, Result result) {
        if (this.hp == null) {
            return null;
        }
        Object objApply = this.hp.apply(com.byazt.wi.j.hp().hp(i2).hp(-99999979, result != null ? com.byazt.wi.w.hp().hp(result.code()).hp(result.isSuccess()).hp(result.message()).hp(new hp(result.values())).l() : null).hp(SparseArray.class).l());
        if (objApply instanceof SparseArray) {
            return com.byazt.da.hp.l((SparseArray<Object>) objApply);
        }
        return null;
    }
}
