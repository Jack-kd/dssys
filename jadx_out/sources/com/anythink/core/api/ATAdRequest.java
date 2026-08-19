package com.anythink.core.api;

import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.d.s;
import com.anythink.core.mg.api.MgPreLoadAdRequest;

/* loaded from: classes.dex */
public class ATAdRequest {
    private ATAdxBidFloorInfo adxBidFloorInfo;
    private int channelSource;
    private MgPreLoadAdRequest preLoadInfo;

    public static class Builder {
        private ATAdxBidFloorInfo adxBidFloorInfo;
        private int channelSource = s.b().F();
        private MgPreLoadAdRequest preLoadInfo;

        public ATAdRequest build() {
            ATAdRequest aTAdRequest = new ATAdRequest();
            aTAdRequest.channelSource = this.channelSource;
            aTAdRequest.adxBidFloorInfo = this.adxBidFloorInfo;
            aTAdRequest.preLoadInfo = this.preLoadInfo;
            return aTAdRequest;
        }

        public Builder setATAdxBidFloorInfo(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
            this.adxBidFloorInfo = aTAdxBidFloorInfo;
            return this;
        }

        public Builder setChannelSource(int i2) {
            this.channelSource = i2;
            return this;
        }

        public Builder setPreLoadInfo(MgPreLoadAdRequest mgPreLoadAdRequest) {
            this.preLoadInfo = mgPreLoadAdRequest;
            return this;
        }
    }

    public ATAdxBidFloorInfo getATAdxBidFloorInfo() {
        return this.adxBidFloorInfo;
    }

    public int getChannelSource() {
        return this.channelSource;
    }

    public MgPreLoadAdRequest getPreLoadInfo() {
        return this.preLoadInfo;
    }

    public void setAdxBidFloorInfo(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        this.adxBidFloorInfo = aTAdxBidFloorInfo;
    }

    private ATAdRequest() {
    }
}
