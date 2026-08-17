package com.bytedance.sdk.openadsdk.mediation.init;

import androidx.annotation.Nullable;
import com.byazt.kj.hp;
import java.util.LinkedList;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 128, 1858})
/* loaded from: classes3.dex */
public abstract class MediationPrivacyConfig implements IMediationPrivacyConfig {
    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
    @Nullable
    public List<String> getCustomAppList() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
    @Nullable
    public List<String> getCustomDevImeis() {
        return new LinkedList();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
    public boolean isCanUseOaid() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
    public boolean isLimitPersonalAds() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationPrivacyConfig
    public boolean isProgrammaticRecommend() {
        return true;
    }
}
