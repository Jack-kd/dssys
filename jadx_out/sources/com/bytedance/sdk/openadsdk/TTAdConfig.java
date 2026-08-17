package com.bytedance.sdk.openadsdk;

import android.os.SystemClock;
import com.byazt.kj.hp;
import com.bytedance.sdk.openadsdk.CSJConfig;
import com.bytedance.sdk.openadsdk.mediation.init.IMediationConfig;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 2497})
/* loaded from: classes3.dex */
public final class TTAdConfig extends CSJConfig {

    @hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 2206})
    public static class Builder {
        private CSJConfig.hp hp = new CSJConfig.hp();

        /* renamed from: l, reason: collision with root package name */
        private final long f28895l = SystemClock.elapsedRealtime();

        public Builder addExtra(String str, Object obj) {
            this.hp.hp(str, obj);
            return this;
        }

        public Builder allowShowNotify(boolean z2) {
            this.hp.l(z2);
            return this;
        }

        public Builder appId(String str) {
            this.hp.hp(str);
            return this;
        }

        public Builder appName(String str) {
            this.hp.l(str);
            return this;
        }

        public TTAdConfig build() {
            this.hp.hp("csj_b_st_ts", Long.valueOf(this.f28895l));
            return new TTAdConfig(this.hp);
        }

        public Builder customController(TTCustomController tTCustomController) {
            this.hp.hp(tTCustomController);
            return this;
        }

        public Builder data(String str) {
            this.hp.j(str);
            return this;
        }

        public Builder debug(boolean z2) {
            this.hp.jx(z2);
            return this;
        }

        public Builder directDownloadNetworkType(int... iArr) {
            this.hp.hp(iArr);
            return this;
        }

        public Builder keywords(String str) {
            this.hp.jx(str);
            return this;
        }

        public Builder paid(boolean z2) {
            this.hp.hp(z2);
            return this;
        }

        public Builder setAgeGroup(int i2) {
            this.hp.j(i2);
            return this;
        }

        public Builder setMediationConfig(IMediationConfig iMediationConfig) {
            this.hp.hp(iMediationConfig);
            return this;
        }

        public Builder setPluginUpdateConfig(int i2) {
            this.hp.jx(i2);
            return this;
        }

        public Builder supportMultiProcess(boolean z2) {
            this.hp.j(z2);
            return this;
        }

        public Builder themeStatus(int i2) {
            this.hp.l(i2);
            return this;
        }

        public Builder titleBarTheme(int i2) {
            this.hp.hp(i2);
            return this;
        }

        public Builder useMediation(boolean z2) {
            this.hp.w(z2);
            return this;
        }
    }

    private TTAdConfig(CSJConfig.hp hpVar) {
        super(hpVar);
    }
}
