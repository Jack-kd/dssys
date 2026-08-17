package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.kj.hp;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1675})
/* loaded from: classes3.dex */
public class MediationAdSlot implements IMediationAdSlot {

    /* renamed from: a, reason: collision with root package name */
    private boolean f28971a;

    /* renamed from: e, reason: collision with root package name */
    private String f28972e;
    private boolean eb;
    private boolean gu;
    private boolean hp;

    /* renamed from: j, reason: collision with root package name */
    private int f28973j;
    private MediationNativeToBannerListener jl;
    private String jx;

    /* renamed from: k, reason: collision with root package name */
    private float f28974k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f28975l;

    /* renamed from: q, reason: collision with root package name */
    private boolean f28976q;

    /* renamed from: s, reason: collision with root package name */
    private Map<String, Object> f28977s;

    /* renamed from: u, reason: collision with root package name */
    private MediationSplashRequestInfo f28978u;

    /* renamed from: v, reason: collision with root package name */
    private String f28979v;

    /* renamed from: w, reason: collision with root package name */
    private float f28980w;
    private float zy;

    @hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1205})
    public static class Builder {

        /* renamed from: e, reason: collision with root package name */
        private int f28982e;
        private boolean eb;
        private boolean gu;
        private boolean hp;

        /* renamed from: j, reason: collision with root package name */
        private float f28983j;
        private MediationNativeToBannerListener jl;
        private boolean jx;

        /* renamed from: l, reason: collision with root package name */
        private boolean f28985l;

        /* renamed from: s, reason: collision with root package name */
        private String f28987s;

        /* renamed from: u, reason: collision with root package name */
        private MediationSplashRequestInfo f28988u;

        /* renamed from: v, reason: collision with root package name */
        private String f28989v;

        /* renamed from: w, reason: collision with root package name */
        private boolean f28990w;

        /* renamed from: a, reason: collision with root package name */
        private Map<String, Object> f28981a = new HashMap();

        /* renamed from: q, reason: collision with root package name */
        private String f28986q = "";
        private float zy = 80.0f;

        /* renamed from: k, reason: collision with root package name */
        private float f28984k = 80.0f;

        public MediationAdSlot build() {
            MediationAdSlot mediationAdSlot = new MediationAdSlot();
            mediationAdSlot.hp = this.hp;
            mediationAdSlot.f28975l = this.f28985l;
            mediationAdSlot.eb = this.jx;
            mediationAdSlot.f28980w = this.f28983j;
            mediationAdSlot.f28971a = this.f28990w;
            mediationAdSlot.f28977s = this.f28981a;
            mediationAdSlot.f28976q = this.eb;
            mediationAdSlot.f28972e = this.f28987s;
            mediationAdSlot.jx = this.f28986q;
            mediationAdSlot.f28973j = this.f28982e;
            mediationAdSlot.gu = this.gu;
            mediationAdSlot.jl = this.jl;
            mediationAdSlot.zy = this.zy;
            mediationAdSlot.f28974k = this.f28984k;
            mediationAdSlot.f28979v = this.f28989v;
            mediationAdSlot.f28978u = this.f28988u;
            return mediationAdSlot;
        }

        public Builder setAllowShowCloseBtn(boolean z2) {
            this.gu = z2;
            return this;
        }

        public Builder setBidNotify(boolean z2) {
            this.eb = z2;
            return this;
        }

        public Builder setExtraObject(String str, Object obj) {
            Map<String, Object> map = this.f28981a;
            if (map != null) {
                map.put(str, obj);
            }
            return this;
        }

        public Builder setMediationNativeToBannerListener(MediationNativeToBannerListener mediationNativeToBannerListener) {
            this.jl = mediationNativeToBannerListener;
            return this;
        }

        public Builder setMediationSplashRequestInfo(MediationSplashRequestInfo mediationSplashRequestInfo) {
            this.f28988u = mediationSplashRequestInfo;
            return this;
        }

        public Builder setMuted(boolean z2) {
            this.jx = z2;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i2) {
            this.f28982e = i2;
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            this.f28986q = str;
            return this;
        }

        public Builder setScenarioId(String str) {
            this.f28987s = str;
            return this;
        }

        public Builder setShakeViewSize(float f2, float f3) {
            this.zy = f2;
            this.f28984k = f3;
            return this;
        }

        public Builder setSplashPreLoad(boolean z2) {
            this.f28985l = z2;
            return this;
        }

        public Builder setSplashShakeButton(boolean z2) {
            this.hp = z2;
            return this;
        }

        public Builder setUseSurfaceView(boolean z2) {
            this.f28990w = z2;
            return this;
        }

        public Builder setVolume(float f2) {
            this.f28983j = f2;
            return this;
        }

        public Builder setWxAppId(String str) {
            this.f28989v = str;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public Map<String, Object> getExtraObject() {
        return this.f28977s;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public int getRewardAmount() {
        return this.f28973j;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getRewardName() {
        return this.jx;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getScenarioId() {
        return this.f28972e;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewHeight() {
        return this.f28974k;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getShakeViewWidth() {
        return this.zy;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public float getVolume() {
        return this.f28980w;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public String getWxAppId() {
        return this.f28979v;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isAllowShowCloseBtn() {
        return this.gu;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isBidNotify() {
        return this.f28976q;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isMuted() {
        return this.eb;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashPreLoad() {
        return this.f28975l;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isSplashShakeButton() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public boolean isUseSurfaceView() {
        return this.f28971a;
    }

    private MediationAdSlot() {
        this.jx = "";
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationNativeToBannerListener getMediationNativeToBannerListener() {
        return this.jl;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationAdSlot
    public MediationSplashRequestInfo getMediationSplashRequestInfo() {
        return this.f28978u;
    }
}
