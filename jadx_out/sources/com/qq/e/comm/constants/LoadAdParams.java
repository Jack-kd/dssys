package com.qq.e.comm.constants;

import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class LoadAdParams {

    /* renamed from: a, reason: collision with root package name */
    private LoginType f35312a;

    /* renamed from: b, reason: collision with root package name */
    private String f35313b;

    /* renamed from: c, reason: collision with root package name */
    private String f35314c;

    /* renamed from: d, reason: collision with root package name */
    private String f35315d;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, String> f35316e;

    /* renamed from: f, reason: collision with root package name */
    private JSONObject f35317f;

    /* renamed from: g, reason: collision with root package name */
    private final JSONObject f35318g = new JSONObject();

    public Map getDevExtra() {
        return this.f35316e;
    }

    public String getDevExtraJsonString() {
        try {
            Map<String, String> map = this.f35316e;
            return (map == null || map.size() <= 0) ? "" : new JSONObject(this.f35316e).toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public JSONObject getExtraInfo() {
        return this.f35317f;
    }

    @Deprecated
    public String getLoginAppId() {
        return this.f35313b;
    }

    @Deprecated
    public String getLoginOpenid() {
        return this.f35314c;
    }

    @Deprecated
    public LoginType getLoginType() {
        return this.f35312a;
    }

    public JSONObject getParams() {
        return this.f35318g;
    }

    @Deprecated
    public String getUin() {
        return this.f35315d;
    }

    public void setDevExtra(Map<String, String> map) {
        this.f35316e = map;
    }

    public void setExtraInfo(JSONObject jSONObject) {
        this.f35317f = jSONObject;
    }

    @Deprecated
    public void setLoginAppId(String str) {
        this.f35313b = str;
        GDTLogger.e("注意！LoadAdParams#setLoginAppId 已废弃");
    }

    @Deprecated
    public void setLoginOpenid(String str) {
        this.f35314c = str;
        GDTLogger.e("注意！LoadAdParams#setLoginOpenid 已废弃");
    }

    @Deprecated
    public void setLoginType(LoginType loginType) {
        this.f35312a = loginType;
        GDTLogger.e("注意！LoadAdParams#setLoginType 已废弃");
    }

    @Deprecated
    public void setUin(String str) {
        this.f35315d = str;
        GDTLogger.e("注意！LoadAdParams#setUin 已废弃");
    }

    public String toString() {
        return "LoadAdParams{, loginType=" + this.f35312a + ", loginAppId=" + this.f35313b + ", loginOpenid=" + this.f35314c + ", uin=" + this.f35315d + ", passThroughInfo=" + this.f35316e + ", extraInfo=" + this.f35317f + '}';
    }
}
