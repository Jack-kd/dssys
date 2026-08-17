package com.anythink.core.api;

import com.anythink.core.common.g.c;

/* loaded from: classes.dex */
public class ATCustomAdapterConfig {
    private long adCacheTime;
    private int lossNoticePosition;
    private boolean realTimeBidSwitch;

    public static class Builder {
        private boolean realTimeBidSwitch = false;
        private long adCacheTime = c.f3507a;
        private int lossNoticePosition = -1;

        public Builder adCacheTime(long j2) {
            this.adCacheTime = j2;
            return this;
        }

        public ATCustomAdapterConfig build() {
            ATCustomAdapterConfig aTCustomAdapterConfig = new ATCustomAdapterConfig();
            aTCustomAdapterConfig.realTimeBidSwitch = this.realTimeBidSwitch;
            aTCustomAdapterConfig.adCacheTime = this.adCacheTime;
            aTCustomAdapterConfig.lossNoticePosition = this.lossNoticePosition;
            return aTCustomAdapterConfig;
        }

        public Builder lossNoticePosition(int i2) {
            this.lossNoticePosition = i2;
            return this;
        }

        public Builder realTimeBidSwitch(boolean z2) {
            this.realTimeBidSwitch = z2;
            return this;
        }
    }

    public long getAdCacheTime() {
        return this.adCacheTime;
    }

    public int getLossNoticePostion() {
        return this.lossNoticePosition;
    }

    public boolean isRealTimeBidSwitch() {
        return this.realTimeBidSwitch;
    }

    private ATCustomAdapterConfig() {
    }
}
