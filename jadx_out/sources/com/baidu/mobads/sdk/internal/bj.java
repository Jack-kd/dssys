package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.core.common.f.p;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.mobads.sdk.internal.a.c;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Observable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class bj extends Observable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11164a = "b_f";

    /* renamed from: b, reason: collision with root package name */
    public static final String f11165b = "XAbstractProdTemplate";

    /* renamed from: c, reason: collision with root package name */
    public static final String f11166c = "error_message";

    /* renamed from: d, reason: collision with root package name */
    public static final String f11167d = "error_code";

    /* renamed from: e, reason: collision with root package name */
    public static final String f11168e = "error_uniqueid";

    /* renamed from: f, reason: collision with root package name */
    protected static final String f11169f = "instanceInfo";

    /* renamed from: g, reason: collision with root package name */
    protected static final String f11170g = "showState";

    /* renamed from: h, reason: collision with root package name */
    protected RelativeLayout f11171h;

    /* renamed from: i, reason: collision with root package name */
    protected Context f11172i;

    /* renamed from: j, reason: collision with root package name */
    protected String f11173j;

    /* renamed from: o, reason: collision with root package name */
    public HashMap<String, String> f11178o;

    /* renamed from: p, reason: collision with root package name */
    public String f11179p;

    /* renamed from: q, reason: collision with root package name */
    public String f11180q;

    /* renamed from: k, reason: collision with root package name */
    protected bv f11174k = bv.a();

    /* renamed from: m, reason: collision with root package name */
    public IAdInterListener f11176m = null;

    /* renamed from: n, reason: collision with root package name */
    public boolean f11177n = true;

    /* renamed from: r, reason: collision with root package name */
    public int f11181r = -1;

    /* renamed from: s, reason: collision with root package name */
    protected long f11182s = 0;

    /* renamed from: l, reason: collision with root package name */
    public IOAdEventListener f11175l = new a();

    public class a implements IOAdEventListener {
        public a() {
        }

        private String a(IOAdEvent iOAdEvent) {
            Map<String, Object> data;
            Object obj;
            if (iOAdEvent == null) {
                return null;
            }
            String message = iOAdEvent.getMessage();
            return (!TextUtils.isEmpty(message) || (data = iOAdEvent.getData()) == null || (obj = data.get("msg")) == null || !(obj instanceof String)) ? message : (String) obj;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEventListener
        public void run(IOAdEvent iOAdEvent) {
            bj.a(new bm(this, iOAdEvent));
        }
    }

    public bj(Context context) {
        this.f11172i = context;
        aa.a().a(this.f11172i, new bk(this));
    }

    public abstract void a();

    public void a(IOAdEvent iOAdEvent) {
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
    }

    public void e(IOAdEvent iOAdEvent) {
    }

    public void f(IOAdEvent iOAdEvent) {
    }

    public void g(String str) {
    }

    public void h(IOAdEvent iOAdEvent) {
    }

    public void i(IOAdEvent iOAdEvent) {
    }

    public void j(IOAdEvent iOAdEvent) {
    }

    public void k(IOAdEvent iOAdEvent) {
    }

    public void l(IOAdEvent iOAdEvent) {
    }

    public void m() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.addEventListener(com.baidu.mobads.sdk.internal.a.c.f10936h, new c.a());
            this.f11176m.addEventListener(z.f11718H, this.f11175l);
            this.f11176m.addEventListener(z.f11720J, this.f11175l);
            this.f11176m.addEventListener(z.f11722L, this.f11175l);
            this.f11176m.addEventListener(z.f11723M, this.f11175l);
            this.f11176m.addEventListener(z.f11733W, this.f11175l);
            this.f11176m.addEventListener(z.f11754r, this.f11175l);
            this.f11176m.addEventListener(z.f11734X, this.f11175l);
            this.f11176m.addEventListener(z.f11755s, this.f11175l);
            this.f11176m.addEventListener(z.f11724N, this.f11175l);
            this.f11176m.addEventListener(z.f11725O, this.f11175l);
            this.f11176m.addEventListener(z.f11721K, this.f11175l);
            this.f11176m.addEventListener(z.f11714D, this.f11175l);
            this.f11176m.addEventListener(z.ac, this.f11175l);
            this.f11176m.addEventListener(z.ad, this.f11175l);
            this.f11176m.addEventListener(z.ae, this.f11175l);
            this.f11176m.addEventListener(z.aa, this.f11175l);
            this.f11176m.addEventListener(z.f11732V, this.f11175l);
            this.f11176m.addEventListener(z.af, this.f11175l);
            this.f11176m.addEventListener(z.ag, this.f11175l);
            this.f11176m.addEventListener(z.ah, this.f11175l);
            this.f11176m.addEventListener(z.ai, this.f11175l);
            this.f11176m.addEventListener(z.aj, this.f11175l);
            this.f11176m.addEventListener(z.ak, this.f11175l);
            this.f11176m.addEventListener(z.al, this.f11175l);
            this.f11176m.addEventListener(z.am, this.f11175l);
            this.f11176m.addEventListener(z.ab, this.f11175l);
            this.f11176m.addEventListener(z.an, this.f11175l);
            this.f11176m.addEventListener(z.f11735Y, this.f11175l);
            this.f11176m.addEventListener(z.ao, this.f11175l);
            this.f11176m.addEventListener(z.ap, this.f11175l);
            this.f11176m.addEventListener(z.aq, this.f11175l);
        }
    }

    public void n() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onAttachedToWindow();
        }
    }

    public void o() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onDetachedFromWindow();
        }
    }

    public void p() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.destroyAd();
        }
    }

    public void q() {
    }

    public void r() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.removeAllListeners();
        }
    }

    public void s() {
    }

    public void t() {
    }

    public void u() {
    }

    public void v() {
    }

    public View w() {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            return iAdInterListener.getAdContainerView();
        }
        return null;
    }

    public void a(String str, boolean z2) {
    }

    public void b(IOAdEvent iOAdEvent) {
    }

    public void c(IOAdEvent iOAdEvent) {
    }

    public void d(IOAdEvent iOAdEvent) {
    }

    public void e(String str) {
    }

    public void f(String str) {
    }

    public void g(IOAdEvent iOAdEvent) {
        r();
    }

    public void h() {
        this.f11176m = (IAdInterListener) av.a(z.f11748l, bu.a(this.f11172i), (Class<?>[]) new Class[]{Context.class}, this.f11172i);
        if (this.f11177n) {
            return;
        }
        a();
    }

    public void i() {
        a("SDK未初始化", 1, "");
    }

    public JSONObject j() {
        return new JSONObject();
    }

    public JSONObject k() {
        return new JSONObject();
    }

    public String l() {
        JSONObject jSONObjectJ = j();
        JSONObject jSONObjectK = k();
        HashMap map = new HashMap();
        map.put("param_info", jSONObjectJ);
        map.put("ad_buss_param", jSONObjectK);
        a("get_request_token", (Map<String, Object>) map);
        Object obj = map.get("request_token");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public void a(boolean z2, Map<String, Object> map) {
    }

    public void b(String str, boolean z2) {
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            a("bidding id is empty", 2, "");
        }
        if (this.f11176m != null) {
            HashMap map = new HashMap();
            map.put(p.a.f3376c, str);
            a("load_bidding_ad", (Map<String, Object>) map);
            return;
        }
        a("Initialization doesn't finish yet.", 1, "");
    }

    public void d(String str) {
    }

    public String i(String str) {
        IXAdContainerFactory iXAdContainerFactoryC;
        aa aaVarA = aa.a();
        if (aaVarA == null || (iXAdContainerFactoryC = aaVarA.c()) == null) {
            return null;
        }
        Object remoteParam = iXAdContainerFactoryC.getRemoteParam(str, new Object[0]);
        if (remoteParam instanceof String) {
            return (String) remoteParam;
        }
        return null;
    }

    public void a(View view, JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(view, a(IAdInterListener.AdCommandType.AD_IMPRESSION, jSONObject));
        }
    }

    public void b(View view, JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(view, a(IAdInterListener.AdCommandType.AD_CLICK, jSONObject));
        }
    }

    public void a(Activity activity) {
        if (this.f11176m != null) {
            HashMap map = new HashMap();
            map.put("setActivity", activity);
            this.f11176m.onAdTaskProcess(a(IAdInterListener.AdCommandType.CHANGE_ACTIVITY, new JSONObject()), map);
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            a("bidding data is empty", 2, "");
        }
        if (this.f11176m != null) {
            HashMap map = new HashMap();
            map.put("bidding_data", str);
            a("load_bidding_data", (Map<String, Object>) map);
            return;
        }
        a("Initialization doesn't finish yet.", 1, "");
    }

    public void h(String str) {
        this.f11180q = str;
    }

    public void a(JSONObject jSONObject) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject));
        }
    }

    public void b(int i2) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onWindowVisibilityChanged(i2);
        }
    }

    public void a(JSONObject jSONObject, Map<String, Object> map) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject), map);
        }
    }

    public JSONObject b(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                return new JSONObject(map);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void a(String str, Map<String, Object> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", "server_bidding");
            jSONObject.put("msg", str);
            IAdInterListener iAdInterListener = this.f11176m;
            if (iAdInterListener != null) {
                iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.HANDLE_EVENT, jSONObject), map);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(JSONObject jSONObject) {
        int i2 = this.f11181r;
        if (i2 >= 0 && jSONObject != null) {
            try {
                jSONObject.put(f11164a, i2);
            } catch (Throwable th) {
                this.f11174k.a(th);
            }
        }
        if (jSONObject != null) {
            try {
                jSONObject.put(d.f11443b, this.f11182s);
            } catch (Throwable th2) {
                this.f11174k.a(th2);
            }
        }
    }

    public void a(String str, boolean z2, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        try {
            if (k.a(z2, linkedHashMap, biddingListener)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uniqueId", str);
                jSONObject.put("result", z2);
                try {
                    for (Map.Entry<String, Object> entry : linkedHashMap.entrySet()) {
                        jSONObject.put(String.valueOf(entry.getKey()), entry.getValue());
                    }
                } catch (Throwable th) {
                    az.f(th.getMessage());
                }
                IAdInterListener iAdInterListener = this.f11176m;
                if (iAdInterListener != null) {
                    iAdInterListener.onAdTaskProcess(a("onBiddingResult", jSONObject), (Map<String, Object>) null);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(String str, HashMap<String, Object> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_type", str);
            IAdInterListener iAdInterListener = this.f11176m;
            if (iAdInterListener != null) {
                iAdInterListener.onAdTaskProcess(a(IAdInterListener.AdCommandType.NOVEL_EVENT, jSONObject), map);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(boolean z2) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            iAdInterListener.onWindowFocusChanged(z2);
        }
    }

    public boolean a(int i2, KeyEvent keyEvent) {
        IAdInterListener iAdInterListener = this.f11176m;
        if (iAdInterListener != null) {
            return iAdInterListener.onKeyDown(i2, keyEvent);
        }
        return false;
    }

    public void a(int i2, String str, String str2) {
        r();
    }

    public void a(String str, int i2, String str2) {
        r();
    }

    public static void a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnable.run();
            } else {
                new Handler(Looper.getMainLooper()).post(new bl(runnable));
            }
        } catch (Exception unused) {
        }
    }

    public void a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.f11178o = (HashMap) map;
    }

    private String a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
        return "bdsdk://" + str + "?jsonObj=" + Uri.encode(jSONObject.toString());
    }
}
