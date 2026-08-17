package com.volcengine.mobsecBiz.metasec.ml;

import java.util.Map;
import ms.bz.bd.c.Pgl.pblv;

/* loaded from: classes5.dex */
public final class PglMSConfig extends pblv {

    /* renamed from: q, reason: collision with root package name */
    private final pblv f50633q;

    public static class Builder extends pblv.pgla<Builder> {
        public Builder(String str, String str2) {
            super(str, str2, 99999);
        }

        public Builder addAdvanceInfo(String str, String str2) {
            addAdvanceInfo0(str, str2);
            return this;
        }

        public PglMSConfig build() {
            return new PglMSConfig(a(), 0);
        }

        public Builder setChannel(String str) {
            setChannel0(str);
            return this;
        }

        public Builder setClientType(int i2) {
            setClientType0(i2);
            return this;
        }

        public Builder setCustomInfo(Map<String, String> map) {
            setCustomInfo0(map);
            return this;
        }

        public Builder setDeviceID(String str) {
            setDeviceID0(str);
            return this;
        }

        public Builder setInstallID(String str) {
            setInstallID0(str);
            return this;
        }

        public Builder setOaid(String str) {
            setOaid0(str);
            return this;
        }

        public Builder(String str, String str2, int i2) {
            super(str, str2, i2);
        }

        public Builder(String str, String str2, String str3) {
            super(str, str2, str3, 99999);
        }

        public Builder(String str, String str2, String str3, int i2) {
            super(str, str2, str3, i2);
        }
    }

    private PglMSConfig(pblv.pgla pglaVar) {
        this.f50633q = pglaVar;
    }

    public final pblv a() {
        return this.f50633q;
    }

    public /* synthetic */ PglMSConfig(pblv.pgla pglaVar, int i2) {
        this(pglaVar);
    }
}
