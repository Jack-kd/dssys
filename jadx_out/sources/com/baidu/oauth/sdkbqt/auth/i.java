package com.baidu.oauth.sdkbqt.auth;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.ProgressBar;
import com.sigmob.sdk.base.common.C1244a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q.AbstractC1756d;

/* loaded from: classes2.dex */
public final class i extends WebView {

    /* renamed from: r, reason: collision with root package name */
    public static final String f11793r = "i";

    /* renamed from: b, reason: collision with root package name */
    public Map f11794b;

    /* renamed from: c, reason: collision with root package name */
    public InterfaceC0142i f11795c;

    /* renamed from: d, reason: collision with root package name */
    public g f11796d;

    /* renamed from: e, reason: collision with root package name */
    public View f11797e;

    /* renamed from: f, reason: collision with root package name */
    public View f11798f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11799g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f11800h;

    /* renamed from: i, reason: collision with root package name */
    public String f11801i;

    /* renamed from: j, reason: collision with root package name */
    public ProgressBar f11802j;

    /* renamed from: k, reason: collision with root package name */
    public long f11803k;

    /* renamed from: l, reason: collision with root package name */
    public Handler f11804l;

    /* renamed from: m, reason: collision with root package name */
    public h f11805m;

    /* renamed from: n, reason: collision with root package name */
    public f f11806n;

    /* renamed from: o, reason: collision with root package name */
    public AbstractC1756d f11807o;

    /* renamed from: p, reason: collision with root package name */
    public c f11808p;

    /* renamed from: q, reason: collision with root package name */
    public JsPromptResult f11809q;

    public abstract class a {
        public a() {
        }

        public abstract String a(e eVar);
    }

    public enum b {
        ON_RESUME("webViewWillAppear"),
        ON_PAUSE("webViewWillDisappear");


        /* renamed from: c, reason: collision with root package name */
        String f11814c;

        b(String str) {
            this.f11814c = str;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public d f11815a;

        /* renamed from: b, reason: collision with root package name */
        public String f11816b;
    }

    public interface d {
        void a(String str);
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public String f11817a;

        /* renamed from: b, reason: collision with root package name */
        public List f11818b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public String f11819c;

        public static e a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str.toString());
                e eVar = new e();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.ccg.a.f49772z);
                if (jSONObjectOptJSONObject != null) {
                    eVar.f11817a = jSONObjectOptJSONObject.optString("name");
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("params");
                    if (jSONArrayOptJSONArray != null) {
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                            eVar.f11818b.add(jSONArrayOptJSONArray.optString(i2));
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("callback");
                if (jSONObjectOptJSONObject2 != null) {
                    eVar.f11819c = jSONObjectOptJSONObject2.optString("name");
                }
                return eVar;
            } catch (JSONException e2) {
                o.d.c(e2);
                return null;
            }
        }

        public String b() {
            return this.f11817a;
        }

