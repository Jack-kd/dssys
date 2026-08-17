package com.qq.e.ads.rewardvideo;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ServerSideVerificationOptions {
    public static final String ACTION = "rewardAction";
    public static final String TRANS_ID = "transId";

    /* renamed from: a, reason: collision with root package name */
    private String f35271a;

    /* renamed from: b, reason: collision with root package name */
    private String f35272b;

    /* renamed from: c, reason: collision with root package name */
    private final JSONObject f35273c;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        private String f35274a;

        /* renamed from: b, reason: collision with root package name */
        private String f35275b;

        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public Builder setCustomData(String str) {
            this.f35274a = str;
            return this;
        }

        public Builder setUserId(String str) {
            this.f35275b = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.f35273c = new JSONObject();
        this.f35271a = builder.f35274a;
        this.f35272b = builder.f35275b;
    }

    public String getCustomData() {
        return this.f35271a;
    }

    public JSONObject getOptions() {
        return this.f35273c;
    }

    public String getUserId() {
        return this.f35272b;
    }
}
