package com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad;

import android.util.SparseArray;
import com.byazt.kj.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE, 1559, 1696})
/* loaded from: classes3.dex */
public class MediationNativeAppInfoImpl extends com.byazt.lu.hp {
    private MediationNativeAdAppInfo hp;

    /* renamed from: l, reason: collision with root package name */
    private SparseArray<Object> f29031l = new SparseArray<>();

    public MediationNativeAppInfoImpl(MediationNativeAdAppInfo mediationNativeAdAppInfo) {
        this.hp = mediationNativeAdAppInfo;
    }

    @Override // com.byazt.lu.hp
    public <T> T applyFunction(int i2, ValueSet valueSet, Class<T> cls) {
        if (i2 == -99999986) {
            return (T) values();
        }
        return null;
    }

    @Override // com.byazt.lu.hp
    public SparseArray<Object> get() {
        SparseArray<Object> sparseArrayValues = values();
        if (sparseArrayValues != null) {
            return sparseArrayValues;
        }
        return null;
    }

    public SparseArray<Object> values() {
        MediationNativeAdAppInfo mediationNativeAdAppInfo = this.hp;
        if (mediationNativeAdAppInfo != null) {
            this.f29031l.put(8505, mediationNativeAdAppInfo.getAppName());
            this.f29031l.put(8506, this.hp.getAuthorName());
            this.f29031l.put(8507, Long.valueOf(this.hp.getPackageSizeBytes()));
            this.f29031l.put(8508, this.hp.getPermissionsUrl());
            this.f29031l.put(8509, this.hp.getPermissionsMap());
            this.f29031l.put(8510, this.hp.getPrivacyAgreement());
            this.f29031l.put(8511, this.hp.getVersionName());
            this.f29031l.put(8512, this.hp.getAppInfoExtra());
            this.f29031l.put(8551, this.hp.getFunctionDescUrl());
            this.f29031l.put(8559, this.hp.getRegUrl());
        }
        return this.f29031l;
    }
}
