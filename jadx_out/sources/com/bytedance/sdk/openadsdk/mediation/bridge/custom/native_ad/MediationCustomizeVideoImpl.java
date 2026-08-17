package com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1559, 1702})
/* loaded from: classes3.dex */
public class MediationCustomizeVideoImpl extends com.byazt.lu.hp implements IMediationCustomizeVideo {
    private TTFeedAd.CustomizeVideo hp;

    public MediationCustomizeVideoImpl(TTFeedAd.CustomizeVideo customizeVideo) {
        this.hp = customizeVideo;
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == 8165) {
            reportVideoStart();
            return null;
        }
        if (i2 == 8168) {
            reportVideoFinish();
            return null;
        }
        if (i2 == 8166) {
            reportVideoPause(valueSet.longValue(8074));
            return null;
        }
        if (i2 == 8167) {
            reportVideoContinue(valueSet.longValue(8074));
            return null;
        }
        if (i2 == 8169) {
            reportVideoBreak(valueSet.longValue(8074));
            return null;
        }
        if (i2 == 8170) {
            reportVideoAutoStart();
            return null;
        }
        if (i2 == 8171) {
            reportVideoStartError(valueSet.intValue(8014), valueSet.intValue(8075));
            return null;
        }
        if (i2 != 8172) {
            return null;
        }
        reportVideoError(valueSet.longValue(8074), valueSet.intValue(8014), valueSet.intValue(8075));
        return null;
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public String getVideoUrl() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoAutoStart() {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoAutoStart();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoBreak(long j2) {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoBreak(j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoContinue(long j2) {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoContinue(j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoError(long j2, int i2, int i3) {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoError(j2, i2, i3);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoFinish() {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoFinish();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoPause(long j2) {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoPause(j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoStart() {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoStart();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.bridge.IMediationCustomizeVideo
    public void reportVideoStartError(int i2, int i3) {
        TTFeedAd.CustomizeVideo customizeVideo = this.hp;
        if (customizeVideo != null) {
            customizeVideo.reportVideoStartError(i2, i3);
        }
    }
}
