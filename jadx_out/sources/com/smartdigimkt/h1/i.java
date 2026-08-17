package com.smartdigimkt.h1;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.Window;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.r2.v;
import com.smartdigimkt.r2.y;
import com.smartdigimkt.sdk.basead.ui.web.BaseWebView;
import com.smartdigimkt.x.m;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class i extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public final String f40432a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.m3.c f40433b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.l3.a f40434c;

    /* renamed from: d, reason: collision with root package name */
    public m f40435d;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f40436e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f40437f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f40438g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f40439h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f40440i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f40441j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f40442k;

    /* renamed from: l, reason: collision with root package name */
    public TextView f40443l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f40444m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f40445n;

    /* renamed from: o, reason: collision with root package name */
    public TextView f40446o;

    /* renamed from: p, reason: collision with root package name */
    public TextView f40447p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f40448q;

    /* renamed from: r, reason: collision with root package name */
    public String f40449r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f40450s;

    /* renamed from: t, reason: collision with root package name */
    public FrameLayout f40451t;

    /* renamed from: u, reason: collision with root package name */
    public BaseWebView f40452u;

    /* renamed from: v, reason: collision with root package name */
    public String f40453v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f40454w;

    /* renamed from: x, reason: collision with root package name */
    public final a f40455x;

    public i(int i2, Activity activity) {
        super(activity, i2);
        this.f40432a = i.class.getSimpleName();
        this.f40453v = "";
        this.f40454w = false;
        this.f40455x = new a(this);
    }

    public static void a(i iVar) {
        String str;
        String str2;
        com.smartdigimkt.m3.c cVar = iVar.f40433b;
        if (cVar != null) {
            str = cVar.f41798S;
            if (TextUtils.isEmpty(str)) {
                String str3 = iVar.f40433b.f41811c0;
                if (!TextUtils.isEmpty(str3)) {
                    try {
                        JSONArray jSONArray = new JSONObject(str3).getJSONArray("seatbid");
                        if (jSONArray != null && jSONArray.length() > 0) {
                            String strOptString = jSONArray.optString(0);
                            if (!TextUtils.isEmpty(strOptString)) {
                                iVar.f40433b.f41798S = strOptString;
                                str = strOptString;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        BaseWebView baseWebView = iVar.f40452u;
        String strEncodeToString = Base64.encodeToString(str.getBytes(), 2);
        if (baseWebView == null || baseWebView.isDestroyed()) {
            return;
        }
        if (TextUtils.isEmpty(strEncodeToString)) {
            str2 = "javascript:window.HybridInteract.fireEvent('setData', '');";
        } else {
            str2 = "javascript:window.HybridInteract.fireEvent('setData','" + com.smartdigimkt.g1.c.a(strEncodeToString) + "');";
        }
        try {
            baseWebView.loadUrl(str2);
        } catch (Throwable unused2) {
        }
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        setContentView(k.a(context, "myoffer_feedback", "layout"));
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            if (context.getResources().getDisplayMetrics().widthPixels > context.getResources().getDisplayMetrics().heightPixels) {
                window.setGravity(5);
                window.setLayout((int) ((context.getResources().getDisplayMetrics().density * 376.0f) + 0.5f), -1);
            } else {
                window.setGravity(80);
                window.setLayout(-1, -2);
            }
        }
        Context context2 = getContext();
        this.f40438g = (ImageView) findViewById(k.a(context2, "myoffer_feedback_iv_close", "id"));
        this.f40436e = (RelativeLayout) findViewById(k.a(context2, "myoffer_feedback_container", "id"));
        this.f40451t = (FrameLayout) findViewById(k.a(context2, "myoffer_feedback_privacy_web_container", "id"));
        this.f40437f = (EditText) findViewById(k.a(context2, "myoffer_feedback_et", "id"));
        this.f40439h = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_commit", "id"));
        this.f40440i = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_1", "id"));
        this.f40441j = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_2", "id"));
        this.f40442k = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_3", "id"));
        this.f40443l = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_4", "id"));
        this.f40444m = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_5", "id"));
        this.f40445n = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_6", "id"));
        this.f40446o = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_7", "id"));
        this.f40447p = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_8", "id"));
        this.f40448q = (TextView) findViewById(k.a(context2, "myoffer_feedback_tv_9", "id"));
        this.f40438g.setOnClickListener(new e(this));
        this.f40440i.setOnClickListener(this.f40455x);
        this.f40441j.setOnClickListener(this.f40455x);
        this.f40442k.setOnClickListener(this.f40455x);
        this.f40443l.setOnClickListener(this.f40455x);
        this.f40444m.setOnClickListener(this.f40455x);
        this.f40445n.setOnClickListener(this.f40455x);
        this.f40446o.setOnClickListener(this.f40455x);
        this.f40447p.setOnClickListener(this.f40455x);
        this.f40448q.setOnClickListener(this.f40455x);
        this.f40437f.addTextChangedListener(new f(this));
        this.f40439h.setOnClickListener(new g(this));
        if (TextUtils.isEmpty(this.f40453v)) {
            this.f40436e.setVisibility(0);
            this.f40451t.setVisibility(8);
            com.smartdigimkt.y3.h.a("", this.f40433b, this.f40434c);
        } else {
            this.f40436e.setVisibility(8);
            this.f40451t.setVisibility(0);
            BaseWebView baseWebView = new BaseWebView(context2);
            this.f40452u = baseWebView;
            baseWebView.setBackgroundColor(-1);
            y.a((WebView) this.f40452u, (com.smartdigimkt.s2.b) new c(this), false);
            this.f40452u.setWebChromeClient(new v(new d(this)));
            this.f40452u.loadUrl(this.f40453v);
            this.f40451t.addView(this.f40452u);
        }
        setOnDismissListener(new b(this));
    }
}
