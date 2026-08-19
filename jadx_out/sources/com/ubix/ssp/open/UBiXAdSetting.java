package com.ubix.ssp.open;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.ubix.ssp.open.UBiXAdPrivacyManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class UBiXAdSetting {

    /* renamed from: e, reason: collision with root package name */
    private UBiXAdPrivacyManager f48503e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, String> f48504f;

    /* renamed from: a, reason: collision with root package name */
    private String f48499a = "";

    /* renamed from: b, reason: collision with root package name */
    private String f48500b = "";

    /* renamed from: c, reason: collision with root package name */
    private boolean f48501c = true;

    /* renamed from: d, reason: collision with root package name */
    private boolean f48502d = false;

    /* renamed from: g, reason: collision with root package name */
    private Drawable f48505g = null;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        private String f48506a;

        /* renamed from: b, reason: collision with root package name */
        private String f48507b;

        /* renamed from: e, reason: collision with root package name */
        private UBiXAdPrivacyManager f48510e;

        /* renamed from: f, reason: collision with root package name */
        private Map<String, String> f48511f;

        /* renamed from: c, reason: collision with root package name */
        private boolean f48508c = true;

        /* renamed from: d, reason: collision with root package name */
        private boolean f48509d = false;

        /* renamed from: g, reason: collision with root package name */
        private Drawable f48512g = null;

        public UBiXAdSetting build() {
            UBiXAdSetting uBiXAdSetting = new UBiXAdSetting();
            uBiXAdSetting.f48499a = TextUtils.isEmpty(this.f48506a) ? "" : this.f48506a;
            uBiXAdSetting.f48500b = TextUtils.isEmpty(this.f48507b) ? "" : this.f48507b;
            uBiXAdSetting.f48501c = this.f48508c;
            uBiXAdSetting.f48502d = this.f48509d;
            UBiXAdPrivacyManager uBiXAdPrivacyManagerBuild = this.f48510e;
            if (uBiXAdPrivacyManagerBuild == null) {
                uBiXAdPrivacyManagerBuild = new UBiXAdPrivacyManager.Builder().build();
            }
            uBiXAdSetting.f48503e = uBiXAdPrivacyManagerBuild;
            uBiXAdSetting.f48504f = this.f48511f;
            uBiXAdSetting.f48505g = this.f48512g;
            return uBiXAdSetting;
        }

        public Builder setCustomLogo(Drawable drawable) {
            this.f48512g = drawable;
            return this;
        }

        public Builder setExtra(Map<String, String> map) {
            this.f48511f = map;
            return this;
        }

        public Builder setPrivacyManager(UBiXAdPrivacyManager uBiXAdPrivacyManager) {
            this.f48510e = uBiXAdPrivacyManager;
            return this;
        }

        public Builder setPublisherId(String str) {
            this.f48507b = str;
            return this;
        }

        public Builder setUseTextureView(boolean z2) {
            this.f48509d = true;
            this.f48508c = z2;
            return this;
        }

        public Builder setUserId(String str) {
            this.f48506a = str;
            return this;
        }
    }

    public Drawable getCustomLogo() {
        return this.f48505g;
    }

    public Map<String, String> getExtra() {
        Map<String, String> map = this.f48504f;
        return map == null ? new HashMap() : map;
    }

    public UBiXAdPrivacyManager getPrivacyManager() {
        return this.f48503e;
    }

    public String getPublisherId() {
        return this.f48500b;
    }

    public String getUserId() {
        return this.f48499a;
    }

    public boolean isSpecifiedVideoWidget() {
        return this.f48502d;
    }

    public boolean isUseTextureView() {
        return this.f48501c;
    }
}
