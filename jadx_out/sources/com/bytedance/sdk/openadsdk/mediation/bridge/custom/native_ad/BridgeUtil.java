package com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.ad.MApiIMediationViewBinderReversal;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationViewBinder;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1559, 1560})
/* loaded from: classes3.dex */
public class BridgeUtil {
    public static MediationViewBinder buildViewBinder(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return null;
        }
        MApiIMediationViewBinderReversal mApiIMediationViewBinderReversal = new MApiIMediationViewBinderReversal(function);
        return new MediationViewBinder.Builder(mApiIMediationViewBinderReversal.getLayoutId()).callToActionId(mApiIMediationViewBinderReversal.getCallToActionId()).addExtras(mApiIMediationViewBinderReversal.getExtras()).descriptionTextId(mApiIMediationViewBinderReversal.getDecriptionTextId()).groupImage1Id(mApiIMediationViewBinderReversal.getGroupImage1Id()).groupImage1Id(mApiIMediationViewBinderReversal.getGroupImage2Id()).groupImage1Id(mApiIMediationViewBinderReversal.getGroupImage3Id()).iconImageId(mApiIMediationViewBinderReversal.getIconImageId()).mainImageId(mApiIMediationViewBinderReversal.getMainImageId()).mediaViewIdId(mApiIMediationViewBinderReversal.getMediaViewId()).logoLayoutId(mApiIMediationViewBinderReversal.getLogoLayoutId()).shakeViewContainerId(mApiIMediationViewBinderReversal.getShakeViewContainerId()).titleId(mApiIMediationViewBinderReversal.getTitleId()).sourceId(mApiIMediationViewBinderReversal.getSourceId()).build();
    }
}
