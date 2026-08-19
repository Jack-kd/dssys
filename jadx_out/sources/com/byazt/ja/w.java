package com.byazt.ja;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1767, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements Function<SparseArray<Object>, Object> {
    private final IMediationViewBinder hp;

    public w(IMediationViewBinder iMediationViewBinder) {
        this.hp = iMediationViewBinder;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.hp == null) {
            return null;
        }
        switch (com.byazt.xi.jx.hp(sparseArray).l().intValue(-99999987)) {
            case 271021:
                return Integer.class.cast(Integer.valueOf(this.hp.getLayoutId()));
            case 271022:
                return Integer.class.cast(Integer.valueOf(this.hp.getTitleId()));
            case 271023:
                return Integer.class.cast(Integer.valueOf(this.hp.getDecriptionTextId()));
            case 271024:
                return Integer.class.cast(Integer.valueOf(this.hp.getCallToActionId()));
            case 271025:
                return Integer.class.cast(Integer.valueOf(this.hp.getIconImageId()));
            case 271026:
                return Integer.class.cast(Integer.valueOf(this.hp.getMainImageId()));
            case 271027:
                return Integer.class.cast(Integer.valueOf(this.hp.getMediaViewId()));
            case 271028:
                return Integer.class.cast(Integer.valueOf(this.hp.getSourceId()));
            case 271029:
                return Integer.class.cast(Integer.valueOf(this.hp.getGroupImage1Id()));
            case 271030:
                return Integer.class.cast(Integer.valueOf(this.hp.getGroupImage2Id()));
            case 271031:
                return Integer.class.cast(Integer.valueOf(this.hp.getGroupImage3Id()));
            case 271032:
                return Integer.class.cast(Integer.valueOf(this.hp.getLogoLayoutId()));
            case 271033:
                return Integer.class.cast(Integer.valueOf(this.hp.getShakeViewContainerId()));
            case 271034:
                return this.hp.getExtras();
            default:
                return com.byazt.xi.jx.jx.apply(sparseArray);
        }
    }
}
