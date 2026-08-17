package com.meishu.sdk.platform.ms.recycler;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.C1243b;
import com.meishu.sdk.core.utils.DownloadUtils;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.g1;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.l0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.utils.t1;
import com.meishu.sdk.core.view.FeedAdOverlayManager;
import com.meishu.sdk.core.view.PositionView;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPoint;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.platform.ms.recycler.t;
import com.meishu.sdk.platform.ms.splash.ShakeResult;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class l implements RecyclerAdData {

    /* renamed from: p, reason: collision with root package name */
    public static int f33013p = 250;

    /* renamed from: a, reason: collision with root package name */
    public final MsCustomVideo f33014a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.b f33015b;

    /* renamed from: c, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.recycler.c f33016c;

    /* renamed from: d, reason: collision with root package name */
    public RecylcerAdInteractionListener f33017d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f33018e;

    /* renamed from: f, reason: collision with root package name */
    public int f33019f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f33020g;

    /* renamed from: h, reason: collision with root package name */
    public DownloadStatusListener f33021h;

    /* renamed from: i, reason: collision with root package name */
    public volatile boolean f33022i;

    /* renamed from: j, reason: collision with root package name */
    public int f33023j;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f33024k;

    /* renamed from: m, reason: collision with root package name */
    public WeakReference<Activity> f33026m;

    /* renamed from: n, reason: collision with root package name */
    public int f33027n;

    /* renamed from: l, reason: collision with root package name */
    public boolean f33025l = false;

    /* renamed from: o, reason: collision with root package name */
    public ViewTreeObserver.OnScrollChangedListener f33028o = new e();

    public class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f33029a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Rect f33030b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RecylcerAdInteractionListener f33031c;

        /* renamed from: com.meishu.sdk.platform.ms.recycler.l$a$a, reason: collision with other inner class name */
        public class C0705a implements ShakeUtil.c {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ long f33033a;

            public C0705a(long j2) {
                this.f33033a = j2;
            }

            @Override // com.meishu.sdk.platform.ms.splash.ShakeUtil.c
            public void onShake(int i2, boolean z2, int i3, ShakeResult shakeResult) {
                RecylcerAdInteractionListener recylcerAdInteractionListener;
                ShakeUtil.getInstance().a(l.this.f33019f);
                if (l.this.f33015b.a().getCbc() == 0 && (recylcerAdInteractionListener = a.this.f33031c) != null) {
                    recylcerAdInteractionListener.onAdClicked();
                }
                if (shakeResult != null) {
                    shakeResult.setTotalTurnTime(System.currentTimeMillis() - this.f33033a);
                }
                l.this.f33015b.a().setClkActType(i2);
                l.this.f33015b.a().setClkPower(i3);
                l.this.f33015b.a().setShakeResult(shakeResult);
                com.meishu.sdk.core.utils.f.a(l.this.f33015b, i3 >= 50);
            }
        }

        public a(ViewGroup viewGroup, Rect rect, RecylcerAdInteractionListener recylcerAdInteractionListener) {
            this.f33029a = viewGroup;
            this.f33030b = rect;
            this.f33031c = recylcerAdInteractionListener;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!this.f33029a.getGlobalVisibleRect(this.f33030b)) {
                return true;
            }
            if (this.f33030b.height() * this.f33030b.width() >= this.f33029a.getHeight() * this.f33029a.getWidth() * 0.3d) {
                l lVar = l.this;
                if (!lVar.f33018e) {
                    lVar.f33018e = true;
                    l.this.f33015b.a().setMonitorUrl(i0.a(l.this.f33015b.a().getMonitorUrl(), this.f33029a, (View) null));
                    com.meishu.sdk.platform.ms.recycler.a aVar = l.this.f33016c.f32919c;
                    if (aVar != null) {
                        aVar.onADExposure();
                        RecylcerAdInteractionListener recylcerAdInteractionListener = this.f33031c;
                        if (recylcerAdInteractionListener != null) {
                            recylcerAdInteractionListener.onAdExposure();
                        }
                    }
                    l.this.f33015b.a().f32386B = true;
                    if (com.meishu.sdk.core.utils.h.c(l.this.f33015b.a().getAct_type())) {
                        int iB = com.meishu.sdk.core.utils.h.b(l.this.f33015b.a().getAct_type());
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        ShakeUtil.getInstance().a(l.this.f33015b.a().getPosId(), l.this.f33015b.a().getLoadedTime(), l.this.f33015b.a().getDclk());
                        ShakeUtil shakeUtil = ShakeUtil.getInstance();
                        int power_index = l.this.f33015b.a().getPower_index();
                        int power_index2 = l.this.f33015b.a().getPower_index();
                        long power_delay = l.this.f33015b.a().getPower_delay();
                        int power_count = l.this.f33015b.a().getPower_count();
                        l lVar2 = l.this;
                        shakeUtil.a(power_index, power_index2, iB, power_delay, power_count, lVar2.f33019f, lVar2.f33015b.a().getEcpm(), new C0705a(jCurrentTimeMillis));
                        ShakeUtil.getInstance().a(true);
                    }
                    this.f33029a.getViewTreeObserver().removeOnPreDrawListener(this);
                    l lVar3 = l.this;
                    ViewGroup viewGroup = this.f33029a;
                    lVar3.getClass();
                    try {
                        WeakReference<Activity> weakReference = lVar3.f33026m;
                        Activity activity = weakReference != null ? weakReference.get() : null;
                        if (activity != null && viewGroup != null) {
                            FeedAdOverlayManager.getInstance().addOverlay(activity, viewGroup, ((RecyclerMixAdLoader) lVar3.f33016c.getAdLoader()).getPosId(), l.f33013p, lVar3.f33015b.a(), lVar3.e(), new m(lVar3, viewGroup));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            return true;
        }
    }

    public class b implements TouchAdContainer.OnWindownEventListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onAttachedToWindow() {
            ShakeUtil.getInstance().a(l.this.f33019f, true);
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onDetachedFromWindow() {
            ShakeUtil.getInstance().a(l.this.f33019f, false);
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onWindowFocusChanged(boolean z2) {
            if (z2) {
                ShakeUtil.getInstance().a(l.this.f33019f, true);
            } else {
                ShakeUtil.getInstance().a(l.this.f33019f, false);
            }
        }
    }

    public class c implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List f33036a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ t.a f33037b;

        public c(List list, t.a aVar) {
            this.f33036a = list;
            this.f33037b = aVar;
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    for (int i2 = 0; i2 < this.f33036a.size(); i2++) {
                        if (t1.a((View) this.f33036a.get(i2), motionEvent.getRawX(), motionEvent.getRawY())) {
                            t.a(l.this.e(), motionEvent, this.f33037b);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return false;
        }
    }

    public class d extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f33039a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f33040b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ List f33041c;

        public class a implements q {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ u f33043a;

            public a(u uVar) {
                this.f33043a = uVar;
            }

            @Override // com.meishu.sdk.platform.ms.recycler.q
            public void a(ViewGroup viewGroup, float f2, float f3, long j2, float f4, float f5, int i2) {
                d dVar = d.this;
                l.this.a(dVar.f33039a, f2, f3, j2, f4, f5, i2, !this.f33043a.a());
            }
        }

        public class b extends r {
            public b(View view, int i2, List list) {
                super(view, i2, list);
            }

            @Override // com.meishu.sdk.platform.ms.recycler.r
            public void a(float f2, float f3, long j2, float f4, float f5, int i2) {
                d dVar = d.this;
                l.this.a(dVar.f33039a, f2, f3, j2, f4, f5, i2, true);
            }
        }

        public class c implements View.OnTouchListener {
            public c() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                try {
                    if (motionEvent.getAction() == 0) {
                        l.this.c();
                    } else if (motionEvent.getAction() == 1) {
                        l.this.getClass();
                        float f2 = l.this.f33024k.getContext().getResources().getDisplayMetrics().density;
                        float f3 = t.f33083d;
                        float fMax = (f3 <= 0.0f || t.f33084e <= 0.0f) ? 0.0f : Math.max(Math.abs(f3 - motionEvent.getRawX()), Math.abs(t.f33084e - motionEvent.getRawY()));
                        if (fMax > l.this.f33023j) {
                            LogUtil.dev("MeishuRecyclerAdDataAda", "use rawXY");
                        }
                        l.this.f33023j = (int) Math.max(r3.f33023j, fMax);
                        TouchPoint touchPointA = t.a(l.this.e(), motionEvent, f2, l.this.f33023j);
                        if (touchPointA == null) {
                            return false;
                        }
                        d dVar = d.this;
                        l lVar = l.this;
                        int i2 = lVar.f33023j;
                        if (i2 / f2 > l.f33013p) {
                            float f4 = touchPointA.downX;
                            if (f4 > 0.0f) {
                                float f5 = touchPointA.downY;
                                if (f5 > 0.0f) {
                                    lVar.a(dVar.f33039a, f4, f5, touchPointA.downTime, touchPointA.upX, touchPointA.upY, i2, true);
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return false;
            }
        }

        public d(ViewGroup viewGroup, boolean z2, List list) {
            this.f33039a = viewGroup;
            this.f33040b = z2;
            this.f33041c = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            View view;
            try {
                ViewGroup viewGroup = this.f33039a;
                List list = null;
                list = null;
                if (viewGroup != null) {
                    try {
                        view = (View) viewGroup.getParent();
                        for (int i2 = 0; view != null && i2 < 10; i2++) {
                            if ((view instanceof RecyclerView) || (view instanceof ListView) || (view instanceof ScrollView) || (view instanceof NestedScrollView)) {
                                break;
                            }
                            if (!(view.getParent() instanceof View)) {
                                break;
                            }
                            view = (View) view.getParent();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    view = null;
                } else {
                    view = null;
                }
                u uVar = new u(view);
                if (uVar.f33088a && !r0.c()) {
                    new p(l.this.f33024k, uVar.a() ? view : null).a(this.f33039a, l.f33013p, new a(uVar));
                    return;
                }
                if (view != null) {
                    view.setOnTouchListener(new c());
                    return;
                }
                try {
                    FrameLayout frameLayout = l.this.f33024k;
                    View childAt = this.f33039a.getChildAt(0);
                    int i3 = l.f33013p;
                    if (this.f33040b && l.this.f33025l) {
                        list = this.f33041c;
                    }
                    frameLayout.setOnTouchListener(new b(childAt, i3, list));
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements ViewTreeObserver.OnScrollChangedListener {
        public e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (t.f33081b <= 0.0f || t.f33082c <= 0.0f || !p1.a(((RecyclerMixAdLoader) l.this.f33016c.getAdLoader()).getPosId(), l.this.f33015b.a().getAdp(), l.this.f33015b.a().getAdg())) {
                    return;
                }
                int[] iArr = new int[2];
                l.this.f33024k.getLocationOnScreen(iArr);
                if (iArr[1] > 0 && t.f33085f == 0) {
                    try {
                        t.a(l.this.e(), iArr[1]);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                l.this.f33023j = Math.abs(t.f33085f - iArr[1]);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public class f extends com.meishu.sdk.core.safe.l {
        public f() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            com.meishu.sdk.meishu_ad.nativ.b bVar = l.this.f33015b;
            if (bVar == null || bVar.getMediaView() == null) {
                return;
            }
            l.this.f33015b.getMediaView().start();
        }
    }

    public class g extends com.meishu.sdk.core.safe.l {
        public g() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            com.meishu.sdk.meishu_ad.nativ.b bVar = l.this.f33015b;
            if (bVar == null || bVar.getMediaView() == null) {
                return;
            }
            l.this.f33015b.getMediaView().replay();
        }
    }

    public l(com.meishu.sdk.platform.ms.recycler.c cVar, com.meishu.sdk.meishu_ad.nativ.b bVar, int i2) {
        this.f33016c = cVar;
        this.f33015b = bVar;
        this.f33027n = i2;
        this.f33014a = new MsCustomVideo(bVar.a());
        if (this.f33019f == 0) {
            this.f33019f = ShakeUtil.getInstance().b();
        }
        try {
            AdType adType = AdType.FEED_MIX;
            adType.value();
            com.meishu.sdk.core.utils.h.a();
            bVar.a().setAct_type(com.meishu.sdk.core.utils.h.a(bVar.a().getAct_type(), adType.value()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (bVar.a().getPower_index() > 0) {
            f33013p = bVar.a().getPower_index() * 5;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) {
        try {
            if (viewGroup == null) {
                LogUtil.e("MeishuRecyclerAdDataAda", "adContainer is null");
                return;
            }
            p1.b(this.f33015b.a().getEventUrl());
            this.f33017d = recylcerAdInteractionListener;
            Rect rect = new Rect();
            Activity activity = context instanceof Activity ? (Activity) context : viewGroup.getContext() instanceof Activity ? (Activity) viewGroup.getContext() : null;
            if (activity != null) {
                try {
                    if (!this.f33020g && Build.VERSION.SDK_INT >= 29) {
                        this.f33020g = true;
                        activity.registerActivityLifecycleCallbacks(new n(this));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            this.f33026m = new WeakReference<>(activity);
            FeedAdOverlayManager.getInstance().updateAdContainer(e(), viewGroup);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(new a(viewGroup, rect, recylcerAdInteractionListener));
            ViewGroup[] viewGroupArrA = com.meishu.sdk.core.ad.recycler.d.a(viewGroup, l.class, TouchAdContainer.class);
            ViewGroup viewGroup2 = viewGroupArrA[1];
            if (viewGroup2 == null) {
                viewGroup2 = viewGroupArrA[0];
                ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
                if (viewGroup3 == null) {
                    try {
                        LogUtil.d("", new String(g1.a("c2VsZiByZW5kZXIgYmluZEFkVG9WaWV3LCBUaGUgYWRDb250YWluZXIgbXVzdCBiZSBpbnNlcnRlZCBpbnRvIHRoZSBwYWdlIGxheW91dC4=")));
                    } catch (Throwable unused) {
                    }
                } else {
                    int iIndexOfChild = viewGroup3.indexOfChild(viewGroup2);
                    ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
                    viewGroup3.removeView(viewGroup2);
                    TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup2.getContext());
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(this.f33015b));
                    touchAdContainer.addView(viewGroup2, layoutParams2);
                    touchAdContainer.setId(viewGroup2.getId());
                    if (AdSdk.adConfig().showFeedAdLogo()) {
                        try {
                            ImageView imageView = new ImageView(viewGroup2.getContext());
                            imageView.setAdjustViewBounds(true);
                            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, (int) ((viewGroup2.getContext().getResources().getDisplayMetrics().density * 13.0f) + 0.5f));
                            layoutParams3.gravity = 85;
                            imageView.setImageDrawable(context.getResources().getDrawable(R.drawable.ms_ad));
                            touchAdContainer.addView(imageView, layoutParams3);
                        } catch (Throwable th2) {
                            th2.printStackTrace();
                        }
                    }
                    p1.a(viewGroup2, this.f33015b.a().getPosId(), this.f33015b.a().getLoadedTime());
                    viewGroup3.addView(touchAdContainer, iIndexOfChild, layoutParams);
                    viewGroup2 = touchAdContainer;
                }
            } else if (viewGroup2 instanceof TouchAdContainer) {
                ((TouchAdContainer) viewGroup2).setTouchPositionListener(new TouchPositionListener(this.f33015b));
            }
            PositionView positionView = new PositionView(viewGroup.getContext());
            positionView.setTag(Integer.valueOf(this.f33019f));
            positionView.setOnWindownEventListener(new b());
            for (int i2 = 0; i2 < viewGroup2.getChildCount(); i2++) {
                try {
                    View childAt = viewGroup2.getChildAt(i2);
                    if (childAt instanceof PositionView) {
                        viewGroup2.removeView(childAt);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            viewGroup2.addView(positionView, 1, 1);
            a(activity, viewGroup2, list);
            try {
                this.f33015b.a().getAppendInfo().getHasClicked().a(new C1243b.a() { // from class: U0.c
                    @Override // com.meishu.sdk.core.utils.C1243b.a
                    public final void a(Object obj, Object obj2) {
                        this.f573a.a((Boolean) obj, (Boolean) obj2);
                    }
                });
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
            bVar.a(context, viewGroup2, list, new com.meishu.sdk.platform.ms.recycler.d(bVar, recylcerAdInteractionListener));
            this.f33015b.setInteractionListener(recylcerAdInteractionListener);
            View viewFindViewWithTag = viewGroup2.findViewWithTag("meishu_media_view");
            if (viewFindViewWithTag == null || viewFindViewWithTag.getParent() == null || !(viewFindViewWithTag.getParent() instanceof ViewGroup)) {
                return;
            }
            ((ViewGroup) viewFindViewWithTag.getParent()).removeView(viewFindViewWithTag);
        } catch (Throwable unused2) {
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdRenderFailed();
            }
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
        try {
            viewGroup.removeAllViews();
            com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
            this.f33016c.getContext();
            bVar.a(viewGroup, null, new com.meishu.sdk.platform.ms.recycler.b((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a, recyclerAdMediaListener));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void c() {
        t.a();
        this.f33023j = 0;
    }

    public final List<View> d() {
        Method declaredMethod;
        try {
            String str = new String(g1.a("Z3N3"));
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                declaredMethod = this.f33017d.getClass().getDeclaredMethod(str, null);
            } catch (Throwable unused) {
                declaredMethod = null;
            }
            if (declaredMethod == null) {
                return null;
            }
            this.f33025l = true;
            declaredMethod.setAccessible(true);
            return (List) declaredMethod.invoke(this.f33017d, null);
        } catch (Throwable unused2) {
            return null;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar == null) {
            return;
        }
        if (bVar.getMediaView() != null && (this.f33015b.getMediaView() instanceof NormalMediaView)) {
            ((NormalMediaView) this.f33015b.getMediaView()).d();
        }
        ShakeUtil.getInstance().a(this.f33019f);
        try {
            FeedAdOverlayManager.getInstance().removeOverlay(e());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            String[] strArr = this.f33015b.a().getdUrl();
            String str = (strArr == null || strArr.length <= 0) ? null : strArr[0];
            com.meishu.sdk.meishu_ad.nativ.b bVar2 = this.f33015b;
            String packageName = (bVar2 == null || bVar2.a() == null) ? "" : this.f33015b.a().getPackageName();
            Map<Integer, l0> map = DownloadUtils.f31749h;
            if (!TextUtils.isEmpty(str)) {
                DownloadUtils.f31751j.remove(str);
            }
            if (TextUtils.isEmpty(packageName)) {
                return;
            }
            DownloadUtils.f31752k.remove(packageName);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final String e() {
        try {
            return this.f33015b.a().getReq_id() + "_" + this.f33027n;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().f32392d;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar != null) {
            if (bVar.a().getAdPatternType() == 2) {
                return 2;
            }
            switch (this.f33015b.a().f32412x) {
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                case 4:
                    return 11;
                case 5:
                    return 13;
                default:
                    return this.f33015b.getAdPatternType();
            }
        }
        return 12;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public View getAdView() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar != null) {
            return bVar.getAdView();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getApp_intro();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getApp_intor_url();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppName() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getAppName();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public List<MeishuAdInfo.PermissionBean> getAppPermissionList() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar == null || bVar.a() == null) {
            return null;
        }
        return this.f33015b.a().getApp_permission();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getApp_permission_url();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getApp_size();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getApp_ver();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().f32391c;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return this.f33014a;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        try {
            resultBean.setCid(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getCid());
            resultBean.setCat(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getCat());
            resultBean.setAderId(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getAder_id());
            resultBean.setFromId(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getFromId());
            resultBean.setDrawing(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getDrawing());
            resultBean.setPid(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getPosId());
            resultBean.setReqId(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getReq_id());
            resultBean.setPrice(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getEcpm());
            resultBean.setEcpm(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getEcpm() + "");
            resultBean.setS_ext(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getS_ext());
            resultBean.setS_code(((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getS_code());
            resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f33016c.f32888a));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        resultBean.setSdkName("MS");
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return bVar != null ? bVar.getDesc() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getDeveloper();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar != null && bVar.getMediaView() != null && (this.f33015b.getMediaView() instanceof NormalMediaView)) {
            return ((NormalMediaView) this.f33015b.getMediaView()).getDuration();
        }
        com.meishu.sdk.meishu_ad.nativ.b bVar2 = this.f33015b;
        if (bVar2 == null || bVar2.a() == null) {
            return 0L;
        }
        return this.f33015b.a().f32413y * 1000;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().f32394f;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromId() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getFromId();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromLogo() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getFromLogo();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getHeight() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar == null || bVar.a() == null) {
            return 0;
        }
        return this.f33015b.a().f32390b;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconTitle() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().f32393e;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return bVar != null ? bVar.getIconUrl() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar != null) {
            return bVar.getImgUrls();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar != null) {
            return bVar.getInteractionType();
        }
        return 0;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public View getMediaView() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPackageName() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getPackageName();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return "MS";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return (bVar == null || bVar.a() == null) ? "" : this.f33015b.a().getPrivacy_agreement();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        return bVar != null ? bVar.getTitle() : "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoCover() {
        try {
            return this.f33015b.a().getVideo_cover();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoUrl() {
        try {
            if (getAdPatternType() == 2) {
                com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
                return (bVar != null ? bVar.getImgUrls() : null)[0];
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getWidth() {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar == null || bVar.a() == null) {
            return 0;
        }
        return this.f33015b.a().f32389a;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isAdValid() {
        try {
            int expire_timestamp = ((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getExpire_timestamp();
            return SystemClock.uptimeMillis() - ((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void mute() {
        com.meishu.sdk.meishu_ad.nativ.b bVar;
        if (getAdPatternType() != 2 || (bVar = this.f33015b) == null || bVar.getMediaView() == null) {
            return;
        }
        this.f33015b.getMediaView().mute();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void pauseVideo() {
        com.meishu.sdk.meishu_ad.nativ.b bVar;
        if (getAdPatternType() != 2 || (bVar = this.f33015b) == null || bVar.getMediaView() == null) {
            return;
        }
        this.f33015b.getMediaView().pause();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void replay() {
        if (getAdPatternType() == 2) {
            new Handler().postDelayed(new g(), 300L);
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void resumeVideo() {
        com.meishu.sdk.meishu_ad.nativ.b bVar;
        if (getAdPatternType() != 2 || (bVar = this.f33015b) == null || bVar.getMediaView() == null) {
            return;
        }
        this.f33015b.getMediaView().resume();
    }

    @Override // com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(this.f33016c.getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(this.f33016c.getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a).getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setDownloadStatusListener(DownloadStatusListener downloadStatusListener) {
        this.f33021h = downloadStatusListener;
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if ((bVar != null ? bVar.getInteractionType() : 0) != 1) {
            return;
        }
        try {
            com.meishu.sdk.meishu_ad.nativ.b bVar2 = this.f33015b;
            String str = null;
            String[] strArr = bVar2 != null ? bVar2.a().getdUrl() : null;
            if (strArr != null && strArr.length > 0) {
                str = strArr[0];
            }
            com.meishu.sdk.meishu_ad.nativ.b bVar3 = this.f33015b;
            String packageName = (bVar3 == null || bVar3.a() == null) ? "" : this.f33015b.a().getPackageName();
            Map<Integer, l0> map = DownloadUtils.f31749h;
            if (!TextUtils.isEmpty(str) && downloadStatusListener != null) {
                DownloadUtils.f31751j.put(str, downloadStatusListener);
            }
            if (TextUtils.isEmpty(packageName) || downloadStatusListener == null) {
                return;
            }
            DownloadUtils.f31752k.put(packageName, downloadStatusListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void startVideo() {
        if (getAdPatternType() == 2) {
            new Handler().postDelayed(new f(), 300L);
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void stopVideo() throws IllegalStateException {
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
        if (bVar == null || bVar.getMediaView() == null || !(this.f33015b.getMediaView() instanceof NormalMediaView)) {
            return;
        }
        ((NormalMediaView) this.f33015b.getMediaView()).l();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void unmute() {
        com.meishu.sdk.meishu_ad.nativ.b bVar;
        if (getAdPatternType() != 2 || (bVar = this.f33015b) == null || bVar.getMediaView() == null) {
            return;
        }
        this.f33015b.getMediaView().unmute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void a(Boolean bool, Boolean bool2) {
        c();
        WeakReference<Activity> weakReference = this.f33026m;
        FeedAdOverlayManager.getInstance().onAdClickedIfOverlayExists(e(), ((RecyclerMixAdLoader) this.f33016c.getAdLoader()).getPosId(), weakReference != null ? weakReference.get() : null);
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, RecyclerAdMediaListener recyclerAdMediaListener) {
        ImageView imageView;
        NormalMediaView normalMediaView;
        try {
            normalMediaView = (NormalMediaView) this.f33015b.getMediaView();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (normalMediaView != null) {
            normalMediaView.setDisplayMode(1);
            if (i2 > 0) {
                normalMediaView.setContainerWidth(i2);
            }
            if (i3 > 0) {
                normalMediaView.setContainerHeight(i3);
            }
            normalMediaView.f32333S = true;
            imageView = new ImageView(normalMediaView.getContext());
            ExecutorService executorService = h0.f31906a;
            h0.b.f31910a.a(new o(this, imageView));
        } else {
            imageView = null;
        }
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
        if (i2 > 0 && i3 > 0) {
            layoutParams2.width = i2;
            layoutParams2.height = i3;
        }
        RelativeLayout relativeLayout = new RelativeLayout(viewGroup.getContext());
        viewGroup.removeAllViews();
        if (imageView != null && !(viewGroup instanceof LinearLayout)) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            viewGroup.addView(imageView, layoutParams2);
        }
        viewGroup.addView(relativeLayout, layoutParams2);
        try {
            com.meishu.sdk.meishu_ad.nativ.b bVar = this.f33015b;
            this.f33016c.getContext();
            bVar.a(relativeLayout, layoutParams, new com.meishu.sdk.platform.ms.recycler.b((com.meishu.sdk.meishu_ad.nativ.f) this.f33016c.f32888a, recyclerAdMediaListener));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(Activity activity, final ViewGroup viewGroup, List<View> list) {
        try {
            if (activity != null) {
                try {
                    if ((this.f33015b.a().getAct_type() & 512) != 512) {
                        return;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                boolean z2 = true;
                if (this.f33015b.a().getNativeSE() == 1) {
                    z2 = false;
                }
                List<View> listD = z2 ? d() : null;
                if (z2 && this.f33025l) {
                    list = listD;
                }
                if (list != null && !list.isEmpty()) {
                    if (this.f33024k == null) {
                        FrameLayout frameLayout = new FrameLayout(activity);
                        int height = -1;
                        int width = viewGroup.getWidth() <= 0 ? -1 : viewGroup.getWidth();
                        if (viewGroup.getHeight() > 0) {
                            height = viewGroup.getHeight();
                        }
                        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                        viewGroup.addView(frameLayout);
                        this.f33024k = frameLayout;
                    }
                    this.f33024k.setOnTouchListener(new c(list, new t.a() { // from class: U0.d
                        @Override // com.meishu.sdk.platform.ms.recycler.t.a
                        public final void a(float f2, float f3, long j2, float f4, float f5, float f6, int i2) {
                            this.f574a.a(viewGroup, f2, f3, j2, f4, f5, f6, i2);
                        }
                    }));
                    viewGroup.post(new d(viewGroup, z2, listD));
                    this.f33024k.getViewTreeObserver().addOnScrollChangedListener(this.f33028o);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup, float f2, float f3, long j2, float f4, float f5, float f6, int i2) {
        if (i2 / f6 > f33013p) {
            a(viewGroup, f2, f3, j2, f4, f5, i2, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ViewGroup viewGroup, float f2, float f3, long j2, float f4, float f5, int i2, boolean z2) {
        RecylcerAdInteractionListener recylcerAdInteractionListener;
        try {
            if (this.f33022i) {
                return;
            }
            if (z2) {
                FrameLayout frameLayout = this.f33024k;
                if (frameLayout != null && frameLayout.getVisibility() == 0 && frameLayout.getParent() != null && frameLayout.hasWindowFocus()) {
                    Rect rect = new Rect();
                    if (!frameLayout.getGlobalVisibleRect(rect)) {
                        return;
                    }
                    int iHeight = rect.height() * rect.width();
                    int width = (int) (frameLayout.getWidth() * frameLayout.getHeight() * 0.8d);
                    if (width <= 0) {
                        return;
                    }
                    if (iHeight < width) {
                        return;
                    }
                }
                return;
            }
            if (this.f33018e) {
                this.f33022i = true;
                try {
                    if (this.f33015b.a().getCbc() == 0 && (recylcerAdInteractionListener = this.f33017d) != null) {
                        recylcerAdInteractionListener.onAdClicked();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                com.meishu.sdk.core.utils.r.a().b(((RecyclerMixAdLoader) this.f33016c.getAdLoader()).getPosId() + "_adp", jCurrentTimeMillis);
                com.meishu.sdk.core.utils.r.a().b("adg_time", jCurrentTimeMillis);
                this.f33015b.a().setClkActType(512);
                this.f33015b.a().setClkPower(i2);
                s.a(this.f33015b, f2, f3, j2, f4, f5);
                c();
                i0.a(this.f33015b, viewGroup);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f33015b, false);
                try {
                    this.f33024k.getViewTreeObserver().removeOnScrollChangedListener(this.f33028o);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
