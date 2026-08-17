package com.qq.e.ads.nativ;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public class NativeUnifiedADAppInfoImpl implements NativeUnifiedADAppMiitInfo {

    /* renamed from: a, reason: collision with root package name */
    private final String f35243a;

    /* renamed from: b, reason: collision with root package name */
    private final String f35244b;

    /* renamed from: c, reason: collision with root package name */
    private final long f35245c;

    /* renamed from: d, reason: collision with root package name */
    private final String f35246d;

    /* renamed from: e, reason: collision with root package name */
    private final String f35247e;

    /* renamed from: f, reason: collision with root package name */
    private final String f35248f;

    /* renamed from: g, reason: collision with root package name */
    private final String f35249g;

    /* renamed from: h, reason: collision with root package name */
    private final String f35250h;

    /* renamed from: i, reason: collision with root package name */
    private final String f35251i;

    /* renamed from: j, reason: collision with root package name */
    private final String f35252j;

    public interface Keys {
        public static final String APP_NAME = "app_name";
        public static final String AUTHOR_NAME = "author_name";
        public static final String DESCRIPTION_URL = "description_url";
        public static final String ICP_INFO_URL = "icp_info_url";
        public static final String ICP_NUMBER = "icp_number";
        public static final String PACKAGE_SIZE = "package_size";
        public static final String PERMISSION_URL = "permission_url";
        public static final String PRIVACY_AGREEMENT = "privacy_agreement";
        public static final String SUITABLE_AGE = "suitable_age";
        public static final String VERSION_NAME = "version_name";
    }

    public NativeUnifiedADAppInfoImpl(JSONObject jSONObject) {
        this.f35243a = jSONObject.optString("app_name");
        this.f35244b = jSONObject.optString(Keys.AUTHOR_NAME);
        this.f35245c = jSONObject.optLong(Keys.PACKAGE_SIZE);
        this.f35246d = jSONObject.optString(Keys.PERMISSION_URL);
        this.f35247e = jSONObject.optString(Keys.PRIVACY_AGREEMENT);
        this.f35248f = jSONObject.optString(Keys.VERSION_NAME);
        this.f35249g = jSONObject.optString(Keys.DESCRIPTION_URL);
        this.f35250h = jSONObject.optString(Keys.ICP_NUMBER);
        this.f35251i = jSONObject.optString(Keys.SUITABLE_AGE);
        this.f35252j = jSONObject.optString(Keys.ICP_INFO_URL);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAppName() {
        return this.f35243a;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAuthorName() {
        return this.f35244b;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getDescriptionUrl() {
        return this.f35249g;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getIcpInfoUrl() {
        return this.f35252j;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getIcpNumber() {
        return this.f35250h;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public long getPackageSizeBytes() {
        return this.f35245c;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPermissionsUrl() {
        return this.f35246d;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPrivacyAgreement() {
        return this.f35247e;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getSuitableAge() {
        return this.f35251i;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getVersionName() {
        return this.f35248f;
    }
}
