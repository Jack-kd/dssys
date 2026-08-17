package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ak;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.network.d;
import com.sigmob.sdk.nativead.C1361q;
import com.sigmob.sdk.nativead.DialogC1346b;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeAdData;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.sigmob.sdk.nativead.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class DialogC1346b extends Dialog implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, InterfaceC1365v {

    /* renamed from: a, reason: collision with root package name */
    public static final String f38378a = "DisLikeDialog";

    /* renamed from: b, reason: collision with root package name */
    private final SoftReference<Context> f38379b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f38380c;

    /* renamed from: d, reason: collision with root package name */
    private final BaseAdUnit f38381d;

    /* renamed from: e, reason: collision with root package name */
    private WindNativeAdData.DislikeInteractionCallback f38382e;

    /* renamed from: f, reason: collision with root package name */
    private final List<String> f38383f;

    /* renamed from: g, reason: collision with root package name */
    private TextView f38384g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f38385h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f38386i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f38387j;

    /* renamed from: k, reason: collision with root package name */
    private EditText f38388k;

    /* renamed from: l, reason: collision with root package name */
    private C1361q f38389l;

    /* renamed from: com.sigmob.sdk.nativead.b$1, reason: invalid class name */
    public class AnonymousClass1 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f38390a;

        public AnonymousClass1(Context context) {
            this.f38390a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Context context) {
            ak.a(context, "反馈上报成功", 0).show();
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(final VolleyError volleyError) {
            Handler handler = WindAds.sharedAds().getHandler();
            final Context context = this.f38390a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.nativead.M
                @Override // java.lang.Runnable
                public final void run() {
                    DialogC1346b.AnonymousClass1.a(volleyError, context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VolleyError volleyError, Context context) {
            NetworkResponse networkResponse;
            ak.a(context, "反馈上报失败，错误码: " + ((volleyError == null || (networkResponse = volleyError.networkResponse) == null) ? 0 : networkResponse.statusCode), 1).show();
        }

        @Override // com.sigmob.sdk.base.network.d.a
        public void a(JSONObject jSONObject) {
            Handler handler = WindAds.sharedAds().getHandler();
            final Context context = this.f38390a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.nativead.L
                @Override // java.lang.Runnable
                public final void run() {
                    DialogC1346b.AnonymousClass1.a(context);
                }
            });
        }
    }

    public DialogC1346b(Context context, BaseAdUnit baseAdUnit) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f38383f = new ArrayList();
        this.f38379b = new SoftReference<>(context);
        this.f38380c = context.getApplicationContext();
        this.f38381d = baseAdUnit;
        c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i2;
        String string;
        String str = "";
        if (view.equals(this.f38385h)) {
            String str2 = (String) this.f38385h.getText();
            a("dislike", PointCategory.ABNORMAL_SHOW, "", "");
            str = str2;
            i2 = 1;
        } else {
            if (view.equals(this.f38386i)) {
                string = (String) this.f38386i.getText();
                a("dislike", PointCategory.CANNOT_CLOSE, "", "");
                i2 = 2;
            } else if (view.equals(this.f38384g)) {
                string = (String) this.f38384g.getText();
                a("dislike", PointCategory.NOINTEREST_CLICK, "", "");
                i2 = 3;
            } else {
                i2 = 0;
                if (view.equals(this.f38387j) && com.sigmob.sdk.base.utils.v.b(this.f38388k)) {
                    string = this.f38388k.getText().toString();
                    if (TextUtils.isEmpty(string)) {
                        ak.a(com.sigmob.sdk.b.e(), "请输入反馈文字", 0).show();
                        return;
                    } else {
                        a("dislike", PointCategory.ADVICE, "", Base64.encodeToString(string.getBytes(), 0));
                        i2 = 5;
                    }
                }
            }
            str = string;
        }
        d();
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38382e;
        if (dislikeInteractionCallback == null || i2 == 0) {
            return;
        }
        dislikeInteractionCallback.onSelected(i2, str, true);
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(ResourceUtil.getLayoutId(this.f38380c, "sig_dislike_layout"));
        View viewFindViewById = findViewById(ResourceUtil.getId(this.f38380c, "sig_dislike_sv"));
        ViewGroup viewGroup = (ViewGroup) findViewById(ResourceUtil.getId(this.f38380c, "sig_dislike_ll"));
        viewGroup.setLongClickable(true);
        viewGroup.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sigmob.sdk.nativead.G
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f38276b.b(view);
            }
        });
        this.f38385h = (TextView) findViewById(ResourceUtil.getId(this.f38380c, "sig_not_show_tv"));
        this.f38386i = (TextView) findViewById(ResourceUtil.getId(this.f38380c, "sig_not_close_tv"));
        this.f38384g = (TextView) findViewById(ResourceUtil.getId(this.f38380c, "sig_dislike_tv"));
        this.f38387j = (TextView) findViewById(ResourceUtil.getId(this.f38380c, "sig_commit_sl"));
        this.f38388k = (EditText) findViewById(ResourceUtil.getId(this.f38380c, "sig_suggest_et"));
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.H
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38277b.a(view);
            }
        });
        this.f38384g.setOnClickListener(this);
        this.f38385h.setOnClickListener(this);
        this.f38386i.setOnClickListener(this);
        this.f38387j.setOnClickListener(this);
        this.f38388k.addTextChangedListener(new TextWatcher() { // from class: com.sigmob.sdk.nativead.b.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (TextUtils.isEmpty(editable.toString()) && com.sigmob.sdk.base.utils.v.b(DialogC1346b.this.f38387j)) {
                    DialogC1346b.this.f38387j.setTextColor(Color.parseColor("#C2C2C2"));
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                if (DialogC1346b.this.f38387j == null) {
                    return;
                }
                DialogC1346b.this.f38387j.setTextColor(Color.parseColor("#FE7E03"));
            }
        });
        C1361q c1361q = new C1361q(this.f38380c);
        this.f38389l = c1361q;
        c1361q.setList(this.f38383f);
        this.f38389l.setOnItemClickListener(new C1361q.e() { // from class: com.sigmob.sdk.nativead.I
            @Override // com.sigmob.sdk.nativead.C1361q.e
            public final void onItemClick(int i2, String str) {
                this.f38278a.a(i2, str);
            }
        });
        ((ViewGroup) findViewById(ResourceUtil.getId(this.f38380c, "sig_flow_sl"))).addView(this.f38389l, new ViewGroup.LayoutParams(-1, -2));
        setOnShowListener(this);
        setOnDismissListener(this);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        e();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        SigmobLog.i("DisLikeDialog#onDismiss");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38382e;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onCancel();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        SigmobLog.i("DisLikeDialog#onShow");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38382e;
        if (dislikeInteractionCallback != null) {
            dislikeInteractionCallback.onShow();
        }
        C1361q c1361q = this.f38389l;
        if (c1361q != null) {
            c1361q.b();
        }
    }

    private void c() {
        this.f38383f.clear();
        this.f38383f.add("违法违规");
        this.f38383f.add("疑似抄袭");
        this.f38383f.add("虚假欺诈");
        this.f38383f.add("低俗色情");
        this.f38383f.add("诱导点击");
    }

    private void d() {
        final Context contextE = com.sigmob.sdk.b.e();
        BaseAdUnit baseAdUnit = this.f38381d;
        if (baseAdUnit == null) {
            ak.a(contextE, "感谢反馈", 0).show();
            return;
        }
        baseAdUnit.dislikeReport();
        if (!com.sigmob.sdk.base.o.a().g()) {
            ak.a(contextE, "感谢反馈", 0).show();
            return;
        }
        final BidResponse bidResponseA = C1258h.a(this.f38381d.getRequestId());
        if (bidResponseA == null) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.nativead.J
            @Override // java.lang.Runnable
            public final void run() {
                this.f38279b.a(bidResponseA, contextE);
            }
        });
    }

    private void e() {
        int i2;
        Window window = getWindow();
        Context context = getContext();
        if (window == null) {
            return;
        }
        window.setGravity(17);
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i3 = context.getResources().getDisplayMetrics().widthPixels;
        int i4 = context.getResources().getDisplayMetrics().heightPixels;
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.0f, context);
        int i5 = -1;
        if (i4 > i3) {
            i2 = -1;
            i5 = i3 - iDipsToIntPixels;
        } else {
            i2 = i4 - iDipsToIntPixels;
        }
        attributes.width = i5;
        attributes.height = i2;
        window.setAttributes(attributes);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG <= 0) {
            return;
        }
        window.setWindowAnimations(iG);
    }

    public void b() {
        TextView textView = this.f38384g;
        if (textView != null) {
            textView.setOnClickListener(null);
            this.f38384g = null;
        }
        TextView textView2 = this.f38385h;
        if (textView2 != null) {
            textView2.setOnClickListener(null);
            this.f38385h = null;
        }
        TextView textView3 = this.f38386i;
        if (textView3 != null) {
            textView3.setOnClickListener(null);
            this.f38386i = null;
        }
        TextView textView4 = this.f38387j;
        if (textView4 != null) {
            textView4.setOnClickListener(null);
            this.f38387j = null;
        }
        if (this.f38382e != null) {
            this.f38382e = null;
        }
        setOnShowListener(null);
        setOnDismissListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(View view) {
        Context context;
        BaseAdUnit baseAdUnit = this.f38381d;
        if (baseAdUnit == null) {
            return false;
        }
        String str = "广告请求 ID\n" + baseAdUnit.getRequestId();
        SoftReference<Context> softReference = this.f38379b;
        if (softReference != null && (context = softReference.get()) != null && (context instanceof Activity)) {
            Activity activity = (Activity) context;
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                new DialogC1347c(activity, str).show();
                return true;
            }
        }
        return false;
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1365v
    public void a() {
        BaseAdUnit baseAdUnit = this.f38381d;
        if (baseAdUnit == null || (baseAdUnit.isDislikeReported() && this.f38381d.getAd_type() != 5)) {
            ak.a(getContext(), "已提交反馈", 0).show();
        } else {
            show();
            a("dislike", "click", "", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str) {
        d();
        a("dislike", PointCategory.REPORT, String.valueOf(i2), "");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38382e;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onSelected(4, str, true);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BidResponse bidResponse, Context context) {
        com.sigmob.sdk.base.network.d dVar = new com.sigmob.sdk.base.network.d(com.sigmob.sdk.base.o.a().s(), bidResponse, new AnonymousClass1(context));
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            return;
        }
        sigRequestQueue.add(dVar);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1365v
    public void a(WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f38382e = dislikeInteractionCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setAdtype(String.valueOf(this.f38381d.getAd_type()));
            pointEntitySigmob.setLoad_id(this.f38381d.getLoad_id());
            pointEntitySigmob.setRequest_id(this.f38381d.getRequestId());
            pointEntitySigmob.setReason(str);
            pointEntitySigmob.setContent(str2);
            pointEntitySigmob.setVid(this.f38381d.getVid());
        }
    }

    private void a(String str, String str2, final String str3, final String str4) {
        com.sigmob.sdk.base.common.ad.a(str, str2, this.f38381d, new ad.a() { // from class: com.sigmob.sdk.nativead.K
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f38282a.a(str3, str4, obj);
            }
        });
    }
}
