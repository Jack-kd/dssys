package com.byazt.th;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_EANABLE_DROPPING_DTS_ROLLBACK, 34})
/* loaded from: classes3.dex */
public class l implements Function<SparseArray<Object>, Object> {
    public final TTFeedAd.VideoRewardListener hp;

    public l(TTFeedAd.VideoRewardListener videoRewardListener) {
        this.hp = videoRewardListener;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        ValueSet valueSetL = jx.hp(sparseArray).l();
        if (valueSetL.intValue(-99999987) == 163101) {
            this.hp.onFeedRewardCountDown(valueSetL.intValue(0));
        }
        return null;
    }
}
