package com.baidu.oauth.sdkbqt.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.b.a;
import com.baidu.oauth.sdkbqt.R;
import com.baidu.oauth.sdkbqt.auth.C1120a;
import com.baidu.oauth.sdkbqt.auth.C1121b;
import com.baidu.oauth.sdkbqt.auth.C1123d;
import com.baidu.oauth.sdkbqt.auth.i;
import java.util.HashMap;
import o.d;
import o.h;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class WebViewActivity extends a {

    /* renamed from: h, reason: collision with root package name */
    public static final String f11844h = "WebViewActivity";

    /* renamed from: f, reason: collision with root package name */
    public boolean f11845f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11846g = false;

    public final void c() {
    }

    public final void d() {
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        getWindow().getDecorView().setBackgroundColor(-657931);
    }

    @Override // com.baidu.oauth.sdkbqt.view.a
    public void e() {
        setResult(0, h.b(-205));
        finish();
    }

    @Override // com.baidu.oauth.sdkbqt.view.a
    public void g() {
        super.g();
        f("百度");
        String stringExtra = getIntent().getStringExtra("extra_redirect_url");
        String stringExtra2 = getIntent().getStringExtra("extra_qr_code_url");
        String stringExtra3 = getIntent().getStringExtra("extra_scope");
        boolean booleanExtra = getIntent().getBooleanExtra("extra_degrade_h5_auth", false);
        boolean booleanExtra2 = getIntent().getBooleanExtra("extra_degrade_exempt_auth_page", false);
        this.f11849d.o(new t.g(this));
        t.h hVar = new t.h(this, stringExtra, stringExtra2, stringExtra3);
        i.c cVar = new i.c();
        cVar.f11816b = stringExtra;
        cVar.f11815a = hVar;
        this.f11849d.h(cVar);
        String stringExtra4 = getIntent().getStringExtra("extra_oauth_state");
        if (getIntent().getIntExtra("extra_guid_type", 0) == 1) {
            HashMap map = new HashMap();
            map.put("client", "android");
            map.put("clientfrom", "native");
            map.put("suppcheck", "1");
            map.put("oauth_redirect_uri", stringExtra);
            map.put("getauthorizationcode", "1");
            this.f11849d.n(stringExtra2, map);
            return;
        }
        if (booleanExtra2) {
            this.f11849d.w(stringExtra4);
        } else if (booleanExtra) {
            this.f11849d.t(stringExtra4);
        } else {
            this.f11849d.l(stringExtra4);
        }
    }

    public final Intent h(int i2) throws JSONException {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i2);
            jSONObject.put("showLogin", this.f11845f ? "1" : "0");
            jSONObject.put("finishLogin", this.f11846g ? "1" : "0");
        } catch (JSONException e2) {
            d.c(e2);
        }
        intent.putExtra("extra_oauth_result_json", jSONObject.toString());
        return intent;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
        try {
            C1120a c1120aB = C1121b.b();
            if (c1120aB == null || c1120aB.c() == null) {
                setContentView(R.layout.layout_bd_oauth_sdk_webview_with_title);
            } else {
                setContentView(c1120aB.c().oauthResID(a.b.f11137a));
            }
            this.f11845f = TextUtils.isEmpty(new C1123d().a(this));
            c();
            g();
        } catch (Throwable unused) {
            setResult(0, h.b(-201));
            finish();
        }
    }
}
