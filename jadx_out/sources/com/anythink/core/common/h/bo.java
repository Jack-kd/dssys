package com.anythink.core.common.h;

import com.anythink.core.api.ATAdRequest;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class bo {

    /* renamed from: a, reason: collision with root package name */
    private String f3991a;

    /* renamed from: b, reason: collision with root package name */
    private String f3992b;

    /* renamed from: c, reason: collision with root package name */
    private String f3993c;

    /* renamed from: d, reason: collision with root package name */
    private String f3994d;

    /* renamed from: e, reason: collision with root package name */
    private int f3995e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Object> f3996f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f3997g;

    /* renamed from: h, reason: collision with root package name */
    private Map<String, String> f3998h;

    /* renamed from: i, reason: collision with root package name */
    private JSONObject f3999i;

    /* renamed from: j, reason: collision with root package name */
    private String f4000j;

    /* renamed from: k, reason: collision with root package name */
    private JSONObject f4001k;

    /* renamed from: l, reason: collision with root package name */
    private ATAdRequest f4002l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f4003m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f4004n;

    /* renamed from: o, reason: collision with root package name */
    private String f4005o;

    /* renamed from: p, reason: collision with root package name */
    private String f4006p;

    public bo(String str, String str2, String str3, String str4, Map<String, Object> map, Map<String, Object> map2, JSONObject jSONObject, ATAdRequest aTAdRequest) {
        this.f3991a = str;
        this.f3992b = str2;
        this.f3993c = str3;
        this.f3994d = str4;
        this.f3996f = map;
        this.f3997g = map2;
        this.f3999i = jSONObject;
        this.f4002l = aTAdRequest;
        this.f4005o = UUID.randomUUID().toString();
    }

    public final void a(int i2) {
        this.f3995e = i2;
    }

    public final String b() {
        return this.f3991a;
    }

    public final String c() {
        return this.f3992b;
    }

    public final String d() {
        return this.f3993c;
    }

    public final String e() {
        return this.f3994d;
    }

    public final Map<String, Object> f() {
        return this.f3996f;
    }

    public final Map<String, Object> g() {
        return this.f3997g;
    }

    public final int h() {
        return this.f3995e;
    }

    public final Map<String, String> i() {
        return this.f3998h;
    }

    public final ATAdRequest j() {
        return this.f4002l;
    }

    public final String k() {
        return this.f4005o;
    }

    public final JSONObject l() {
        return this.f3999i;
    }

    public final String m() {
        return this.f4000j;
    }

    public final JSONObject n() {
        return this.f4001k;
    }

    public final boolean o() {
        return this.f4004n;
    }

    public final String p() {
        return this.f4006p;
    }

    public String toString() {
        return "PlaceStrategyLoaderParams{appId='" + this.f3991a + "', appKey='" + this.f3992b + "', placeId='" + this.f3993c + "', settingId='" + this.f3994d + "', fistReqPlaceStrategyFlag=" + this.f3995e + ", customMap=" + this.f3996f + ", tkExtraMap=" + this.f3997g + ", cachedMap=" + this.f3998h + ", reqReason='" + this.f4006p + '}';
    }

    private void b(String str) {
        this.f3991a = str;
    }

    private void c(String str) {
        this.f3992b = str;
    }

    private void d(String str) {
        this.f3993c = str;
    }

    private void e(String str) {
        this.f3994d = str;
    }

    public final void a(Map<String, String> map) {
        this.f3998h = map;
    }

    private void b(Map<String, Object> map) {
        this.f3996f = map;
    }

    private void c(Map<String, Object> map) {
        this.f3997g = map;
    }

    public final void a(JSONObject jSONObject) {
        this.f4001k = jSONObject;
    }

    private boolean a() {
        return this.f4003m;
    }

    public final void b(boolean z2) {
        this.f4004n = z2;
    }

    public final void a(boolean z2) {
        this.f4003m = z2;
    }

    public final void a(String str) {
        this.f4006p = str;
    }

    public bo(String str, String str2, String str3, String str4) {
        this.f3999i = null;
        this.f3991a = str;
        this.f3992b = str2;
        this.f3993c = str3;
        this.f4000j = str4;
        this.f4005o = UUID.randomUUID().toString();
    }
}
