package com.byazt.hg;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION, 34})
/* loaded from: classes2.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final TTAdInteractionListener hp;

    public l(TTAdInteractionListener tTAdInteractionListener) {
        this.hp = tTAdInteractionListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = com.byazt.xi.jx.hp(sparseArray).l();
        int iIntValue = valueSetL.intValue(-99999987);
        if (iIntValue == -2147483647) {
            return "TTAdInteractionListener";
        }
        if (iIntValue == 100101) {
            this.hp.onAdEvent(valueSetL.intValue(0), (Map) valueSetL.objectValue(1, Map.class));
        }
        return null;
    }
}
