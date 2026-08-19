package com.byazt.ve;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1295, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements Function<SparseArray<Object>, Object> {
    public final TTAdInteractionListener tTAdInteractionListener;

    public w(TTAdInteractionListener tTAdInteractionListener) {
        this.tTAdInteractionListener = tTAdInteractionListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.tTAdInteractionListener == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        if (pluginValueSetL.intValue(-99999987) == 100101) {
            this.tTAdInteractionListener.onAdEvent(pluginValueSetL.intValue(0), (Map) pluginValueSetL.objectValue(1, Map.class));
        }
        return null;
    }
}
