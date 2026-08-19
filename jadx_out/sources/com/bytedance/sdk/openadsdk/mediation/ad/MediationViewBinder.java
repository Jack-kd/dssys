package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.kj.hp;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1517})
/* loaded from: classes3.dex */
public class MediationViewBinder implements IMediationViewBinder {
    public final int callToActionId;
    public final int decriptionTextId;
    public final Map<String, Integer> extras;
    public final int groupImage1Id;
    public final int groupImage2Id;
    public final int groupImage3Id;
    public final int iconImageId;
    public final int layoutId;
    public final int logoLayoutId;
    public final int mainImageId;
    public final int mediaViewId;
    public final int shakeViewContainerId;
    public final int sourceId;
    public final int titleId;

    @hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1656})
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        protected int f29000a;

        /* renamed from: e, reason: collision with root package name */
        protected int f29001e;
        protected int eb;
        protected int gu;
        protected int hp;

        /* renamed from: j, reason: collision with root package name */
        protected int f29002j;
        protected int jl;
        protected int jx;

        /* renamed from: k, reason: collision with root package name */
        protected Map<String, Integer> f29003k;

        /* renamed from: l, reason: collision with root package name */
        protected int f29004l;

        /* renamed from: q, reason: collision with root package name */
        protected int f29005q;

        /* renamed from: s, reason: collision with root package name */
        protected int f29006s;

        /* renamed from: w, reason: collision with root package name */
        protected int f29007w;
        protected int zy;

        public Builder(int i2) {
            this.f29003k = Collections.EMPTY_MAP;
            this.hp = i2;
            this.f29003k = new HashMap();
        }

        public Builder addExtra(String str, int i2) {
            this.f29003k.put(str, Integer.valueOf(i2));
            return this;
        }

        public Builder addExtras(Map<String, Integer> map) {
            this.f29003k = new HashMap(map);
            return this;
        }

        public MediationViewBinder build() {
            return new MediationViewBinder(this);
        }

        public Builder callToActionId(int i2) {
            this.f29002j = i2;
            return this;
        }

        public Builder descriptionTextId(int i2) {
            this.jx = i2;
            return this;
        }

        public Builder groupImage1Id(int i2) {
            this.f29001e = i2;
            return this;
        }

        public Builder groupImage2Id(int i2) {
            this.gu = i2;
            return this;
        }

        public Builder groupImage3Id(int i2) {
            this.jl = i2;
            return this;
        }

        public Builder iconImageId(int i2) {
            this.f29007w = i2;
            return this;
        }

        public Builder logoLayoutId(int i2) {
            this.f29005q = i2;
            return this;
        }

        public Builder mainImageId(int i2) {
            this.f29000a = i2;
            return this;
        }

        public Builder mediaViewIdId(int i2) {
            this.eb = i2;
            return this;
        }

        public Builder shakeViewContainerId(int i2) {
            this.zy = i2;
            return this;
        }

        public Builder sourceId(int i2) {
            this.f29006s = i2;
            return this;
        }

        public Builder titleId(int i2) {
            this.f29004l = i2;
            return this;
        }
    }

    public MediationViewBinder(Builder builder) {
        this.layoutId = builder.hp;
        this.titleId = builder.f29004l;
        this.decriptionTextId = builder.jx;
        this.callToActionId = builder.f29002j;
        this.iconImageId = builder.f29007w;
        this.mainImageId = builder.f29000a;
        this.mediaViewId = builder.eb;
        this.sourceId = builder.f29006s;
        this.extras = builder.f29003k;
        this.groupImage1Id = builder.f29001e;
        this.groupImage2Id = builder.gu;
        this.groupImage3Id = builder.jl;
        this.logoLayoutId = builder.f29005q;
        this.shakeViewContainerId = builder.zy;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getCallToActionId() {
        return this.callToActionId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getDecriptionTextId() {
        return this.decriptionTextId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public Map<String, Integer> getExtras() {
        return this.extras;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage1Id() {
        return this.groupImage1Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage2Id() {
        return this.groupImage2Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getGroupImage3Id() {
        return this.groupImage3Id;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getIconImageId() {
        return this.iconImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getLogoLayoutId() {
        return this.logoLayoutId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMainImageId() {
        return this.mainImageId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getMediaViewId() {
        return this.mediaViewId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getShakeViewContainerId() {
        return this.shakeViewContainerId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getSourceId() {
        return this.sourceId;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.IMediationViewBinder
    public int getTitleId() {
        return this.titleId;
    }
}
