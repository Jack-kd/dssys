package com.bytedance.sdk.openadsdk.mediation.custom;

import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1717})
/* loaded from: classes3.dex */
public final class MediationCustomServiceConfig {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, Object> f29046a = new HashMap();
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private int f29047j;
    private int jx;

    /* renamed from: l, reason: collision with root package name */
    private String f29048l;

    /* renamed from: w, reason: collision with root package name */
    private String f29049w;

    public MediationCustomServiceConfig(String str, String str2, int i2, int i3, String str3) {
        this.hp = str;
        this.f29048l = str2;
        this.jx = i2;
        this.f29047j = i3;
        this.f29049w = str3;
    }

    public String getADNNetworkName() {
        return this.hp;
    }

    public String getADNNetworkSlotId() {
        return this.f29048l;
    }

    public int getAdStyleType() {
        return this.jx;
    }

    public String getCustomAdapterJson() {
        return this.f29049w;
    }

    public Map<String, Object> getExtraData() {
        return this.f29046a;
    }

    public int getSubAdtype() {
        return this.f29047j;
    }

    public String toString() {
        return "MediationCustomServiceConfig{mADNNetworkName='" + this.hp + "', mADNNetworkSlotId='" + this.f29048l + "', mAdStyleType=" + this.jx + ", mSubAdtype=" + this.f29047j + ", mCustomAdapterJson='" + this.f29049w + "'}";
    }

    public MediationCustomServiceConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.hp = valueSet.stringValue(8003);
            this.f29048l = valueSet.stringValue(2);
            this.jx = valueSet.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
            this.f29047j = valueSet.intValue(8094);
            this.f29049w = valueSet.stringValue(8547);
            Map<? extends String, ? extends Object> map = (Map) valueSet.objectValue(8075, Map.class);
            if (map == null || map.size() <= 0) {
                return;
            }
            this.f29046a.putAll(map);
        }
    }
}
