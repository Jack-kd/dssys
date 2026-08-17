package com.fl.saas.adx.api;

import com.fl.saas.adx.util.DeviceUtil;

/* loaded from: classes3.dex */
public class AdParams {
    private final float expressHeight;
    private final float expressWidth;
    private final boolean isMixNative;
    private final String key;
    private final String linkId;

    public static class Builder {
        private float expressHeight;
        private float expressWidth;
        private final String key;
        private String linkId = "";
        private boolean isMixNative = true;

        public Builder(String str) {
            this.key = str;
        }

        public AdParams build() {
            return new AdParams(this);
        }

        public Builder setExpressHeight(float f2) {
            this.expressHeight = f2;
            return this;
        }

        public Builder setExpressWidth(float f2) {
            this.expressWidth = f2;
            return this;
        }

        public Builder setIsMixNative(boolean z2) {
            this.isMixNative = z2;
            return this;
        }

        public Builder setLinkId(String str) {
            this.linkId = str;
            return this;
        }
    }

    private AdParams(Builder builder) {
        this.key = builder.key;
        this.linkId = builder.linkId;
        this.expressWidth = builder.expressWidth <= 0.0f ? DeviceUtil.px2dip(DeviceUtil.getMobileWidth()) : builder.expressWidth;
        this.expressHeight = builder.expressHeight;
        this.isMixNative = builder.isMixNative;
    }

    public float getExpressHeight() {
        float f2 = this.expressHeight;
        return f2 <= 0.0f ? this.expressWidth / 2.0f : f2;
    }

    public float getExpressWidth() {
        return this.expressWidth;
    }

    public String getKey() {
        return this.key;
    }

    public String getLinkId() {
        return this.linkId;
    }

    public boolean isMixNative() {
        return this.isMixNative;
    }
}
