package com.bytedance.sdk.openadsdk.mediation.init;

import com.byazt.kj.hp;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONObject;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 128, 1818})
/* loaded from: classes3.dex */
public class MediationConfig implements IMediationConfig {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f29050a;

    /* renamed from: e, reason: collision with root package name */
    private boolean f29051e;
    private boolean eb;
    private String gu;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f29052j;
    private MediationConfigUserInfoForSegment jx;

    /* renamed from: l, reason: collision with root package name */
    private boolean f29053l;

    /* renamed from: q, reason: collision with root package name */
    private boolean f29054q;

    /* renamed from: s, reason: collision with root package name */
    private String f29055s;

    /* renamed from: w, reason: collision with root package name */
    private boolean f29056w;

    @hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 128, 1987})
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        private JSONObject f29057a;

        /* renamed from: e, reason: collision with root package name */
        private boolean f29058e;
        private boolean eb;
        private String gu;
        private String hp;

        /* renamed from: j, reason: collision with root package name */
        private Map<String, Object> f29059j;
        private MediationConfigUserInfoForSegment jx;

        /* renamed from: l, reason: collision with root package name */
        private boolean f29060l;

        /* renamed from: q, reason: collision with root package name */
        private boolean f29061q;

        /* renamed from: s, reason: collision with root package name */
        private String f29062s;

        /* renamed from: w, reason: collision with root package name */
        private boolean f29063w;

        public MediationConfig build() {
            MediationConfig mediationConfig = new MediationConfig();
            mediationConfig.hp = this.hp;
            mediationConfig.f29053l = this.f29060l;
            mediationConfig.jx = this.jx;
            mediationConfig.f29052j = this.f29059j;
            mediationConfig.f29056w = this.f29063w;
            mediationConfig.f29050a = this.f29057a;
            mediationConfig.eb = this.eb;
            mediationConfig.f29055s = this.f29062s;
            mediationConfig.f29054q = this.f29061q;
            mediationConfig.f29051e = this.f29058e;
            mediationConfig.gu = this.gu;
            return mediationConfig;
        }

        public Builder setCustomLocalConfig(JSONObject jSONObject) {
            this.f29057a = jSONObject;
            return this;
        }

        public Builder setHttps(boolean z2) {
            this.f29063w = z2;
            return this;
        }

        @Deprecated
        public Builder setLocalExtra(Map<String, Object> map) {
            this.f29059j = map;
            return this;
        }

        public Builder setMediationConfigUserInfoForSegment(MediationConfigUserInfoForSegment mediationConfigUserInfoForSegment) {
            this.jx = mediationConfigUserInfoForSegment;
            return this;
        }

        public Builder setOpenAdnTest(boolean z2) {
            this.f29060l = z2;
            return this;
        }

        public Builder setOpensdkVer(String str) {
            this.f29062s = str;
            return this;
        }

        public Builder setPublisherDid(String str) {
            this.hp = str;
            return this;
        }

        public Builder setSupportH265(boolean z2) {
            this.f29061q = z2;
            return this;
        }

        public Builder setSupportSplashZoomout(boolean z2) {
            this.f29058e = z2;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.gu = str;
            return this;
        }

        public Builder setWxInstalled(boolean z2) {
            this.eb = z2;
            return this;
        }
    }

    private MediationConfig() {
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public JSONObject getCustomLocalConfig() {
        return this.f29050a;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean getHttps() {
        return this.f29056w;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public Map<String, Object> getLocalExtra() {
        return this.f29052j;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public MediationConfigUserInfoForSegment getMediationConfigUserInfoForSegment() {
        return this.jx;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getOpensdkVer() {
        return this.f29055s;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String getPublisherDid() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isOpenAdnTest() {
        return this.f29053l;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportH265() {
        return this.f29054q;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isSupportSplashZoomout() {
        return this.f29051e;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public boolean isWxInstalled() {
        return this.eb;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig
    public String wxAppId() {
        return this.gu;
    }
}
