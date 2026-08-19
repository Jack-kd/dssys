package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigImage;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.SigVideo;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.views.DialogC1305q;
import com.sigmob.sdk.videoAd.C1377d;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.NativeADEventListener;
import com.sigmob.windad.natives.WindNativeAdData;
import io.flutter.plugin.platform.PlatformPlugin;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* loaded from: classes4.dex */
public class ab implements View.OnClickListener, View.OnTouchListener, InterfaceC1345a, ac, InterfaceC1351g, WindNativeAdData.DislikeInteractionCallback {

    /* renamed from: M, reason: collision with root package name */
    private static final Stack<ViewTreeObserverOnGlobalLayoutListenerC1367x> f38311M = new Stack<>();

    /* renamed from: a, reason: collision with root package name */
    public static final String f38312a = "ab";

    /* renamed from: e, reason: collision with root package name */
    private static final int f38313e = 1;

    /* renamed from: f, reason: collision with root package name */
    private static final int f38314f = 2;

    /* renamed from: g, reason: collision with root package name */
    private static final int f38315g = 3;

    /* renamed from: h, reason: collision with root package name */
    private static final int f38316h = 4;

    /* renamed from: A, reason: collision with root package name */
    private boolean f38317A;

    /* renamed from: D, reason: collision with root package name */
    private boolean f38320D;

    /* renamed from: E, reason: collision with root package name */
    private boolean f38321E;

    /* renamed from: F, reason: collision with root package name */
    private List<View> f38322F;

    /* renamed from: G, reason: collision with root package name */
    private long f38323G;

    /* renamed from: J, reason: collision with root package name */
    private WindNativeAdData.DislikeInteractionCallback f38326J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f38327K;

    /* renamed from: L, reason: collision with root package name */
    private ViewTreeObserverOnGlobalLayoutListenerC1367x f38328L;

    /* renamed from: b, reason: collision with root package name */
    protected WindNativeAdData f38330b;

    /* renamed from: c, reason: collision with root package name */
    protected BaseAdUnit f38331c;

    /* renamed from: d, reason: collision with root package name */
    protected InterfaceC1355k f38332d;

    /* renamed from: i, reason: collision with root package name */
    private WindAdMetaData f38333i;

    /* renamed from: j, reason: collision with root package name */
    private r f38334j;

    /* renamed from: k, reason: collision with root package name */
    private C1360p f38335k;

    /* renamed from: n, reason: collision with root package name */
    private C1350f f38338n;

    /* renamed from: o, reason: collision with root package name */
    private C1358n f38339o;

    /* renamed from: p, reason: collision with root package name */
    private MotionEvent f38340p;

    /* renamed from: q, reason: collision with root package name */
    private C1349e f38341q;

    /* renamed from: r, reason: collision with root package name */
    private NativeADEventListener f38342r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f38343s;

    /* renamed from: t, reason: collision with root package name */
    private ViewGroup f38344t;

    /* renamed from: u, reason: collision with root package name */
    private ViewGroup.LayoutParams f38345u;

    /* renamed from: v, reason: collision with root package name */
    private Bitmap f38346v;

    /* renamed from: w, reason: collision with root package name */
    private DialogC1305q f38347w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f38348x;

    /* renamed from: y, reason: collision with root package name */
    private InterfaceC1365v f38349y;

    /* renamed from: z, reason: collision with root package name */
    private boolean f38350z;

    /* renamed from: l, reason: collision with root package name */
    private List<View> f38336l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    private final HashSet<View> f38337m = new HashSet<>();

    /* renamed from: B, reason: collision with root package name */
    private boolean f38318B = true;

    /* renamed from: C, reason: collision with root package name */
    private boolean f38319C = false;

    /* renamed from: H, reason: collision with root package name */
    private List<View> f38324H = new ArrayList();

    /* renamed from: I, reason: collision with root package name */
    private final List<View> f38325I = new ArrayList();

