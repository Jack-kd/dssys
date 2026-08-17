package com.anythink.core.mg.api;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class MgPreLoadAdRequest {
    private int abId;
    private int abItemId;
    private int cpEcpmReceiveTime;
    private int cpEcpmSwitch;
    private long cpEcpmTimeout;
    private MgComparedResult mgComparedResult;
    private JSONObject mpc;
    private String placementId;
    private MgPreLoadCallbackRegister preLoadCallbackRegister;
    private String psId;
    public String requestId;
    private int segId;

    public static class Builder {
        private final MgPreLoadAdRequest preLoadInfo = new MgPreLoadAdRequest();

        public MgPreLoadAdRequest build() {
            return this.preLoadInfo;
        }

        public Builder setAbId(int i2) {
            this.preLoadInfo.abId = i2;
            return this;
        }

        public Builder setAbItemId(int i2) {
            this.preLoadInfo.abItemId = i2;
            return this;
        }

        public Builder setCpCallbackRegister(MgPreLoadCallbackRegister mgPreLoadCallbackRegister) {
            this.preLoadInfo.preLoadCallbackRegister = mgPreLoadCallbackRegister;
            return this;
        }

        public Builder setCpEcpmSwitch(int i2) {
            this.preLoadInfo.cpEcpmSwitch = i2;
            return this;
        }

        public Builder setCpEcpmTimeout(long j2) {
            this.preLoadInfo.cpEcpmTimeout = j2;
            return this;
        }

        public Builder setMPC(JSONObject jSONObject) {
            this.preLoadInfo.mpc = jSONObject;
            return this;
        }

        public Builder setPlacementId(String str) {
            this.preLoadInfo.placementId = str;
            return this;
        }

        public Builder setPsId(String str) {
            this.preLoadInfo.psId = str;
            return this;
        }

        public Builder setRequestId(String str) {
            this.preLoadInfo.requestId = str;
            return this;
        }

        public Builder setSegId(int i2) {
            this.preLoadInfo.segId = i2;
            return this;
        }
    }

    public int getAbId() {
        return this.abId;
    }

    public int getAbItemId() {
        return this.abItemId;
    }

    public int getCpEcpmReceiveTime() {
        return this.cpEcpmReceiveTime;
    }

    public int getCpEcpmSwitch() {
        return this.cpEcpmSwitch;
    }

    public long getCpEcpmTimeout() {
        return this.cpEcpmTimeout;
    }

    public MgComparedResult getMgComparedResult() {
        return this.mgComparedResult;
    }

    public JSONObject getMpc() {
        return this.mpc;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public MgPreLoadCallbackRegister getPreLoadCallbackRegister() {
        return this.preLoadCallbackRegister;
    }

    public String getPsId() {
        return this.psId;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public int getSegId() {
        return this.segId;
    }

    public boolean isEnableCpEcpm() {
        return this.cpEcpmSwitch == 1;
    }

    public void setCpEcpmReceiveTime(int i2) {
        this.cpEcpmReceiveTime = i2;
    }

    public void setMgComparedResult(MgComparedResult mgComparedResult) {
        this.mgComparedResult = mgComparedResult;
    }

    private MgPreLoadAdRequest() {
        this.cpEcpmTimeout = 1000L;
    }
}
