package com.byazt.fp;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME, 30})
/* loaded from: classes2.dex */
public class jx implements Function<SparseArray<Object>, Object> {
    public final Bridge hp;

    public jx(Bridge bridge) {
        this.hp = bridge;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        Object objCall;
        if (sparseArray == null || this.hp == null) {
            return com.byazt.xi.jx.jx.apply(sparseArray);
        }
        int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
        Class cls = (Class) sparseArray.get(-99999985);
        if (iIntValue == -99999977) {
            Bridge bridge = this.hp;
            return (!(bridge instanceof l) || (objCall = bridge.call(-99999977, com.byazt.xi.jx.hp, Object.class)) == null) ? this.hp : objCall;
        }
        if (iIntValue != -99999986) {
            return com.byazt.da.hp.hp(this.hp.call(iIntValue, com.byazt.da.hp.l(sparseArray), cls));
        }
        ValueSet valueSetValues = this.hp.values();
        if (valueSetValues == null) {
            return null;
        }
        return new hp(valueSetValues);
    }
}