    /* renamed from: N, reason: collision with root package name */
    private DialogC1305q.b f38329N = new DialogC1305q.b() { // from class: com.sigmob.sdk.nativead.ab.5
        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
        public void a() {
            if (ab.this.f38347w != null) {
                ab.this.f38347w.dismiss();
                ab.this.f38347w.c();
                ab.this.f38347w = null;
            }
            ab.this.f38348x = false;
            ab.this.f38331c.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_PREVIEW;
            ab.this.j().a(C1244a.f35679g, 0);
        }

        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
        public void b() {
            if (ab.this.f38334j != null) {
                ab.this.r().a();
            }
            ab.this.j().a(C1244a.f35678f, 0);
        }

        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
        public void a(Error error) {
        }

        @Override // com.sigmob.sdk.base.views.DialogC1305q.b
        public void a(String str, String str2) throws UnsupportedEncodingException {
            BaseAdUnit baseAdUnit = ab.this.f38331c;
            if (baseAdUnit == null) {
                return;
            }
            baseAdUnit.getClickCommon().sld = "0";
            ab.this.f38331c.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
            ab.this.f38331c.getClickCommon().click_scene = "appinfo";
            ab.this.f38331c.getClickCommon().is_final_click = true;
            if (ab.this.f38348x) {
                ab.this.y().a(com.sigmob.sdk.base.a.PREVIEW, str, str2, true);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public Context N() {
        return com.sigmob.sdk.b.e();
    }

    private void O() {
        try {
            Activity activityD = com.sigmob.sdk.base.utils.w.d(P());
            if (this.f38347w == null && activityD != null) {
                DialogC1305q dialogC1305q = new DialogC1305q(activityD, this.f38331c);
                this.f38347w = dialogC1305q;
                dialogC1305q.a(this.f38329N);
            }
            DialogC1305q dialogC1305q2 = this.f38347w;
            if (dialogC1305q2 == null || !dialogC1305q2.a() || this.f38348x) {
                return;
            }
            this.f38331c.getClickCommon().click_area = "appinfo";
            this.f38347w.show();
            this.f38348x = true;
        } catch (Exception e2) {
            SigmobLog.e("openFourElements fail:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View P() {
        C1360p c1360p = this.f38335k;
        if (c1360p == null) {
            return null;
        }
        return (View) c1360p.getParent();
    }

    private boolean Q() {
        return this.f38331c.isExpiredAd();
    }

    private boolean R() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() throws UnsupportedEncodingException {
        a(4, (MotionEvent) null);
    }

    private r b(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof r) {
                return (r) childAt;
            }
        }
        return null;
    }

    private C1360p c(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof C1360p) {
                return (C1360p) childAt;
            }
        }
        return null;
    }

    public int A() {
        int interactionType = this.f38331c.getInteractionType();
        if (interactionType == 2) {
            return 1;
        }
        return interactionType == 0 ? 0 : 2;
    }

    public String B() {
        return k().getCTAText();
    }

    public Bitmap C() {
        return this.f38346v;
    }

    public void D() {
        r rVar;
        InterfaceC1363t interfaceC1363tR;
        if (this.f38343s || !this.f38320D || (rVar = this.f38334j) == null || rVar.getParent() == null || (interfaceC1363tR = r()) == null) {
            return;
        }
        interfaceC1363tR.c();
    }

    public void E() {
        InterfaceC1363t interfaceC1363tR;
        if (this.f38343s || (interfaceC1363tR = r()) == null) {
            return;
        }
        this.f38317A = true;
        interfaceC1363tR.a();
    }

    public void F() {
        r rVar;
        if (this.f38344t != null && (rVar = this.f38334j) != null) {
            ViewParent parent = rVar.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this.f38334j);
            }
            this.f38344t.removeAllViews();
            ViewGroup.LayoutParams layoutParams = this.f38345u;
            if (layoutParams != null) {
                this.f38344t.addView(this.f38334j, layoutParams);
            } else {
                this.f38344t.addView(this.f38334j);
            }
            if (!this.f38337m.contains(this.f38334j)) {
                this.f38337m.add(this.f38334j);
            }
        }
        this.f38344t = null;
        this.f38345u = null;
    }

    public void G() {
        r rVar;
        InterfaceC1363t interfaceC1363tR;
        if (this.f38343s || !this.f38320D || (rVar = this.f38334j) == null || rVar.getParent() == null || (interfaceC1363tR = r()) == null) {
            return;
        }
        interfaceC1363tR.b();
    }

    public void H() {
        InterfaceC1363t interfaceC1363tR;
        if (this.f38343s || (interfaceC1363tR = r()) == null) {
            return;
        }
        interfaceC1363tR.d();
    }

    public String I() {
        BiddingResponse biddingResponse;
        Integer num;
        BaseAdUnit baseAdUnit = this.f38331c;
        return (baseAdUnit == null || (biddingResponse = baseAdUnit.bidding_response) == null || (num = biddingResponse.ecpm) == null) ? "" : String.valueOf(num);
    }

    public String J() {
        BiddingResponse biddingResponse;
        BaseAdUnit baseAdUnit = this.f38331c;
        return (baseAdUnit == null || (biddingResponse = baseAdUnit.bidding_response) == null) ? "" : biddingResponse.currency;
    }

    public String K() {
        SigVideo nativeVideo = this.f38331c.getNativeVideo();
        if (nativeVideo == null) {
            return null;
        }
        return nativeVideo.getThumbUrl();
    }

    public WindAdMetaData L() {
        if (this.f38333i == null) {
            this.f38333i = WindAdMetaData.create(this.f38331c);
        }
        return this.f38333i;
    }

    public Map<String, String> M() {
        BaseAdUnit baseAdUnit = this.f38331c;
        if (baseAdUnit == null) {
            return null;
        }
        return baseAdUnit.getSaasOptions();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1351g
    public void g() {
        SigmobLog.d("----------onAdDetailShow----------");
        if (y() != null) {
            y().c(N(), this.f38331c);
        }
        this.f38343s = true;
        NativeADEventListener nativeADEventListener = this.f38342r;
        if (nativeADEventListener != null) {
            nativeADEventListener.onAdDetailShow();
        }
    }

    @Override // com.sigmob.sdk.nativead.ac
    public BaseAdUnit k() {
        return this.f38331c;
    }

    @Override // com.sigmob.sdk.nativead.ac
    public WindNativeAdData l() {
        return this.f38330b;
    }

    @Override // com.sigmob.sdk.nativead.ac
    public C1358n m() {
        if (this.f38327K) {
            return this.f38339o;
        }
        if (this.f38339o == null) {
            if (this.f38331c.getadPrivacy() == null) {
                return this.f38339o;
            }
            C1358n c1358n = new C1358n(N());
            this.f38339o = c1358n;
            c1358n.setOnTouchListener(this);
            this.f38339o.a(this.f38331c.getAppVersion(), this.f38331c.getCompanyName());
        }
        return this.f38339o;
    }

    public boolean n() {
        C1350f c1350f = this.f38338n;
        if (c1350f == null) {
            return false;
        }
        return c1350f.a(this.f38331c);
    }

    public C1350f o() {
        if (this.f38338n == null) {
            this.f38338n = new C1350f(this);
        }
        return this.f38338n;
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
    public void onCancel() {
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38326J;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onCancel();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
    public void onSelected(int i2, String str, boolean z2) {
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38326J;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onSelected(i2, str, z2);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
    public void onShow() {
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f38326J;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onShow();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view == null || motionEvent == null || ((motionEvent.getAction() == 0 && this.f38323G > 0 && System.currentTimeMillis() - this.f38323G < 500) || this.f38331c == null)) {
            return false;
        }
        try {
        } catch (Throwable th) {
            SigmobLog.e("onTouch error", th);
        }
        if (motionEvent.getAction() != 1) {
            this.f38323G = System.currentTimeMillis();
            this.f38340p = motionEvent;
            return true;
        }
        this.f38331c.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_PREVIEW;
        this.f38331c.getClickCommon().sld = "0";
        if (view == this.f38339o) {
            SigmobLog.d("click mSigAppInfoView");
            a(1, motionEvent);
            return true;
        }
        SigmobLog.d("click " + view);
        List<View> list = this.f38336l;
        int i2 = 3;
        if (list != null) {
            if ((list.contains(view) ? view : a(this.f38336l, motionEvent)) != null) {
                SigmobLog.d("click ctaClickView");
                this.f38331c.getClickCommon().click_scene = ClickCommon.CLICK_SCENE_PREVIEW;
                this.f38331c.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                a(3, motionEvent);
                return true;
            }
        }
        if (this.f38337m.isEmpty()) {
            return false;
        }
        if (!this.f38337m.contains(view)) {
            view = a(this.f38337m, motionEvent);
        }
        if (view != null) {
            SigmobLog.d("click mCreativeViews");
            r rVar = this.f38334j;
            if (rVar == null || !rVar.a(motionEvent)) {
                i2 = 2;
            }
            a(i2, motionEvent);
            return true;
        }
        return false;
    }

    public int p() {
        int width;
        View viewP = P();
        return (this.f38334j == null || viewP == null || (width = viewP.getWidth()) <= 0) ? PlatformPlugin.DEFAULT_SYSTEM_UI : width;
    }

    public View q() {
        return this.f38334j;
    }

    public InterfaceC1363t r() {
        r rVar = this.f38334j;
        if (rVar == null) {
            return null;
        }
        return rVar.getSigVideoAdController();
    }

    public int s() {
        InterfaceC1363t interfaceC1363tR = r();
        if (interfaceC1363tR == null) {
            return 0;
        }
        return interfaceC1363tR.e() * 1000;
    }

    public int t() {
        InterfaceC1363t interfaceC1363tR = r();
        if (interfaceC1363tR == null) {
            return 0;
        }
        return interfaceC1363tR.j() * 1000;
    }

    public int u() {
        InterfaceC1363t interfaceC1363tR = r();
        if (interfaceC1363tR == null) {
            return 0;
        }
        return interfaceC1363tR.f();
    }

    public int v() {
        View viewQ = q();
        View viewP = P();
        if (viewQ == null || viewP == null || viewP.getWidth() <= 0) {
            return 720;
        }
        return (int) (viewP.getWidth() / this.f38331c.getAdPercent());
    }

    public void w() {
        a(this.f38337m, (View.OnTouchListener) null);
        a(this.f38336l, (View.OnTouchListener) null);
        this.f38337m.clear();
        List<View> list = this.f38336l;
        if (list != null) {
            list.clear();
        }
        List<View> list2 = this.f38324H;
        if (list2 != null) {
            list2.clear();
        }
        this.f38342r = null;
        this.f38332d = null;
    }

    public void x() {
        BaseAdUnit baseAdUnit = this.f38331c;
        SigmobLog.i(String.format("native ad data %s is Destroy", baseAdUnit != null ? baseAdUnit.getVid() : "null"));
        w();
        List<View> list = this.f38322F;
        if (list != null) {
            list.clear();
        }
        r rVar = this.f38334j;
        if (rVar != null) {
            com.sigmob.sdk.base.utils.w.a(rVar);
            this.f38334j.c();
            this.f38334j = null;
        }
        BaseAdUnit baseAdUnit2 = this.f38331c;
        if (baseAdUnit2 != null && baseAdUnit2.getSessionManager() != null) {
            j().a("ad_hide", 0);
            j().a();
        }
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = this.f38328L;
        if (viewTreeObserverOnGlobalLayoutListenerC1367x != null) {
            viewTreeObserverOnGlobalLayoutListenerC1367x.c();
            f38311M.remove(this.f38328L);
            com.sigmob.sdk.base.utils.w.a(this.f38328L);
            this.f38328L = null;
        }
        C1258h.g().e(this.f38331c);
        C1258h.b(this.f38331c);
        DialogC1305q dialogC1305q = this.f38347w;
        if (dialogC1305q != null) {
            dialogC1305q.dismiss();
            this.f38347w.c();
            this.f38347w = null;
        }
        InterfaceC1365v interfaceC1365v = this.f38349y;
        if (interfaceC1365v != null && (interfaceC1365v instanceof DialogC1346b)) {
            interfaceC1365v.a(null);
            DialogC1346b dialogC1346b = (DialogC1346b) this.f38349y;
            dialogC1346b.dismiss();
            dialogC1346b.b();
            this.f38349y = null;
        }
        this.f38326J = null;
        this.f38329N = null;
        C1360p c1360p = this.f38335k;
        if (c1360p != null) {
            c1360p.setAdVisibilityStatusChangeListener(null);
            com.sigmob.sdk.base.utils.w.a(this.f38335k);
            this.f38335k = null;
        }
        C1350f c1350f = this.f38338n;
        if (c1350f != null) {
            c1350f.b(this.f38331c);
            this.f38338n = null;
        }
        BaseAdUnit baseAdUnit3 = this.f38331c;
        if (baseAdUnit3 != null) {
            baseAdUnit3.destroy();
        }
    }

    @Override // com.sigmob.sdk.nativead.ac
    public C1349e y() {
        BaseAdUnit baseAdUnit;
        if (this.f38341q == null && (baseAdUnit = this.f38331c) != null) {
            this.f38341q = (C1349e) baseAdUnit.getAdConfig();
        }
        return this.f38341q;
    }

    public void z() throws UnsupportedEncodingException {
        Bundle bundle = new Bundle();
        if (this.f38334j != null && y().l()) {
            ae aeVar = new ae();
            int[] iArr = new int[2];
            this.f38334j.getLocationOnScreen(iArr);
            aeVar.a(iArr[0]);
            aeVar.b(iArr[1]);
            aeVar.c(this.f38334j.getMeasuredWidth());
            aeVar.d(this.f38334j.getMeasuredHeight());
            bundle.putParcelable("attr", aeVar);
            this.f38344t = (ViewGroup) this.f38334j.getParent();
            this.f38345u = this.f38334j.getLayoutParams();
            C1369z.a((C1357m) this.f38334j);
            SigMacroCommon macroCommon = this.f38331c.getMacroCommon();
            if (macroCommon != null) {
                macroCommon.addMarcoKey(SigMacroCommon._SCENE_, "3");
            }
            this.f38343s = true;
        }
        C1358n c1358n = this.f38339o;
        if (c1358n != null) {
            c1358n.setVisibility(4);
        }
        o().a(this.f38331c, bundle);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1284x
    public void b() {
        C1349e c1349eY = y();
        if (c1349eY == null) {
            return;
        }
        c1349eY.b(N(), this.f38331c);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1345a
    public void c() {
        if (this.f38320D) {
            ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = this.f38328L;
            if (viewTreeObserverOnGlobalLayoutListenerC1367x != null) {
                viewTreeObserverOnGlobalLayoutListenerC1367x.b();
                f38311M.remove(this.f38328L);
            }
            InterfaceC1363t interfaceC1363tR = r();
            if (interfaceC1363tR != null) {
                interfaceC1363tR.a();
            }
            SigmobLog.d("-----------onAdViewPauseImpression---------");
            this.f38320D = false;
        }
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1345a
    public void d() {
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367xLastElement;
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x;
        if (this.f38328L != null) {
            Stack<ViewTreeObserverOnGlobalLayoutListenerC1367x> stack = f38311M;
            if (!stack.isEmpty() && (viewTreeObserverOnGlobalLayoutListenerC1367xLastElement = stack.lastElement()) != null && viewTreeObserverOnGlobalLayoutListenerC1367xLastElement == (viewTreeObserverOnGlobalLayoutListenerC1367x = this.f38328L)) {
                viewTreeObserverOnGlobalLayoutListenerC1367x.a();
            }
        }
        if (this.f38343s || this.f38320D) {
            return;
        }
        this.f38320D = true;
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x2 = this.f38328L;
        if (viewTreeObserverOnGlobalLayoutListenerC1367x2 != null) {
            Stack<ViewTreeObserverOnGlobalLayoutListenerC1367x> stack2 = f38311M;
            if (!stack2.contains(viewTreeObserverOnGlobalLayoutListenerC1367x2)) {
                stack2.push(this.f38328L);
                this.f38328L.a();
            }
        }
        r rVar = this.f38334j;
        if (rVar == null || rVar.getParent() == null) {
            return;
        }
        C1349e c1349eY = y();
        if (!this.f38317A && c1349eY != null && c1349eY.u()) {
            r().c();
        }
        SigmobLog.d("------------onAdViewStartImpression------------");
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1345a
    public void e() {
        if (this.f38343s || N() == null || !this.f38321E) {
            return;
        }
        this.f38337m.clear();
        this.f38321E = false;
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = this.f38328L;
        if (viewTreeObserverOnGlobalLayoutListenerC1367x != null) {
            viewTreeObserverOnGlobalLayoutListenerC1367x.b();
            f38311M.remove(this.f38328L);
        }
        SigmobLog.d("------------onAdViewRemoved----------" + hashCode());
        InterfaceC1363t interfaceC1363tR = r();
        if (interfaceC1363tR != null) {
            interfaceC1363tR.a();
        }
        this.f38320D = false;
        C1360p c1360p = this.f38335k;
        if (c1360p != null && c1360p.hasWindowFocus()) {
            this.f38350z = false;
        }
        ah ahVarJ = j();
        if (ahVarJ != null) {
            ahVarJ.a("ad_hide", 0);
        }
        if (this.f38318B || this.f38319C || ahVarJ == null) {
            return;
        }
        ahVarJ.a("video_link", 0);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1345a
    public void f() {
        if (this.f38321E || this.f38343s) {
            return;
        }
        this.f38321E = true;
        com.sigmob.sdk.base.utils.k.c(f38312a, "onAdViewShow", new Object[0]);
        this.f38317A = false;
        this.f38320D = false;
        boolean zJ = com.sigmob.sdk.base.o.a().j();
        View viewP = P();
        if (com.sigmob.sdk.base.utils.v.b(viewP)) {
            y().a(com.sigmob.sdk.base.utils.w.c(viewP), this.f38331c, this.f38329N);
            if (com.sigmob.sdk.base.utils.v.b(Boolean.valueOf(zJ))) {
                viewP.setOnTouchListener(this);
            }
        }
        r rVar = this.f38334j;
        if (rVar != null && !this.f38337m.contains(rVar)) {
            this.f38337m.add(this.f38334j);
        } else if (this.f38322F != null) {
            if (this.f38337m.isEmpty()) {
                this.f38337m.addAll(this.f38322F);
            } else {
                for (View view : this.f38322F) {
                    if (!this.f38337m.contains(view)) {
                        this.f38337m.add(view);
                    }
                }
            }
        }
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = this.f38328L;
        if (viewTreeObserverOnGlobalLayoutListenerC1367x != null && !this.f38337m.contains(viewTreeObserverOnGlobalLayoutListenerC1367x)) {
            this.f38337m.add(this.f38328L);
        }
        this.f38337m.addAll(this.f38324H);
        a(this.f38336l, this);
        if (com.sigmob.sdk.base.utils.v.b(Boolean.valueOf(zJ))) {
            a(this.f38337m, this);
        }
        ah ahVarJ = j();
        if (ahVarJ == null) {
            return;
        }
        ahVarJ.a("start", 0);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1351g
    public void h() {
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1351g
    public void i() {
        this.f38343s = false;
        NativeADEventListener nativeADEventListener = this.f38342r;
        if (nativeADEventListener != null) {
            nativeADEventListener.onAdDetailDismiss();
        }
        C1349e c1349eY = y();
        if (c1349eY != null) {
            c1349eY.d(N(), this.f38331c);
        }
        F();
        C1358n c1358n = this.f38339o;
        if (c1358n != null) {
            c1358n.setVisibility(0);
        }
        C1350f c1350f = this.f38338n;
        if (c1350f != null) {
            c1350f.b(this.f38331c);
        }
        View viewP = P();
        if (viewP == null || c1349eY == null) {
            return;
        }
        c1349eY.a(com.sigmob.sdk.base.utils.w.c(viewP), this.f38331c, this.f38329N);
    }

    public ah j() {
        BaseAdUnit baseAdUnit = this.f38331c;
        if (baseAdUnit == null) {
            return null;
        }
        ah sessionManager = baseAdUnit.getSessionManager();
        if (sessionManager != null) {
            return sessionManager;
        }
        C1353i c1353i = new C1353i();
        c1353i.a(this.f38331c);
        return c1353i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(ViewGroup viewGroup) {
        a(a(viewGroup), viewGroup);
    }

    public View a(int i2, int i3) {
        if (this.f38328L == null && this.f38331c != null) {
            Context contextN = N();
            ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = new ViewTreeObserverOnGlobalLayoutListenerC1367x(contextN, this.f38331c, Dips.dipsToIntPixels(i2, contextN), Dips.dipsToIntPixels(i3, contextN));
            if (!viewTreeObserverOnGlobalLayoutListenerC1367x.getCreateWidgetViewResult()) {
                return null;
            }
            viewTreeObserverOnGlobalLayoutListenerC1367x.setMotionActionListener(new InterfaceC1348d() { // from class: com.sigmob.sdk.nativead.B
                @Override // com.sigmob.sdk.nativead.InterfaceC1348d
                public final void onAction() throws UnsupportedEncodingException {
                    this.f38270a.S();
                }
            });
            int iDipsToIntPixels = Dips.dipsToIntPixels((i2 < 100 || i3 < 100) ? 30 : 70, contextN);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
            layoutParams.gravity = 17;
            viewTreeObserverOnGlobalLayoutListenerC1367x.setLayoutParams(layoutParams);
            this.f38328L = viewTreeObserverOnGlobalLayoutListenerC1367x;
        }
        return this.f38328L;
    }

    public void b(ViewGroup viewGroup, final WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        if (viewGroup == null) {
            return;
        }
        r rVar = (r) com.sigmob.sdk.base.utils.w.a(viewGroup, r.class);
        if (rVar != null) {
            com.sigmob.sdk.base.utils.w.a(rVar);
        }
        r rVar2 = this.f38334j;
        if (rVar2 != null) {
            com.sigmob.sdk.base.utils.w.a(rVar2);
            viewGroup.addView(this.f38334j, new ViewGroup.LayoutParams(-1, -2));
        }
        if (!this.f38337m.contains(this.f38334j)) {
            this.f38337m.add(this.f38334j);
        }
        r rVar3 = this.f38334j;
        if (rVar3 != null && !this.f38331c.equals(rVar3.getAdUnit())) {
            this.f38334j.a(this);
        }
        r rVar4 = this.f38334j;
        final InterfaceC1363t sigVideoAdController = rVar4 == null ? null : rVar4.getSigVideoAdController();
        if (sigVideoAdController == null) {
            return;
        }
        sigVideoAdController.a(new InterfaceC1356l() { // from class: com.sigmob.sdk.nativead.ab.2
            @Override // com.sigmob.sdk.nativead.InterfaceC1356l
            public void a() {
                ab.this.j().a("video_restart", 0);
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoCompleted() {
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoCompleted();
                }
                ab.this.f38331c.getVideoCommon().end_time = sigVideoAdController.e();
                ab.this.f38331c.getVideoCommon().is_last = 1;
                ab.this.j().a("complete", sigVideoAdController.j());
                ab.this.j().a("video_link", 0);
                ab.this.f38319C = false;
                ab.this.f38317A = false;
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoError(WindAdError windAdError) {
                ab.this.f38317A = false;
                ab.this.f38319C = false;
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 == null) {
                    return;
                }
                nativeADMediaListener2.onVideoError(windAdError);
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoLoad() {
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 == null) {
                    return;
                }
                nativeADMediaListener2.onVideoLoad();
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoPause() {
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoPause();
                }
                ab.this.f38319C = true;
                ab.this.j().a("video_pause", 0);
                ab.this.j().a("video_link", 0);
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoResume() {
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoResume();
                }
                ab.this.f38319C = false;
                ab.this.f38331c.getVideoCommon().type = 2;
                ab.this.f38331c.getVideoCommon().is_first = 0;
                ab.this.f38331c.getVideoCommon().begin_time = sigVideoAdController.j();
                ab.this.f38317A = false;
                ab.this.j().a("video_start", sigVideoAdController.j());
            }

            @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
            public void onVideoStart() {
                View viewP = ab.this.P();
                if (viewP != null) {
                    ab.this.f38331c.setAdSize(viewP.getWidth(), viewP.getHeight());
                }
                ab.this.f38331c.getVideoCommon().video_time = sigVideoAdController.e();
                ab.this.f38331c.getVideoCommon().is_first = 1;
                ab.this.f38331c.getVideoCommon().is_last = 0;
                ab.this.f38331c.getVideoCommon().end_time = 0;
                ab.this.f38331c.getVideoCommon().is_auto_play = ab.this.y().u() ? 1 : 2;
                if (ab.this.f38343s) {
                    ab.this.f38331c.getVideoCommon().scene = 3;
                } else {
                    ab.this.f38331c.getVideoCommon().scene = 1;
                }
                if (ab.this.f38318B) {
                    ab.this.f38331c.getVideoCommon().type = 1;
                    ab.this.f38318B = false;
                } else {
                    ab.this.f38331c.getVideoCommon().type = 3;
                }
                WindNativeAdData.NativeADMediaListener nativeADMediaListener2 = nativeADMediaListener;
                if (nativeADMediaListener2 != null) {
                    nativeADMediaListener2.onVideoStart();
                }
                ab.this.f38317A = false;
                ab.this.f38319C = false;
                ab.this.j().a("video_start", 0);
            }

            @Override // com.sigmob.sdk.nativead.InterfaceC1356l
            public void a(long j2, long j3) {
                List<C1377d> listA;
                ab.this.f38331c.getVideoCommon().end_time = sigVideoAdController.j();
                C1349e c1349eY = ab.this.y();
                if (c1349eY == null || (listA = c1349eY.a(j2, j3)) == null || listA.isEmpty()) {
                    return;
                }
                for (C1377d c1377d : listA) {
                    ab.this.j().a(c1377d.getEvent(), sigVideoAdController.j());
                    c1377d.setTracked();
                }
            }
        });
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void c(BaseAdUnit baseAdUnit) {
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void e(BaseAdUnit baseAdUnit) {
    }

    public View a(ViewGroup viewGroup) {
        View viewA;
        int measuredHeight;
        int measuredHeight2;
        View view = null;
        if (viewGroup == null) {
            return null;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if (childAt != null) {
                if (childAt instanceof r) {
                    return childAt;
                }
                if ((childAt instanceof ImageView) && this.f38325I.contains(childAt) && (measuredHeight2 = childAt.getMeasuredHeight() * childAt.getMeasuredWidth()) > i2) {
                    view = childAt;
                    i2 = measuredHeight2;
                }
                if ((childAt instanceof ViewGroup) && (viewA = a((ViewGroup) childAt)) != null) {
                    if (viewA instanceof r) {
                        return viewA;
                    }
                    if ((viewA instanceof ImageView) && this.f38325I.contains(viewA) && (measuredHeight = viewA.getMeasuredHeight() * viewA.getMeasuredWidth()) > i2) {
                        view = viewA;
                        i2 = measuredHeight;
                    }
                }
            }
        }
        return view;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit) {
        r rVar = this.f38334j;
        if (rVar == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = ((View) rVar.getParent()).getLayoutParams();
        SigmobLog.d("visibilityStatusChange() called with: isVisible = [" + layoutParams.width + ":" + layoutParams.height + "]");
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void d(BaseAdUnit baseAdUnit) {
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1274p
    public void b(BaseAdUnit baseAdUnit, String str) {
    }

    private View a(HashSet<View> hashSet, MotionEvent motionEvent) {
        if (hashSet == null) {
            return null;
        }
        Iterator<View> it = hashSet.iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (com.sigmob.sdk.base.utils.w.a(next, motionEvent)) {
                return next;
            }
        }
        return null;
    }

    public void b(boolean z2) {
        InterfaceC1363t interfaceC1363tR;
        if (this.f38343s || (interfaceC1363tR = r()) == null) {
            return;
        }
        interfaceC1363tR.a(z2);
    }

    private View a(List<View> list, MotionEvent motionEvent) {
        if (list == null) {
            return null;
        }
        for (View view : list) {
            if (com.sigmob.sdk.base.utils.w.a(view, motionEvent)) {
                return view;
            }
        }
        return null;
    }

    private List<View> a(List<View> list) {
        return list instanceof ArrayList ? list : new ArrayList(list);
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1284x
    public void a() {
        C1349e c1349eY = y();
        if (c1349eY == null) {
            return;
        }
        c1349eY.a(N(), this.f38331c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(int r10, android.view.MotionEvent r11) throws java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.nativead.ab.a(int, android.view.MotionEvent):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view, int i2, int i3) {
        LinearLayout.LayoutParams layoutParams;
        ViewParent parent = view.getParent();
        if (parent == null) {
            return;
        }
        if (parent instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.width = i2;
            layoutParams2.height = i3;
            layoutParams2.gravity = 17;
            layoutParams = layoutParams2;
        } else if (parent instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) view.getLayoutParams();
            layoutParams3.width = i2;
            layoutParams3.height = i3;
            layoutParams3.addRule(13);
            layoutParams = layoutParams3;
        } else {
            if (!(parent instanceof LinearLayout)) {
                return;
            }
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams4.width = i2;
            layoutParams4.height = i3;
            layoutParams4.gravity = 17;
            layoutParams = layoutParams4;
        }
        view.setLayoutParams(layoutParams);
        view.requestLayout();
    }

    public void a(View view, ViewGroup viewGroup) {
        ViewParent parent;
        if (viewGroup == null) {
            return;
        }
        if (view == null) {
            SigmobLogger.d(f38312a, "prepareWidget2Show: container", new Object[0]);
            view = viewGroup;
            parent = viewGroup;
        } else if (!(view instanceof r) && !(view instanceof ImageView)) {
            SigmobLogger.d(f38312a, "prepareWidget2Show: no material", new Object[0]);
            return;
        } else {
            SigmobLogger.d(f38312a, "prepareWidget2Show: material", new Object[0]);
            parent = view.getParent();
        }
        String simpleName = view.getClass().getSimpleName();
        int measuredHeight = view.getMeasuredHeight();
        int measuredWidth = view.getMeasuredWidth();
        SigmobLogger.d(f38312a, "prepareWidget2Show: simpleName = " + simpleName + ", measuredHeight = " + measuredHeight + ", measuredWidth = " + measuredWidth, new Object[0]);
        a(parent, measuredWidth, measuredHeight);
    }

    public void a(View view, List<View> list, List<View> list2, View view2, NativeADEventListener nativeADEventListener) {
        C1360p c1360p;
        ViewGroup.LayoutParams layoutParams;
        if (view == null) {
            if (nativeADEventListener != null) {
                nativeADEventListener.onAdError(WindAdError.ERROR_SIGMOB_ADCONTAINER_IS_NULL);
                return;
            }
            return;
        }
        if (!(view instanceof ViewGroup)) {
            if (nativeADEventListener != null) {
                nativeADEventListener.onAdError(WindAdError.ERROR_SIGMOB_ADCONTAINER_NOT_VIEWGROUP);
                return;
            }
            return;
        }
        if (com.sigmob.sdk.b.i() == null) {
            com.sigmob.sdk.b.a(com.sigmob.sdk.base.utils.w.d(view));
        }
        if (view2 != null) {
            if (this.f38349y == null) {
                DialogC1346b dialogC1346b = new DialogC1346b(view2.getContext(), this.f38331c);
                this.f38349y = dialogC1346b;
                dialogC1346b.a(this);
            }
            view2.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.nativead.ab.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view3, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 1 || ab.this.f38349y == null) {
                        return true;
                    }
                    ab.this.f38349y.a();
                    return true;
                }
            });
        }
        final ViewGroup viewGroup = (ViewGroup) view;
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.nativead.ab.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                viewGroup.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ab abVar = ab.this;
                if (abVar.f38331c == null) {
                    return;
                }
                Context contextN = abVar.N();
                viewGroup.getLocationOnScreen(new int[2]);
                ClickCommon clickCommon = ab.this.f38331c.getClickCommon();
                clickCommon.adarea_x = String.valueOf(Dips.pixelsToIntDips(r1[0], contextN));
                clickCommon.adarea_y = String.valueOf(Dips.pixelsToIntDips(r1[1], contextN));
                clickCommon.adarea_w = String.valueOf(Dips.pixelsToIntDips(viewGroup.getWidth(), contextN));
                clickCommon.adarea_h = String.valueOf(Dips.pixelsToIntDips(viewGroup.getHeight(), contextN));
            }
        });
        ViewTreeObserverOnGlobalLayoutListenerC1367x viewTreeObserverOnGlobalLayoutListenerC1367x = (ViewTreeObserverOnGlobalLayoutListenerC1367x) com.sigmob.sdk.base.utils.w.a(viewGroup, ViewTreeObserverOnGlobalLayoutListenerC1367x.class);
        if (viewTreeObserverOnGlobalLayoutListenerC1367x != null && viewTreeObserverOnGlobalLayoutListenerC1367x != this.f38328L) {
            com.sigmob.sdk.base.utils.w.a(viewTreeObserverOnGlobalLayoutListenerC1367x);
        }
        viewGroup.post(new Runnable() { // from class: com.sigmob.sdk.nativead.C
            @Override // java.lang.Runnable
            public final void run() {
                this.f38271b.d(viewGroup);
            }
        });
        y().a(new com.sigmob.sdk.base.common.ac() { // from class: com.sigmob.sdk.nativead.D
            @Override // com.sigmob.sdk.base.common.ac
            public final void onAdClick(boolean z2, com.sigmob.sdk.base.a aVar) {
                this.f38273b.a(z2, aVar);
            }
        });
        if (com.sigmob.sdk.base.utils.f.b(list2)) {
            this.f38336l = a(list2);
        }
        if (com.sigmob.sdk.base.utils.f.b(this.f38324H)) {
            this.f38337m.removeAll(this.f38324H);
        }
        if (com.sigmob.sdk.base.utils.f.b(list)) {
            this.f38324H = a(list);
        }
        this.f38342r = nativeADEventListener;
        o().a((Map<String, Object>) null, this.f38331c);
        C1258h.g().a(this.f38331c, (C1258h.b) null);
        C1360p c1360p2 = this.f38335k;
        if (c1360p2 == null) {
            C1360p c1360pC = c(viewGroup);
            this.f38335k = c1360pC;
            if (c1360pC == null) {
                c1360p = new C1360p(N());
                this.f38335k = c1360p;
                layoutParams = new ViewGroup.LayoutParams(0, 0);
            }
            this.f38337m.addAll(this.f38324H);
            this.f38335k.setAdVisibilityStatusChangeListener(this);
            this.f38335k.a(y().s(), y().t());
        }
        com.sigmob.sdk.base.utils.w.a(c1360p2);
        c1360p = this.f38335k;
        layoutParams = new ViewGroup.LayoutParams(0, 0);
        viewGroup.addView(c1360p, layoutParams);
        this.f38337m.addAll(this.f38324H);
        this.f38335k.setAdVisibilityStatusChangeListener(this);
        this.f38335k.a(y().s(), y().t());
    }

    public void a(ViewGroup viewGroup, WindNativeAdData.NativeADMediaListener nativeADMediaListener) {
        this.f38327K = true;
        b(viewGroup, nativeADMediaListener);
    }

    private void a(ViewParent viewParent, int i2, int i3) {
        BaseAdUnit baseAdUnit;
        int i4;
        Context contextN = N();
        if (contextN == null || viewParent == null || (baseAdUnit = this.f38331c) == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) viewParent;
        if (baseAdUnit.enableWidgetInteraction()) {
            boolean zEnableDevToRender = this.f38331c.enableDevToRender(0);
            if (zEnableDevToRender) {
                i4 = 30;
            } else {
                int iMin = Math.min(i3, i2);
                int iPixelsToIntDips = Dips.pixelsToIntDips(iMin, contextN);
                int iMin2 = Math.min(iPixelsToIntDips, 100);
                SigmobLogger.d(f38312a, "createWidget2Show: minViewSize = " + iMin + ", minViewSizeDp = " + iPixelsToIntDips + ", widgetSizeDp = " + iMin2, new Object[0]);
                i4 = iMin2;
            }
            float f2 = zEnableDevToRender ? 0.0f : 1.0f;
            String str = f38312a;
            SigmobLogger.d(str, "createWidget2Show: widgetSizeDp = " + i4, new Object[0]);
            View viewA = a(i4, i4);
            if (viewA == null) {
                return;
            }
            viewA.setAlpha(f2);
            com.sigmob.sdk.base.utils.w.a(viewA);
            int measuredWidth = viewGroup.getMeasuredWidth();
            int measuredHeight = viewGroup.getMeasuredHeight();
            SigmobLogger.d(str, "createWidget2Show: containerW = " + measuredWidth + ", containerH = " + measuredHeight, new Object[0]);
            FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(measuredWidth, measuredHeight));
            frameLayout.addView(viewA);
            viewGroup.addView(frameLayout);
            this.f38337m.add(viewA);
        }
    }

    public void a(BaseAdUnit baseAdUnit, WindNativeAdData windNativeAdData) {
        this.f38331c = baseAdUnit;
        this.f38330b = windNativeAdData;
        if (this.f38334j == null && baseAdUnit.getNativeAd().type.intValue() == 1) {
            this.f38334j = new r(com.sigmob.sdk.b.e());
        }
        C1258h.a().getBitmap(k().getAd_source_logo(), new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.nativead.ab.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                ab.this.f38346v = bitmap;
            }
        });
    }

    public void a(WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback) {
        this.f38326J = dislikeInteractionCallback;
    }

    public void a(HashSet<View> hashSet, View.OnTouchListener onTouchListener) {
        if (hashSet == null) {
            return;
        }
        Iterator<View> it = hashSet.iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (next != null) {
                next.setOnClickListener(null);
                next.setOnTouchListener(null);
                next.setOnTouchListener(onTouchListener);
            }
        }
    }

    public void a(List<ImageView> list, int i2) {
        List<SigImage> imageUrlList = k().getImageUrlList();
        if (list == null || imageUrlList == null) {
            return;
        }
        this.f38325I.clear();
        this.f38325I.addAll(list);
        int iMin = Math.min(list.size(), imageUrlList.size());
        for (int i3 = 0; i3 < iMin; i3++) {
            SigImage sigImage = imageUrlList.get(i3);
            ImageView imageView = list.get(i3);
            if (!this.f38337m.contains(imageView)) {
                this.f38337m.add(imageView);
            }
            List<View> list2 = this.f38322F;
            if (list2 == null) {
                this.f38322F = new ArrayList();
            } else {
                list2.clear();
            }
            this.f38322F.add(imageView);
            C1258h.a().load(sigImage.getImageUrl()).placeholder(i2).error(i2).into(imageView);
        }
    }

    public void a(List<View> list, View.OnTouchListener onTouchListener) {
        if (list == null) {
            return;
        }
        for (View view : list) {
            if (view != null) {
                view.setOnClickListener(null);
                view.setOnTouchListener(null);
                view.setOnTouchListener(onTouchListener);
            }
        }
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1345a
    public void a(boolean z2) {
        if (this.f38350z) {
            return;
        }
        if (!this.f38343s) {
            C1258h.g().e(this.f38331c);
            if (z2) {
                NativeADEventListener nativeADEventListener = this.f38342r;
                if (nativeADEventListener != null) {
                    nativeADEventListener.onAdExposed();
                }
                j().a("ad_show", 0);
            }
        }
        this.f38350z = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2, com.sigmob.sdk.base.a aVar) {
        ah ahVarJ;
        NativeADEventListener nativeADEventListener;
        if (com.sigmob.sdk.base.utils.d.a(com.sigmob.sdk.base.utils.d.a(f38312a, this.f38331c)) && (nativeADEventListener = this.f38342r) != null) {
            nativeADEventListener.onAdClicked();
        }
        if (z2 && (ahVarJ = j()) != null) {
            ahVarJ.a("click", 0);
        }
    }

    private boolean a(MotionEvent motionEvent) {
        r rVar = this.f38334j;
        if (rVar == null) {
            return false;
        }
        return rVar.a(motionEvent);
    }
}
