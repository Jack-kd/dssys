package com.ubix.ssp.open;

import android.text.TextUtils;
import java.util.List;

/* loaded from: classes5.dex */
public class UBiXAdPrivacyManager {

    /* renamed from: a, reason: collision with root package name */
    private int f48463a;

    /* renamed from: b, reason: collision with root package name */
    private int f48464b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f48465c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f48466d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f48467e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f48468f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f48469g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f48470h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f48471i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f48472j;

    /* renamed from: k, reason: collision with root package name */
    private String f48473k;

    /* renamed from: l, reason: collision with root package name */
    private String f48474l;

    /* renamed from: m, reason: collision with root package name */
    private Location f48475m;

    /* renamed from: n, reason: collision with root package name */
    private String f48476n;

    /* renamed from: o, reason: collision with root package name */
    private String f48477o;

    /* renamed from: p, reason: collision with root package name */
    private List<String> f48478p;

    /* renamed from: q, reason: collision with root package name */
    private int f48479q;

    public static class Builder {

        /* renamed from: p, reason: collision with root package name */
        private List<String> f48495p;

        /* renamed from: a, reason: collision with root package name */
        private int f48480a = 0;

        /* renamed from: b, reason: collision with root package name */
        private int f48481b = 0;

        /* renamed from: c, reason: collision with root package name */
        private boolean f48482c = true;

        /* renamed from: d, reason: collision with root package name */
        private boolean f48483d = true;

        /* renamed from: e, reason: collision with root package name */
        private boolean f48484e = true;

        /* renamed from: f, reason: collision with root package name */
        private boolean f48485f = true;

        /* renamed from: g, reason: collision with root package name */
        private boolean f48486g = true;

        /* renamed from: h, reason: collision with root package name */
        private boolean f48487h = true;

        /* renamed from: i, reason: collision with root package name */
        private boolean f48488i = true;

        /* renamed from: j, reason: collision with root package name */
        private boolean f48489j = true;

        /* renamed from: k, reason: collision with root package name */
        private String f48490k = "";

        /* renamed from: l, reason: collision with root package name */
        private String f48491l = "";

        /* renamed from: m, reason: collision with root package name */
        private Location f48492m = new Location(0.0d, 0.0d);

        /* renamed from: n, reason: collision with root package name */
        private String f48493n = "";

        /* renamed from: o, reason: collision with root package name */
        private String f48494o = "";

        /* renamed from: q, reason: collision with root package name */
        private int f48496q = -1;

        public UBiXAdPrivacyManager build() {
            UBiXAdPrivacyManager uBiXAdPrivacyManager = new UBiXAdPrivacyManager();
            uBiXAdPrivacyManager.f48470h = this.f48486g;
            uBiXAdPrivacyManager.f48464b = this.f48480a;
            uBiXAdPrivacyManager.f48463a = this.f48481b;
            uBiXAdPrivacyManager.f48465c = this.f48482c;
            uBiXAdPrivacyManager.f48466d = this.f48483d;
            uBiXAdPrivacyManager.f48469g = this.f48484e;
            uBiXAdPrivacyManager.f48468f = this.f48485f;
            uBiXAdPrivacyManager.f48467e = this.f48487h;
            uBiXAdPrivacyManager.f48471i = this.f48488i;
            uBiXAdPrivacyManager.f48472j = this.f48489j;
            uBiXAdPrivacyManager.f48473k = this.f48490k;
            uBiXAdPrivacyManager.f48474l = this.f48491l;
            uBiXAdPrivacyManager.f48476n = this.f48493n;
            uBiXAdPrivacyManager.f48477o = this.f48494o;
            uBiXAdPrivacyManager.f48478p = this.f48495p;
            uBiXAdPrivacyManager.f48475m = this.f48492m;
            uBiXAdPrivacyManager.f48479q = this.f48496q;
            return uBiXAdPrivacyManager;
        }

        public Builder setAndroidId(String str) {
            this.f48493n = str;
            return this;
        }

        public Builder setAppList(List<String> list) {
            this.f48495p = list;
            return this;
        }

