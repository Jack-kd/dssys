package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.kj.hp;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 738, 1944})
/* loaded from: classes3.dex */
public class MediationNativeAdAppInfo {

    /* renamed from: a, reason: collision with root package name */
    private String f28991a;

    /* renamed from: e, reason: collision with root package name */
    private String f28992e;
    private String eb;
    private String hp;

    /* renamed from: j, reason: collision with root package name */
    private String f28993j;
    private long jx;

    /* renamed from: l, reason: collision with root package name */
    private String f28994l;

    /* renamed from: q, reason: collision with root package name */
    private Map<String, Object> f28995q;

    /* renamed from: s, reason: collision with root package name */
    private String f28996s;

    /* renamed from: w, reason: collision with root package name */
    private Map<String, String> f28997w;

    public Map<String, Object> getAppInfoExtra() {
        return this.f28995q;
    }

    public String getAppName() {
        return this.hp;
    }

    public String getAuthorName() {
        return this.f28994l;
    }

    public String getFunctionDescUrl() {
        return this.f28996s;
    }

    public long getPackageSizeBytes() {
        return this.jx;
    }

    public Map<String, String> getPermissionsMap() {
        return this.f28997w;
    }

    public String getPermissionsUrl() {
        return this.f28993j;
    }

    public String getPrivacyAgreement() {
        return this.f28991a;
    }

    public String getRegUrl() {
        return this.f28992e;
    }

    public String getVersionName() {
        return this.eb;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.f28995q = map;
    }

    public void setAppName(String str) {
        this.hp = str;
    }

    public void setAuthorName(String str) {
        this.f28994l = str;
    }

    public void setFunctionDescUrl(String str) {
        this.f28996s = str;
    }

    public void setPackageSizeBytes(long j2) {
        this.jx = j2;
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.f28997w = map;
    }

    public void setPermissionsUrl(String str) {
        this.f28993j = str;
    }

    public void setPrivacyAgreement(String str) {
        this.f28991a = str;
    }

    public void setRegUrl(String str) {
        this.f28992e = str;
    }

    public void setVersionName(String str) {
        this.eb = str;
    }
}