        public List c() {
            return this.f11818b;
        }
    }

    public interface f {
        void a();
    }

    public class h implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public String f11822b;

        public h() {
        }

        public void b(String str) {
            this.f11822b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.getProgress() < 100) {
                Message message = new Message();
                message.what = 1;
                message.obj = this.f11822b;
                i.this.f11804l.sendMessage(message);
                i.this.f11804l.removeCallbacks(this);
            }
        }

        public /* synthetic */ h(i iVar, n nVar) {
            this();
        }
    }

    /* renamed from: com.baidu.oauth.sdkbqt.auth.i$i, reason: collision with other inner class name */
    public interface InterfaceC0142i {
        void a(String str);
    }

    public i(Context context) {
        super(context);
        this.f11794b = new HashMap();
        n nVar = null;
        this.f11796d = new g(this, nVar);
        this.f11804l = new n(this);
        this.f11805m = new h(this, nVar);
        B();
    }

    public static String d(Map map, boolean z2) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (sb.length() > 0 || z2) {
                sb.append("&");
            } else {
                sb.append("?");
            }
            if (value == null) {
                try {
                    sb.append(str);
                    sb.append("=");
                } catch (Exception e2) {
                    sb.append(str);
                    sb.append("=");
                    sb.append(value);
                    e2.printStackTrace();
                }
            } else {
                sb.append(str);
                sb.append("=");
                sb.append(URLEncoder.encode(value.toString(), "UTF-8"));
            }
        }
        return sb.toString();
    }

    public final String A(String str) {
        return String.format("javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.%s){ Pass.client.%s()}}())", str, str);
    }

    public final void B() {
        this.f11803k = 90000L;
        H();
        this.f11800h = TextUtils.isEmpty(new C1123d().a(getContext()));
        setWebViewClient(new x(this));
        setWebChromeClient(new y(this));
        E();
    }

    public final void E() {
        this.f11794b.put("sapi_action_check_method_support", new B(this));
        this.f11794b.put(C1244a.f35674b, new C(this));
        this.f11794b.put("back", new D(this));
        this.f11794b.put("action_set_title", new com.baidu.oauth.sdkbqt.auth.e(this));
        this.f11794b.put("sapi_goBack", new com.baidu.oauth.sdkbqt.auth.f(this));
        this.f11794b.put("oauth_sso_hash", new com.baidu.oauth.sdkbqt.auth.g(this));
        this.f11794b.put("authorized_response", new o(this));
        this.f11794b.put("oauth_call_baidu", new q(this));
    }

    public final void F(String str) {
        post(new t(this, str));
        if (o.g.h(getContext()) || str.startsWith("javascript:")) {
            return;
        }
        L();
    }

    public final void H() {
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            o.d.c(e2);
        }
        getSettings().setUserAgentString(N());
        getSettings().setDomStorageEnabled(true);
        setScrollBarStyle(0);
        getSettings().setSaveFormData(false);
        getSettings().setSavePassword(false);
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setSavePassword(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    public final void J() {
        stopLoading();
        post(new v(this));
    }

    public final void L() {
        post(new w(this));
    }

    public final String N() {
        String userAgentString = getSettings().getUserAgentString();
        String str = Build.MODEL;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        String str2 = Build.VERSION.RELEASE;
        return userAgentString + " " + URLEncoder.encode("bdoa_2.0.6.10_Android_" + o.g.m(getContext()) + "_" + o.g.j(getContext()) + "_" + str + "_" + (TextUtils.isEmpty(str2) ? "" : str2));
    }

    public final String c(Boolean bool) {
        HashMap map = new HashMap();
        if (bool.booleanValue()) {
            map.put("silentAuth", "1");
        }
        map.put("response_type", "code");
        map.put("display", "mobile");
        C1120a c1120aB = C1121b.b();
        if (c1120aB != null) {
            try {
                map.put("redirect_uri", URLEncoder.encode(c1120aB.f(), "UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                o.d.e(f11793r, "Failed to encode redirect_uri", e2);
                map.put("redirect_uri", c1120aB.f());
            }
            map.put("scope", c1120aB.g());
            map.put("eh2_pg", c1120aB.e());
            map.put("eh3_pgs", c1120aB.d());
            map.put("eh1_us1", c1120aB.i() ? "1" : "0");
        }
        map.put("login_type", "sms");
        map.put("client_id", c1120aB.a());
        map.put("state", this.f11801i);
        return o.c.a("L29hdXRoLzIuMC9hdXRob3JpemU=") + "?" + o.g.b(map);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
        this.f11799g = true;
        this.f11804l.removeCallbacks(this.f11805m);
    }

    public final void e(View view) {
        if (this.f11797e == null) {
            this.f11797e = view;
            view.setVisibility(4);
            addView(this.f11797e, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public void f(ProgressBar progressBar) {
        if (this.f11802j != null) {
            return;
        }
        this.f11802j = progressBar;
        if (progressBar != null) {
            addView(progressBar);
        }
    }

    public void g(b bVar) {
        if (getSettings().getBlockNetworkLoads()) {
            return;
        }
        loadUrl(A(bVar.f11814c));
    }

    public void h(c cVar) {
        this.f11808p = cVar;
    }

    public void i(f fVar) {
        this.f11806n = fVar;
    }

    public void j(InterfaceC0142i interfaceC0142i) {
        this.f11795c = interfaceC0142i;
    }

    public void l(String str) {
        this.f11801i = str;
        new k().a(new s(this));
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        m(str, new HashMap(0));
    }

    public void m(String str, HashMap map) {
        F(str);
    }

    public void n(String str, Map map) {
        new k().a(new r(this, map, str));
    }

    public void o(AbstractC1756d abstractC1756d) {
        this.f11807o = abstractC1756d;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        ProgressBar progressBar = this.f11802j;
        if (progressBar != null) {
            AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) progressBar.getLayoutParams();
            layoutParams.x = i2;
            layoutParams.y = i3;
            this.f11802j.setLayoutParams(layoutParams);
        }
        super.onScrollChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public boolean overScrollBy(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z2) {
        View view = this.f11797e;
        if (view != null && view.getVisibility() == 0) {
            return false;
        }
        View view2 = this.f11798f;
        if (view2 == null || view2.getVisibility() != 0) {
            return super.overScrollBy(i2, i3, i4, i5, i6, i7, i8, i9, z2);
        }
        return false;
    }

    public void q() {
        View view;
        if (canGoBack()) {
            o.g.f((Activity) getContext());
            goBack();
        } else {
            v();
        }
        View view2 = this.f11797e;
        if ((view2 == null || view2.getVisibility() != 0) && ((view = this.f11798f) == null || view.getVisibility() != 0)) {
            return;
        }
        v();
    }

    public final void r(View view) {
        if (this.f11798f == null) {
            this.f11798f = view;
            view.setVisibility(4);
            addView(this.f11798f, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    @Override // android.webkit.WebView
    public void reload() {
        String str = this.f11796d.f11820a;
        if (str != null) {
            loadUrl(str);
        } else {
            super.reload();
        }
        this.f11796d.a();
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        View view;
        View view2 = this.f11797e;
        if ((view2 != null && view2.getVisibility() == 0) || ((view = this.f11798f) != null && view.getVisibility() == 0)) {
            super.scrollTo(0, 0);
        }
        super.scrollTo(i2, i3);
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (NullPointerException unused) {
        }
    }

    public void t(String str) {
        this.f11801i = str;
        loadUrl(c(Boolean.FALSE));
    }

    public void v() {
        if (this.f11806n != null) {
            post(new u(this));
        }
    }

    public void w(String str) {
        this.f11801i = str;
        loadUrl(c(Boolean.TRUE));
    }

    public final String y(String str) {
        HashMap map = new HashMap();
        map.put("response_type", "sso_auth_code");
        map.put("display", "mobile");
        try {
            map.put("sso_hash", URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            o.d.e(f11793r, "Failed to encode sso_hash", e2);
            map.put("sso_hash", str);
        }
        C1120a c1120aB = C1121b.b();
        if (c1120aB != null) {
            try {
                map.put("redirect_uri", URLEncoder.encode(c1120aB.f(), "UTF-8"));
            } catch (UnsupportedEncodingException e3) {
                o.d.e(f11793r, "Failed to encode redirect_uri", e3);
                map.put("redirect_uri", c1120aB.f());
            }
            map.put("scope", c1120aB.g());
            map.put("client_id", c1120aB.a());
            map.put("eh1_us1", c1120aB.i() ? "1" : "0");
            map.put("eh2_pg", c1120aB.e());
            map.put("eh3_pgs", c1120aB.d());
        }
        map.put("client", "android");
        map.put("clientfrom", "native");
        map.put("suppcheck", "1");
        map.put("state", this.f11801i);
        return o.c.a("L29hdXRoLzIuMC9hdXRob3JpemU=") + "?" + o.g.b(map);
    }

    public class g {

        /* renamed from: a, reason: collision with root package name */
        public String f11820a;

        public g() {
            this.f11820a = null;
        }

        public void a() {
            this.f11820a = null;
        }

        public /* synthetic */ g(i iVar, n nVar) {
            this();
        }
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11794b = new HashMap();
        n nVar = null;
        this.f11796d = new g(this, nVar);
        this.f11804l = new n(this);
        this.f11805m = new h(this, nVar);
        B();
    }

    public i(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11794b = new HashMap();
        n nVar = null;
        this.f11796d = new g(this, nVar);
        this.f11804l = new n(this);
        this.f11805m = new h(this, nVar);
        B();
    }
}
