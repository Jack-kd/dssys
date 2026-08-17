package com.sigmob.sdk.mraid;

import android.content.Context;
import android.view.View;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.mraid.n, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1322n {

    /* renamed from: a, reason: collision with root package name */
    protected String f37986a;

    /* renamed from: b, reason: collision with root package name */
    String f37987b;

    /* renamed from: com.sigmob.sdk.mraid.n$a */
    public interface a {
        void a(Context context, JSONObject jSONObject);

        void a(JSONObject jSONObject);

        void b(JSONObject jSONObject);

        void c(JSONObject jSONObject);

        void d(JSONObject jSONObject);

        void e(JSONObject jSONObject);

        void f(JSONObject jSONObject);

        void g(JSONObject jSONObject);

        void h(JSONObject jSONObject);
    }

    public AbstractC1322n(String str) {
        this.f37986a = str;
    }

    public abstract View a();

    public void a(String str) {
        this.f37987b = str;
    }

    public abstract void b();

    public String c() {
        return this.f37987b;
    }
}