        public Builder setCanGetAppList(boolean z2) {
            this.f48484e = z2;
            return this;
        }

        public Builder setCanUseAndroidId(boolean z2) {
            this.f48486g = z2;
            return this;
        }

        public Builder setCanUseLocation(boolean z2) {
            this.f48482c = z2;
            return this;
        }

        public Builder setCanUseMacAddress(boolean z2) {
            this.f48485f = z2;
            return this;
        }

        public Builder setCanUseOaid(boolean z2) {
            this.f48488i = z2;
            return this;
        }

        public Builder setCanUsePhoneState(boolean z2) {
            this.f48489j = z2;
            return this;
        }

        public Builder setCanUseWifiState(boolean z2) {
            this.f48483d = z2;
            return this;
        }

        public Builder setCanUseWriteExternal(boolean z2) {
            this.f48487h = z2;
            return this;
        }

        public Builder setDevImei(String str) {
            this.f48491l = str;
            return this;
        }

        public Builder setDevOaid(String str) {
            this.f48490k = str;
            this.f48496q = 1;
            return this;
        }

        public Builder setLocation(double d2, double d3) {
            this.f48492m = new Location(d2, d3);
            return this;
        }

        public Builder setMacAddress(String str) {
            this.f48494o = str;
            return this;
        }

        public Builder setPersonalizedState(int i2) {
            this.f48480a = i2 != 0 ? 1 : 0;
            return this;
        }

        public Builder setProgrammaticRecommendState(boolean z2) {
            this.f48481b = z2 ? 0 : 1;
            return this;
        }
    }

    public static class Location {

        /* renamed from: a, reason: collision with root package name */
        private double f48497a;

        /* renamed from: b, reason: collision with root package name */
        private double f48498b;

        public Location(double d2, double d3) {
            this.f48497a = d2;
            this.f48498b = d3;
        }

        public double getLatitude() {
            return this.f48498b;
        }

        public double getLongitude() {
            return this.f48497a;
        }
    }

    private UBiXAdPrivacyManager() {
        this.f48463a = 0;
        this.f48464b = 0;
        this.f48465c = true;
        this.f48466d = true;
        this.f48467e = true;
        this.f48468f = true;
        this.f48469g = true;
        this.f48470h = true;
        this.f48471i = true;
        this.f48472j = true;
        this.f48473k = "";
        this.f48474l = "";
        this.f48475m = new Location(0.0d, 0.0d);
        this.f48476n = "";
        this.f48477o = "";
        this.f48479q = -1;
    }

    public String getAndroidId() {
        return this.f48476n;
    }

    public List<String> getAppList() {
        return this.f48478p;
    }

    public String getImei() {
        return this.f48474l;
    }

    public double[] getLocation() {
        Location location = this.f48475m;
        return location != null ? new double[]{location.f48497a, this.f48475m.f48498b} : new double[]{0.0d, 0.0d};
    }

    public String getMacAddr() {
        return this.f48477o;
    }

    public String getOaid() {
        if (this.f48479q != 0) {
            this.f48479q = 0;
            TextUtils.isEmpty(this.f48473k);
        }
        return this.f48473k;
    }

    public int getPersonalizedState() {
        return this.f48464b;
    }

    public int getProgrammaticRecommendState() {
        return this.f48463a;
    }

    public boolean isCanGetAppList() {
        return this.f48469g;
    }

    public boolean isCanUseAndroidId() {
        return this.f48470h;
    }

    public boolean isCanUseLocation() {
        return this.f48465c;
    }

    public boolean isCanUseMacAddress() {
        return this.f48468f;
    }

    public boolean isCanUseOaid() {
        return this.f48471i;
    }

    public boolean isCanUsePhoneState() {
        return this.f48472j;
    }

    public boolean isCanUseWifiStatus() {
        return this.f48466d;
    }

    public boolean isCanUseWriteExternal() {
        return this.f48467e;
    }

    public boolean isTrustOaid() {
        return this.f48479q != 1;
    }
}
