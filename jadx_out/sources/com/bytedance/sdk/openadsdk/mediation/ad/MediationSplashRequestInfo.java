package com.bytedance.sdk.openadsdk.mediation.ad;

import androidx.annotation.Nullable;
import com.byazt.kj.hp;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 739})
/* loaded from: classes3.dex */
public abstract class MediationSplashRequestInfo implements IMediationSplashRequestInfo {
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f28998j;
    private String jx;

    /* renamed from: l, reason: collision with root package name */
    private String f28999l;

    public MediationSplashRequestInfo(String str, String str2, String str3, String str4) {
        this.hp = str;
        this.f28999l = str2;
        this.jx = str3;
        this.f28998j = str4;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAdnName() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAdnSlotId() {
        return this.f28999l;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAppId() {
        return this.jx;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationSplashRequestInfo
    @Nullable
    public String getAppkey() {
        return this.f28998j;
    }
}
