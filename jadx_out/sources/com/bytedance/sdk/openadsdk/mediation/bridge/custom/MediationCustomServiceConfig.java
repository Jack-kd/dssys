package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1717})
/* loaded from: classes3.dex */
public final class MediationCustomServiceConfig {
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private int f29017j;
    private int jx;

    /* renamed from: l, reason: collision with root package name */
    private String f29018l;

    /* renamed from: w, reason: collision with root package name */
    private String f29019w;

    public MediationCustomServiceConfig(String str, String str2, int i2, int i3, String str3) {
        this.hp = str;
        this.f29018l = str2;
        this.jx = i2;
        this.f29017j = i3;
        this.f29019w = str3;
    }

    public String getADNNetworkName() {
        return this.hp;
    }

    public String getADNNetworkSlotId() {
        return this.f29018l;
    }

    public int getAdStyleType() {
        return this.jx;
    }

    public String getCustomAdapterJson() {
        return this.f29019w;
    }

    public int getSubAdtype() {
        return this.f29017j;
    }

    public String toString() {
        return "MediationCustomServiceConfig{mADNNetworkName='" + this.hp + "', mADNNetworkSlotId='" + this.f29018l + "', mAdStyleType=" + this.jx + ", mSubAdtype=" + this.f29017j + ", mCustomAdapterJson='" + this.f29019w + "'}";
    }

    public MediationCustomServiceConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.hp = valueSet.stringValue(8003);
            this.f29018l = valueSet.stringValue(2);
            this.jx = valueSet.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
            this.f29017j = valueSet.intValue(8094);
            this.f29019w = valueSet.stringValue(8547);
        }
    }
}
