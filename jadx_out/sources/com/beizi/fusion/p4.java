package com.beizi.fusion;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdDownloadAppInfo;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdEventListener;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.rn;
import com.beizi.fusion.ui;
import com.beizi.fusion.widget.BeiZiAdContainer;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class p4 extends e2 {

    /* renamed from: B0, reason: collision with root package name */
    private boolean f15489B0;

    /* renamed from: C0, reason: collision with root package name */
    private boolean f15490C0;

    /* renamed from: D0, reason: collision with root package name */
    private ViewGroup f15491D0;

    /* renamed from: E0, reason: collision with root package name */
    private FrameLayout f15492E0;

    /* renamed from: F0, reason: collision with root package name */
    private long f15493F0;

    /* renamed from: G0, reason: collision with root package name */
    private boolean f15494G0;

    /* renamed from: H0, reason: collision with root package name */
    private long f15495H0;

    /* renamed from: I0, reason: collision with root package name */
    private BeiZiUnifiedAdResponse f15496I0;

    /* renamed from: J0, reason: collision with root package name */
    private FrameLayout f15497J0;

    /* renamed from: M0, reason: collision with root package name */
    private BeiZiUnifiedAdEventListener f15500M0;

    /* renamed from: Q0, reason: collision with root package name */
    private ih f15504Q0;

    /* renamed from: R0, reason: collision with root package name */
    private o f15505R0;

    /* renamed from: U, reason: collision with root package name */
    private Context f15508U;

    /* renamed from: V, reason: collision with root package name */
    private mp f15510V;

    /* renamed from: V0, reason: collision with root package name */
    private String f15511V0;

    /* renamed from: W, reason: collision with root package name */
    private pi f15512W;

    /* renamed from: W0, reason: collision with root package name */
    private String f15513W0;

    /* renamed from: X, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f15514X;

    /* renamed from: Y, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f15515Y;

    /* renamed from: Z, reason: collision with root package name */
    private ui f15516Z;

    /* renamed from: c0, reason: collision with root package name */
    private int f15519c0;

    /* renamed from: d0, reason: collision with root package name */
    private int f15520d0;

    /* renamed from: f0, reason: collision with root package name */
    private View f15522f0;

    /* renamed from: h0, reason: collision with root package name */
    private boolean f15524h0;

    /* renamed from: i0, reason: collision with root package name */
    private boolean f15525i0;

    /* renamed from: j0, reason: collision with root package name */
    private Boolean f15526j0;

    /* renamed from: k0, reason: collision with root package name */
    private boolean f15527k0;

    /* renamed from: l0, reason: collision with root package name */
    private long f15528l0;

    /* renamed from: m0, reason: collision with root package name */
    private long f15529m0;

    /* renamed from: n0, reason: collision with root package name */
    private long f15530n0;

    /* renamed from: o0, reason: collision with root package name */
    private boolean f15531o0;

    /* renamed from: p0, reason: collision with root package name */
    private boolean f15532p0;

    /* renamed from: q0, reason: collision with root package name */
    private long f15533q0;

    /* renamed from: r0, reason: collision with root package name */
    private int f15534r0;

    /* renamed from: s0, reason: collision with root package name */
    private int f15535s0;

    /* renamed from: t0, reason: collision with root package name */
    private FrameLayout f15536t0;

    /* renamed from: u0, reason: collision with root package name */
    private boolean f15537u0;

    /* renamed from: w0, reason: collision with root package name */
    private long f15539w0;

    /* renamed from: x0, reason: collision with root package name */
    private String f15540x0;

    /* renamed from: y0, reason: collision with root package name */
    private boolean f15541y0;

    /* renamed from: z0, reason: collision with root package name */
    private boolean f15542z0;

    /* renamed from: a0, reason: collision with root package name */
    private String f15517a0 = null;

    /* renamed from: b0, reason: collision with root package name */
    private boolean f15518b0 = false;

    /* renamed from: e0, reason: collision with root package name */
    private int f15521e0 = 0;

    /* renamed from: g0, reason: collision with root package name */
    private String f15523g0 = null;

    /* renamed from: v0, reason: collision with root package name */
    private String[] f15538v0 = new String[4];

    /* renamed from: A0, reason: collision with root package name */
    private String f15488A0 = "#00000000";

    /* renamed from: K0, reason: collision with root package name */
    private boolean f15498K0 = false;

    /* renamed from: L0, reason: collision with root package name */
    private boolean f15499L0 = false;

    /* renamed from: N0, reason: collision with root package name */
    private boolean f15501N0 = true;

    /* renamed from: O0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f15502O0 = new a();

    /* renamed from: P0, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f15503P0 = new c();

    /* renamed from: S0, reason: collision with root package name */
    public String f15506S0 = "com.beizi.fusion.install.receiver";

    /* renamed from: T0, reason: collision with root package name */
    public String f15507T0 = "com.beizi.fusion.download.receiver";

    /* renamed from: U0, reason: collision with root package name */
    private int f15509U0 = 0;

    public class a implements ViewTreeObserver.OnScrollChangedListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (p4.this.f15537u0 && !p4.this.f15531o0 && !p4.this.f15541y0 && System.currentTimeMillis() - p4.this.f15539w0 >= p4.this.f15533q0 && System.currentTimeMillis() - p4.this.f15530n0 >= 50) {
                    p4.this.f15530n0 = System.currentTimeMillis();
                    if (bq.a(p4.this.f15497J0, 0.8d)) {
                        int[] iArr = new int[2];
                        if (p4.this.f15497J0 != null) {
                            p4.this.f15497J0.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && p4.this.f15535s0 == 0) {
                            p4.this.f15535s0 = iArr[1];
                        }
                        mh.b("BeiZis", "mOnScrollChangedListener mAdSlideScrollDistance:" + p4.this.f15535s0 + ";mAdSlideClickDistance:" + p4.this.f15534r0 + ";screenLocation[1]:" + iArr[1]);
                        if (Math.abs(p4.this.f15535s0 - iArr[1]) < p4.this.f15534r0) {
                            return;
                        }
                        p4 p4Var = p4.this;
                        p4Var.a(p4Var.f15538v0, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float[] f15544a;

        public b(float[] fArr) {
            this.f15544a = fArr;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() == 0) {
                    this.f15544a[0] = motionEvent.getX();
                    this.f15544a[1] = motionEvent.getY();
                    this.f15544a[2] = motionEvent.getRawX();
                    this.f15544a[3] = motionEvent.getRawY();
                    if (p4.this.f15489B0) {
                        p4 p4Var = p4.this;
                        FrameLayout frameLayout = p4Var.f15492E0;
                        FrameLayout frameLayout2 = p4.this.f15497J0;
                        float[] fArr = this.f15544a;
                        p4.this.a(p4Var.a(frameLayout, frameLayout2, fArr[0], fArr[1], fArr[2], fArr[3]), 0);
                    }
                }
                if (motionEvent.getAction() == 1 && p4.this.f15490C0) {
                    p4 p4Var2 = p4.this;
                    FrameLayout frameLayout3 = p4Var2.f15492E0;
                    FrameLayout frameLayout4 = p4.this.f15497J0;
                    float[] fArr2 = this.f15544a;
                    p4.this.a(p4Var2.a(frameLayout3, frameLayout4, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!p4.this.f15489B0) {
                if (!p4.this.f15490C0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c implements ViewTreeObserver.OnScrollChangedListener {
        public c() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (p4.this.f15497J0 != null && System.currentTimeMillis() - p4.this.f15493F0 >= 100) {
                    p4.this.f15493F0 = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    p4.this.f15497J0.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        p4.this.f15497J0.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (p4.this.f15492E0 == null || p4.this.f15491D0 == null) {
                            return;
                        }
                        p4.this.f15491D0.removeView(p4.this.f15492E0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        String[] f15547a = new String[4];

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f15548b;

        public d(View view) {
            this.f15548b = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewParent parent;
            try {
                if (motionEvent.getAction() == 0) {
                    if (p4.this.f15489B0 || p4.this.f15490C0) {
                        View view2 = this.f15548b;
                        if (view2 != null && (parent = view2.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    this.f15547a[0] = motionEvent.getX() + "";
                    this.f15547a[1] = motionEvent.getY() + "";
                    this.f15547a[2] = motionEvent.getRawX() + "";
                    this.f15547a[3] = motionEvent.getRawY() + "";
                    if (p4.this.f15489B0) {
                        p4.this.a(this.f15547a);
                    }
                }
                if (motionEvent.getAction() == 1 && p4.this.f15490C0) {
                    p4.this.a(this.f15547a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!p4.this.f15489B0) {
                if (!p4.this.f15490C0) {
                    return false;
                }
            }
            return true;
        }
    }

    public class e implements mi {
        public e() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            p4.this.Z0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (bq.a(p4.this.f15497J0) && !p4.this.f15531o0) {
                    p4.this.f13597G = 2;
                    if (p4.this.f15512W != null) {
                        p4.this.f15512W.a(p4.this.f13597G);
                    }
                    p4.this.a1();
                    p4.this.C0();
                    if (p4.this.f15512W != null) {
                        p4.this.f15512W.a(p4.this.f13597G);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class g implements ni {
        public g() {
        }

        @Override // com.beizi.fusion.ni
        public void a(pi piVar) {
            ApkBean apkBeanP;
            p4.this.f13620j = c2.ADLOAD;
            p4 p4Var = p4.this;
            p4Var.f15526j0 = Boolean.valueOf(p4Var.f15510V.s());
            p4 p4Var2 = p4.this;
            p4Var2.f15527k0 = p4Var2.f15510V.u();
            if (p4.this.f15510V != null) {
                p4 p4Var3 = p4.this;
                p4Var3.f13595E = p4Var3.f15510V.i();
                if (p4.this.f13595E != null) {
                    p4 p4Var4 = p4.this;
                    p4Var4.f13596F = p4Var4.f13595E.c();
                    if (p4.this.f13596F != 0) {
                        p4 p4Var5 = p4.this;
                        p4Var5.f13597G = p4Var5.f13595E.f() + 1;
                    }
                }
                p4 p4Var6 = p4.this;
                p4Var6.f13598H = p4Var6.f15510V.m();
            }
            if (p4.this.f15527k0) {
                p4 p4Var7 = p4.this;
                p4Var7.f15528l0 = p4Var7.f15510V.f();
                p4.this.f13612b.setIsCacheAd("1");
                if (p4.this.f15528l0 > 0) {
                    p4.this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - p4.this.f15528l0));
                }
                p4.this.I0();
            }
            if (p4.this.f15510V.q() != null) {
                try {
                    p4 p4Var8 = p4.this;
                    p4Var8.a(Double.parseDouble(p4Var8.f15510V.q()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            p4.this.g0();
            if (piVar == null) {
                p4.this.a(-991);
                return;
            }
            piVar.b(1);
            p4.this.f15512W = piVar;
            p4 p4Var9 = p4.this;
            p4Var9.f15513W0 = p4Var9.f15512W.i();
            if ("1".equals(p4.this.f15513W0)) {
                if (p4.this.f15512W != null && (apkBeanP = p4.this.f15512W.p()) != null) {
                    p4.this.f15511V0 = apkBeanP.getPkgName();
                }
            } else if ("2".equals(p4.this.f15513W0) && p4.this.f15512W != null) {
                p4 p4Var10 = p4.this;
                p4Var10.f15511V0 = p4Var10.f15512W.e();
            }
            p4.this.g1();
        }

        @Override // com.beizi.fusion.ni
        public void onAdFailed(int i2) {
            p4.this.a(String.valueOf(i2), i2);
        }
    }

    public class h implements BeiZiUnifiedAdResponse {
        public h() {
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public void bindAdToView(Context context, BeiZiAdContainer beiZiAdContainer, List list) {
            p4.this.a(context, beiZiAdContainer, list);
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getAdLogoUrl() {
            return p4.this.X0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getAppName() {
            return p4.this.T0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public int getAppStatus() {
            return p4.this.f15509U0;
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getDesc() {
            return p4.this.U0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public BeiZiUnifiedAdDownloadAppInfo getDownloadAppInfo() {
            return p4.this.V0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public int getECPM() {
            String strS = p4.this.s();
            if (strS == null) {
                return -1;
            }
            try {
                return Integer.parseInt(strS);
            } catch (Exception unused) {
                return -1;
            }
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public Map getExtraInfo() {
            return null;
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getIconUrl() {
            return p4.this.W0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getRewardTaskAction() {
            return p4.this.f15513W0;
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public String getTitle() {
            return p4.this.Y0();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public boolean isValid() {
            return p4.this.c1();
        }

        @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
        public void setNativeADEventListener(BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener) {
            p4.this.a(beiZiUnifiedAdEventListener);
        }
    }

    public class i implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f15554a;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                p4.this.Z0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public class b implements mi {
            public b() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                p4.this.Z0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public class c implements ri {
            public c() {
            }

            @Override // com.beizi.fusion.ri
            public void onAdShown() {
                p4.this.b1();
            }
        }

        public i(List list) {
            this.f15554a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (p4.this.f15497J0 != null) {
                    p4.this.N0();
                    p4.this.k1();
                    p4 p4Var = p4.this;
                    p4Var.f15519c0 = p4Var.f15497J0.getWidth();
                    p4 p4Var2 = p4.this;
                    p4Var2.f15520d0 = p4Var2.f15497J0.getHeight();
                    p4 p4Var3 = p4.this;
                    p4Var3.a(p4Var3.f15519c0, p4.this.f15520d0, p4.this.f15520d0);
                }
                if (p4.this.f15512W != null) {
                    p4.this.f15512W.a(p4.this.f13597G);
                }
                if (p4.this.f15489B0 || p4.this.f15490C0) {
                    p4.this.a(this.f15554a);
                } else {
                    List list = this.f15554a;
                    if (list == null || list.size() <= 0) {
                        si.a(p4.this.f15512W, p4.this.f15497J0, new b());
                    } else {
                        si.a(p4.this.f15512W, p4.this.f15497J0, this.f15554a, new a());
                    }
                }
                if (!p4.this.f15501N0 && ("1".equals(p4.this.f15513W0) || "2".equals(p4.this.f15513W0))) {
                    if (vo.a(p4.this.f15508U, p4.this.f15511V0)) {
                        p4.this.f15509U0 = 1;
                    }
                    if (p4.this.f15500M0 != null) {
                        p4.this.f15500M0.onADStatusChanged();
                    }
                }
                p4.this.f15501N0 = false;
                if (p4.this.f15498K0 || p4.this.f15510V == null) {
                    return;
                }
                p4.this.f15510V.a(p4.this.f15497J0, new c());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.this.a1();
        }
    }

    public class k implements ui.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15560a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f15561b;

        public class a implements mi {
            public a() {
            }

            @Override // com.beizi.fusion.mi
            public void a() {
                p4.this.Z0();
                p4.this.C0();
            }

            @Override // com.beizi.fusion.mi
            public void b() {
            }
        }

        public k(int i2, int i3) {
            this.f15560a = i2;
            this.f15561b = i3;
        }

        @Override // com.beizi.fusion.ui.b
        public void a() {
            try {
                if (bq.a(p4.this.f15497J0) && !p4.this.f15541y0) {
                    p4.this.f15531o0 = true;
                    p4.this.f15541y0 = true;
                    int[] iArr = new int[2];
                    p4.this.f15497J0.getLocationOnScreen(iArr);
                    int[] iArrB = rl.b(this.f15560a / 2, this.f15561b / 2);
                    if (p4.this.f15512W != null && p4.this.f15497J0 != null) {
                        p4.this.R0();
                        p4.this.f15512W.a(p4.this.f15497J0, String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1]), 2, new a());
                    }
                    if (!p4.this.f15518b0 || p4.this.f15515Y == null) {
                        return;
                    }
                    p4.this.f15518b0 = false;
                    p4.this.f15516Z.b(p4.this.f15515Y);
                    go.b(p4.this.f15508U, p4.this.f15517a0, Long.valueOf(System.currentTimeMillis()));
                    tn.a().a(p4.this.f15517a0, System.currentTimeMillis());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class l implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSpacesBean.BuyerBean.ShakeViewBean f15564a;

        public l(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
            this.f15564a = shakeViewBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.this.f15516Z.a(this.f15564a);
        }
    }

    public class m implements mi {
        public m() {
        }

        @Override // com.beizi.fusion.mi
        public void a() {
            p4.this.Z0();
        }

        @Override // com.beizi.fusion.mi
        public void b() {
        }
    }

    public class n implements View.OnTouchListener {
        public n() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                p4.this.f15537u0 = true;
                p4.this.f15538v0[0] = motionEvent.getX() + "";
                p4.this.f15538v0[1] = motionEvent.getY() + "";
                p4.this.f15538v0[2] = motionEvent.getRawX() + "";
                p4.this.f15538v0[3] = motionEvent.getRawY() + "";
            }
            return false;
        }
    }

    public class o extends BroadcastReceiver {
        private o() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (p4.this.f15512W != null && !TextUtils.isEmpty(p4.this.f15511V0)) {
                    String stringExtra = intent.getStringExtra("pkName");
                    if (!TextUtils.isEmpty(stringExtra) && stringExtra.equals(p4.this.f15511V0)) {
                        if (p4.this.f15507T0.equals(intent.getAction())) {
                            p4.this.f15509U0 = 4;
                            if (p4.this.f15500M0 != null) {
                                p4.this.f15500M0.onADStatusChanged();
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }

        public /* synthetic */ o(p4 p4Var, g gVar) {
            this();
        }
    }

    public p4(Context context, long j2, long j3, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, n3 n3Var) {
        this.f15508U = context;
        this.f15495H0 = j3;
        this.f13615e = buyerBean;
        this.f13614d = n3Var;
        this.f13616f = forwardBean;
        this.f15529m0 = j2;
        this.f15524h0 = true;
        this.f15525i0 = true;
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        try {
            if (this.f15512W == null || this.f15524h0) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(this.f15508U);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutB = eq.b(this.f15508U, this.f15512W.n());
            frameLayoutB.setVisibility(0);
            linearLayout.addView(frameLayoutB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewA = eq.a(this.f15508U, this.f15512W.a());
            viewA.setVisibility(0);
            linearLayout.addView(viewA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewA.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewA.setLayoutParams(layoutParams);
            this.f15497J0.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = vo.a(this.f15508U, 6.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void O0() {
        try {
            if (this.f15532p0 && this.f15497J0 != null && this.f15508U != null) {
                this.f15536t0 = new FrameLayout(this.f15508U);
                int width = this.f15497J0.getWidth();
                int height = this.f15497J0.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.f15536t0.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.f15536t0.setBackgroundColor(Color.parseColor(this.f15488A0));
                this.f15497J0.addView(this.f15536t0);
                this.f15536t0.setOnTouchListener(new n());
                this.f15536t0.getViewTreeObserver().addOnScrollChangedListener(this.f15502O0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void P0() {
        Handler handler;
        try {
            int iK = k();
            if (iK > 0 && (handler = this.f13602L) != null) {
                handler.postDelayed(new f(), iK);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void Q0() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f15497J0 != null && this.f15508U != null && (buyerBean = this.f13615e) != null) {
                if ((this.f15489B0 || this.f15490C0) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && rl.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f15497J0.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
                    this.f15491D0 = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iJ = vo.j(this.f15508U);
                    int iG = vo.g(this.f15508U);
                    int width2 = this.f15497J0.getWidth();
                    int height2 = this.f15497J0.getHeight();
                    int[] iArr = new int[2];
                    this.f15497J0.getLocationOnScreen(iArr);
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    int i4 = -1;
                    if (reference == 0) {
                        iJ = width2;
                        iG = height2;
                    } else if (reference != 1) {
                        iJ = -1;
                        iG = -1;
                    }
                    try {
                        if (!TextUtils.isEmpty(width)) {
                            iJ = width.endsWith("%") ? (Integer.parseInt(width.substring(0, width.indexOf("%"))) * iJ) / 100 : Integer.parseInt(width);
                        }
                        if (!TextUtils.isEmpty(height)) {
                            iG = height.endsWith("%") ? (Integer.parseInt(height.substring(0, height.indexOf("%"))) * iG) / 100 : Integer.parseInt(height);
                        }
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                    if (iJ < 0) {
                        iJ = -1;
                    }
                    if (iG >= 0) {
                        i4 = iG;
                    }
                    this.f15492E0 = new FrameLayout(this.f15508U);
                    this.f15492E0.setLayoutParams(new FrameLayout.LayoutParams(iJ, i4));
                    int iA = a(horizontalSpace, iJ, width2, i2);
                    int iB = b(verticalSpace, i4, height2, i3);
                    int iA2 = vo.a(this.f15508U, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.f15492E0.setX(iA);
                    this.f15492E0.setY(iB);
                    this.f15492E0.setBackgroundColor(Color.parseColor(this.f15488A0));
                    this.f15491D0.addView(this.f15492E0);
                    this.f15492E0.setOnTouchListener(new b(new float[4]));
                    this.f15497J0.getViewTreeObserver().addOnScrollChangedListener(this.f15503P0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0() {
        ui uiVar;
        try {
            if (this.f13595E != null && (uiVar = this.f15516Z) != null) {
                if (this.f15515Y == null) {
                    uiVar.a(1.9d, 1.5d);
                }
                if (this.f13597G != 1) {
                    return;
                }
                double dB = this.f13595E.b();
                double dA = this.f13595E.a();
                double dC = this.f15516Z.c();
                double d2 = this.f15516Z.d();
                if (dA > 0.0d && dC > 0.0d && dC < dA) {
                    this.f13597G = 2;
                } else if (dB > 0.0d && d2 > 0.0d && d2 < dB) {
                    this.f13597G = 2;
                }
                pi piVar = this.f15512W;
                if (piVar != null) {
                    piVar.a(this.f13597G);
                }
            }
        } catch (Exception unused) {
        }
    }

    private void S0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String T0() {
        pi piVar = this.f15512W;
        if (piVar == null) {
            return null;
        }
        return piVar.getAppName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String U0() {
        ArrayList arrayListL;
        String strD = null;
        try {
            pi piVar = this.f15512W;
            if (piVar != null && !TextUtils.isEmpty(piVar.d())) {
                strD = this.f15512W.d();
                if (TextUtils.isEmpty(strD) && (arrayListL = this.f15512W.l()) != null && arrayListL.size() >= 2) {
                    return (String) arrayListL.get(1);
                }
            }
            return strD;
        } catch (Exception e2) {
            e2.printStackTrace();
            return strD;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BeiZiUnifiedAdDownloadAppInfo V0() {
        try {
            ApkBean apkBeanP = this.f15512W.p();
            if (apkBeanP == null || TextUtils.isEmpty(apkBeanP.getApkName()) || TextUtils.isEmpty(apkBeanP.getAppDeveloper()) || TextUtils.isEmpty(apkBeanP.getAppVersion()) || TextUtils.isEmpty(apkBeanP.getAppPrivacyUrl()) || TextUtils.isEmpty(apkBeanP.getAppintro())) {
                return null;
            }
            String appPermissionsUrl = apkBeanP.getAppPermissionsUrl();
            String appPermissionsDesc = apkBeanP.getAppPermissionsDesc();
            if (TextUtils.isEmpty(appPermissionsUrl) && TextUtils.isEmpty(appPermissionsDesc)) {
                return null;
            }
            BeiZiUnifiedAdDownloadAppInfo beiZiUnifiedAdDownloadAppInfo = new BeiZiUnifiedAdDownloadAppInfo();
            beiZiUnifiedAdDownloadAppInfo.setAppName(apkBeanP.getApkName());
            beiZiUnifiedAdDownloadAppInfo.setAppVersion(apkBeanP.getAppVersion());
            beiZiUnifiedAdDownloadAppInfo.setAppDeveloper(apkBeanP.getAppDeveloper());
            String appPermissionsUrl2 = apkBeanP.getAppPermissionsUrl();
            if (TextUtils.isEmpty(appPermissionsUrl2)) {
                String appPermissionsDesc2 = apkBeanP.getAppPermissionsDesc();
                if (!TextUtils.isEmpty(appPermissionsDesc2)) {
                    beiZiUnifiedAdDownloadAppInfo.setAppPermission(appPermissionsDesc2);
                }
            } else {
                beiZiUnifiedAdDownloadAppInfo.setAppPermission(appPermissionsUrl2);
            }
            if (!TextUtils.isEmpty(apkBeanP.getAppPrivacyUrl())) {
                beiZiUnifiedAdDownloadAppInfo.setAppPrivacy(apkBeanP.getAppPrivacyUrl());
            }
            beiZiUnifiedAdDownloadAppInfo.setAppIntro(apkBeanP.getAppintro());
            return beiZiUnifiedAdDownloadAppInfo;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String W0() {
        pi piVar = this.f15512W;
        if (piVar == null || TextUtils.isEmpty(piVar.getIconUrl())) {
            return null;
        }
        return this.f15512W.getIconUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String X0() {
        if (this.f15510V == null) {
            return null;
        }
        try {
            rn.e eVarN = this.f15512W.n();
            if (eVarN == null) {
                return null;
            }
            return eVarN.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Y0() {
        ArrayList arrayListL;
        String strB = null;
        try {
            pi piVar = this.f15512W;
            if (piVar != null) {
                strB = piVar.b();
                if (TextUtils.isEmpty(strB) && (arrayListL = this.f15512W.l()) != null && arrayListL.size() >= 1) {
                    return (String) arrayListL.get(0);
                }
            }
            return strB;
        } catch (Exception e2) {
            e2.printStackTrace();
            return strB;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0() {
        ui uiVar;
        AdSpacesBean.BuyerBean buyerBean;
        try {
            if ("1".equals(this.f15513W0) || "2".equals(this.f15513W0)) {
                if (vo.a(this.f15508U, this.f15511V0)) {
                    this.f15509U0 = 1;
                } else if ("2".equals(this.f15513W0)) {
                    this.f15509U0 = 8;
                }
                BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener = this.f15500M0;
                if (beiZiUnifiedAdEventListener != null) {
                    beiZiUnifiedAdEventListener.onADStatusChanged();
                }
            }
            i1();
            this.f15531o0 = true;
            this.f15541y0 = false;
            this.f15542z0 = false;
            j1();
            if (this.f13599I && (buyerBean = this.f13615e) != null) {
                this.f13612b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
                I0();
            }
            a0();
            a(this.f15508U, this.f15497J0, this.f13598H);
            if ((!this.f13599I || this.f13600J || this.f13596F != 0) && this.f13597G != 2) {
                n3 n3Var = this.f13614d;
                if (n3Var != null && n3Var.z() != 2) {
                    this.f13614d.b(x());
                }
                Z();
                J0();
                BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener2 = this.f15500M0;
                if (beiZiUnifiedAdEventListener2 != null) {
                    beiZiUnifiedAdEventListener2.onADClicked();
                }
                if (this.f15521e0 != 0 && (uiVar = this.f15516Z) != null && this.f15522f0 != null) {
                    uiVar.h();
                    this.f15522f0.setVisibility(8);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1() {
        FrameLayout frameLayout;
        try {
            if (!this.f15541y0 && !this.f15531o0 && this.f15512W != null && (frameLayout = this.f15497J0) != null) {
                int[] iArr = new int[2];
                int width = frameLayout.getWidth();
                int height = this.f15497J0.getHeight();
                this.f15497J0.getLocationOnScreen(iArr);
                int[] iArrB = rl.b(width / 2, height / 2);
                a(new String[]{String.valueOf(iArrB[0]), String.valueOf(iArrB[1]), String.valueOf(iArrB[0] + iArr[0]), String.valueOf(iArrB[1] + iArr[1])}, 0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1() {
        if (this.f15498K0) {
            return;
        }
        this.f15539w0 = System.currentTimeMillis();
        this.f13620j = c2.ADSHOW;
        if (this.f15527k0) {
            this.f13612b.setIsCacheAd("1");
            if (this.f15528l0 > 0) {
                this.f13612b.setCacheTime(String.valueOf(System.currentTimeMillis() - this.f15528l0));
            }
            I0();
        }
        if (!this.f15498K0) {
            n3 n3Var = this.f13614d;
            if (n3Var != null && n3Var.z() != 2) {
                this.f13614d.d(x());
            }
            this.f15498K0 = true;
            j0();
            e0();
            M0();
        }
        BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener = this.f15500M0;
        if (beiZiUnifiedAdEventListener != null) {
            beiZiUnifiedAdEventListener.onADExposed();
        }
        O0();
        Q0();
        h1();
        P0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c1() {
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return false;
        }
        return mpVar.v();
    }

    private boolean d1() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f15514X;
        if (shakeViewBean == null) {
            return false;
        }
        return rl.a(shakeViewBean.getRenderRate());
    }

    private boolean e1() {
        try {
            return System.currentTimeMillis() - vo.a(this.f15508U).longValue() < this.f15515Y.getUserProtectTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void f1() {
        if (this.f13614d == null) {
            return;
        }
        f();
        u5 u5Var = this.f13617g;
        if (u5Var == u5.SUCCESS) {
            l1();
            this.f13614d.a(x(), this.f15496I0);
        } else if (u5Var == u5.FAIL) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g1() {
        if (W()) {
            f1();
        } else {
            A();
        }
    }

    private void h1() {
        int iA;
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return;
        }
        try {
            zk zkVarP = mpVar.p();
            if (zkVarP != null && (iA = zkVarP.a()) > 0) {
                new Handler().postDelayed(new j(), iA);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void i1() {
        try {
            if (("1".equals(this.f15513W0) || "2".equals(this.f15513W0)) && "1".equals(this.f15513W0) && this.f15504Q0 == null) {
                this.f15504Q0 = ih.a(this.f15508U.getApplicationContext());
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(this.f15506S0);
                intentFilter.addAction(this.f15507T0);
                o oVar = new o(this, null);
                this.f15505R0 = oVar;
                this.f15504Q0.a(oVar, intentFilter);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void j1() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.f15536t0;
            if (frameLayout3 != null && this.f15502O0 != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.f15502O0);
            }
            FrameLayout frameLayout4 = this.f15497J0;
            if (frameLayout4 != null && (frameLayout2 = this.f15536t0) != null) {
                frameLayout4.removeView(frameLayout2);
                this.f15536t0 = null;
            }
            FrameLayout frameLayout5 = this.f15497J0;
            if (frameLayout5 != null && this.f15503P0 != null) {
                frameLayout5.getViewTreeObserver().removeOnScrollChangedListener(this.f15503P0);
            }
            ViewGroup viewGroup = this.f15491D0;
            if (viewGroup == null || (frameLayout = this.f15492E0) == null) {
                return;
            }
            viewGroup.removeView(frameLayout);
            this.f15492E0 = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        View viewA;
        try {
            pi piVar = this.f15512W;
            if (piVar == null || this.f15525i0 || piVar.p() == null || (viewA = si.a(this.f15508U, this.f15512W)) == null) {
                return;
            }
            viewA.setLayoutParams(new FrameLayout.LayoutParams((this.f15497J0.getLayoutParams().width * 2) / 3, -2));
            this.f15497J0.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 51));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void l1() {
        this.f15496I0 = new h();
    }

    private void m1() {
        o oVar;
        try {
            ih ihVar = this.f15504Q0;
            if (ihVar != null && (oVar = this.f15505R0) != null) {
                ihVar.a(oVar);
            }
            this.f15504Q0 = null;
            this.f15505R0 = null;
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void A0() {
        h0();
        L0();
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f13615e.getShakeView();
        this.f15514X = shakeView;
        if (shakeView != null) {
            this.f15515Y = shakeView.getCoolShakeView();
            this.f15521e0 = this.f15514X.getClkremove();
            this.f15523g0 = this.f15514X.getTitle();
        }
        this.f15517a0 = "cool_" + this.f13619i;
        mp mpVar = new mp(this.f15508U, this.f13619i, new g());
        this.f15510V = mpVar;
        mpVar.b(true);
        try {
            this.f15510V.a(this.f13612b.m44clone());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f15510V.a((int) this.f15529m0);
        this.f15510V.a(this.f13615e);
        if ("S2S".equals(l())) {
            this.f15510V.c(l());
            n3 n3Var = this.f13614d;
            if (n3Var != null) {
                String strQ = n3Var.q();
                if (!TextUtils.isEmpty(strQ)) {
                    this.f15510V.b(strQ);
                }
            }
        }
        n3 n3Var2 = this.f13614d;
        if (n3Var2 != null) {
            this.f15510V.c(n3Var2.y());
            this.f15510V.d(this.f13614d.v());
            this.f15510V.a(true);
        }
        this.f15510V.w();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        r6.f13600J = com.beizi.fusion.rl.a(java.lang.Integer.parseInt(r3.getRate()));
     */
    @Override // com.beizi.fusion.e2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B0() {
        /*
            r6 = this;
            com.beizi.fusion.n3 r0 = r6.f13614d
            if (r0 != 0) goto L6
            goto Lfb
        L6:
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getAppId()
            r6.f13618h = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getSpaceId()
            r6.f13619i = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            java.lang.String r0 = r0.getBuyerSpaceUuId()
            r6.f13613c = r0
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r0 = r6.f13615e
            com.beizi.fusion.model.AdSpacesBean$NativeOptimizeBean r0 = r0.getNativeOptimize()
            if (r0 == 0) goto L71
            java.lang.String r1 = r0.getNativeUuid()
            r6.f15540x0 = r1
            com.beizi.fusion.model.AdSpacesBean$NativeOptimizeAdSlideBean r1 = r0.getAdSlide()
            if (r1 == 0) goto L49
            int r2 = r1.getRandomNum()
            boolean r2 = com.beizi.fusion.rl.a(r2)
            r6.f15532p0 = r2
            int r2 = r1.getNeedTime()
            long r2 = (long) r2
            r6.f15533q0 = r2
            int r1 = r1.getDistance()
            r6.f15534r0 = r1
        L49:
            int r1 = r0.getCloseClickNum()
            boolean r1 = com.beizi.fusion.rl.a(r1)
            r6.f15542z0 = r1
            int r1 = r0.getTouchDownNum()
            boolean r1 = com.beizi.fusion.rl.a(r1)
            r6.f15489B0 = r1
            int r1 = r0.getHoldSlideNum()
            boolean r1 = com.beizi.fusion.rl.a(r1)
            r6.f15490C0 = r1
            int r0 = r0.getAddClickNum()
            boolean r0 = com.beizi.fusion.rl.a(r0)
            r6.f15494G0 = r0
        L71:
            r0 = 1
            com.beizi.fusion.model.AdSpacesBean$BuyerBean r1 = r6.f13615e     // Catch: java.lang.Exception -> Laa
            java.util.List r1 = r1.getCallBackStrategy()     // Catch: java.lang.Exception -> Laa
            if (r1 == 0) goto Lb2
            int r2 = r1.size()     // Catch: java.lang.Exception -> Laa
            if (r2 <= 0) goto Lb2
            r6.f13599I = r0     // Catch: java.lang.Exception -> Laa
            r2 = 0
        L83:
            int r3 = r1.size()     // Catch: java.lang.Exception -> Laa
            if (r2 >= r3) goto Lb2
            java.lang.Object r3 = r1.get(r2)     // Catch: java.lang.Exception -> Laa
            com.beizi.fusion.model.AdSpacesBean$CallBackStrategyBean r3 = (com.beizi.fusion.model.AdSpacesBean.CallBackStrategyBean) r3     // Catch: java.lang.Exception -> Laa
            java.lang.String r4 = "290.300"
            java.lang.String r5 = r3.getEventCode()     // Catch: java.lang.Exception -> Laa
            boolean r4 = r4.equalsIgnoreCase(r5)     // Catch: java.lang.Exception -> Laa
            if (r4 == 0) goto Lac
            java.lang.String r1 = r3.getRate()     // Catch: java.lang.Exception -> Laa
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> Laa
            boolean r1 = com.beizi.fusion.rl.a(r1)     // Catch: java.lang.Exception -> Laa
            r6.f13600J = r1     // Catch: java.lang.Exception -> Laa
            goto Lb2
        Laa:
            r1 = move-exception
            goto Laf
        Lac:
            int r2 = r2 + 1
            goto L83
        Laf:
            r1.printStackTrace()
        Lb2:
            com.beizi.fusion.lk r1 = r6.f13611a
            if (r1 == 0) goto Ld4
            com.beizi.fusion.s1 r1 = r1.a()
            java.lang.String r2 = r6.f13613c
            com.beizi.fusion.events.EventBean r1 = r1.b(r2)
            r6.f13612b = r1
            if (r1 == 0) goto Ld4
            r6.D()
            r6.v0()
            android.content.Context r1 = r6.f15508U
            java.lang.String r2 = r6.f13618h
            com.beizi.fusion.yq.b(r1, r2)
            r6.w0()
        Ld4:
            r6.x()
            long r1 = r6.f15495H0
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto Le5
            android.os.Handler r3 = r6.f13602L
            r3.sendEmptyMessageDelayed(r0, r1)
            goto Lfb
        Le5:
            com.beizi.fusion.n3 r1 = r6.f13614d
            if (r1 == 0) goto Lfb
            int r1 = r1.n()
            if (r1 >= r0) goto Lfb
            com.beizi.fusion.n3 r0 = r6.f13614d
            int r0 = r0.z()
            r1 = 2
            if (r0 == r1) goto Lfb
            r6.A0()
        Lfb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.p4.B0():void");
    }

    @Override // com.beizi.fusion.e2
    public void D0() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f15516Z) == null) {
                return;
            }
            uiVar.g();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public void H0() {
    }

    @Override // com.beizi.fusion.e2
    public boolean S() {
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return false;
        }
        return mpVar.v();
    }

    @Override // com.beizi.fusion.e2
    public void U() {
        try {
            ui uiVar = this.f15516Z;
            if (uiVar != null) {
                uiVar.g();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.beizi.fusion.e2
    public void V() {
        ui uiVar;
        try {
            if (!q1.i().w() || (uiVar = this.f15516Z) == null) {
                return;
            }
            uiVar.a(false);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.e2
    public AdSpacesBean.BuyerBean m() {
        return this.f13615e;
    }

    @Override // com.beizi.fusion.e2
    public String n() {
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d();
    }

    @Override // com.beizi.fusion.e2
    public JSONObject p() {
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return null;
        }
        return mpVar.l();
    }

    @Override // com.beizi.fusion.e2
    public String s() {
        mp mpVar = this.f15510V;
        if (mpVar == null) {
            return null;
        }
        return mpVar.q();
    }

    @Override // com.beizi.fusion.e2
    public String x() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.e2
    public void z() {
        if (!L() || this.f15510V == null) {
            return;
        }
        G0();
    }

    @Override // com.beizi.fusion.e2
    public void g() {
        pi piVar = this.f15512W;
        if (piVar != null) {
            piVar.destroy();
        }
        mp mpVar = this.f15510V;
        if (mpVar != null) {
            mpVar.a();
        }
        ui uiVar = this.f15516Z;
        if (uiVar != null) {
            uiVar.h();
        }
        j1();
        m1();
        S0();
    }

    @Override // com.beizi.fusion.e2
    public c2 h() {
        return this.f13620j;
    }

    @Override // com.beizi.fusion.e2
    public void d(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            mp mpVar = this.f15510V;
            if (mpVar == null) {
                return;
            }
            mpVar.b(map);
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                String str2 = (String) obj3;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                String str3 = (String) obj2;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setHighestLossPrice(str3);
                }
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f13612b.setSecondPrice(str4);
                }
            }
            I0();
            t0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            try {
                shakeViewBean = this.f15514X;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        int isUnidirection = shakeViewBean.getIsUnidirection();
        ui uiVar = this.f15516Z;
        if (uiVar != null) {
            uiVar.b(regulatoryAngle);
            this.f15516Z.d(isUnidirection);
            g5 g5Var = this.f13595E;
            if (g5Var != null) {
                this.f15516Z.a(g5Var.b());
            }
        }
        if (this.f15515Y == null) {
            this.f15518b0 = true;
            this.f15516Z.a(shakeViewBean);
        } else if (a(shakeViewBean)) {
            this.f15516Z.b(this.f15515Y);
        } else if (e1()) {
            this.f15516Z.b(this.f15515Y);
        } else {
            this.f15518b0 = true;
            this.f15516Z.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.e2
    public void c(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            mp mpVar = this.f15510V;
            if (mpVar == null) {
                return;
            }
            mpVar.a(map);
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                String str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f13612b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f13612b.setAdnId(str2);
                }
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f13612b.setLossReason(str3);
                }
            }
            I0();
            s0();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, BeiZiAdContainer beiZiAdContainer, List list) {
        try {
            this.f15497J0 = beiZiAdContainer;
            if (beiZiAdContainer != null) {
                beiZiAdContainer.post(new i(list));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener) {
        this.f15500M0 = beiZiUnifiedAdEventListener;
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List list, String str) {
        if (list != null && str != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean = (AdSpacesBean.BuyerBean.OrderDataShakeViewBean) it.next();
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    private int b(String str, int i2, int i3, int i4) {
        int i5;
        int i6;
        try {
            if (TextUtils.isEmpty(str)) {
                return i4;
            }
            if (!"top".equals(str)) {
                if ("center".equals(str)) {
                    if (i2 > i3) {
                        i6 = (i2 - i3) / 2;
                        i4 -= i6;
                    } else {
                        i5 = (i3 - i2) / 2;
                        i4 += i5;
                    }
                } else if (!"bottom".equals(str)) {
                    i4 = 0;
                } else if (i2 > i3) {
                    i6 = i2 - i3;
                    i4 -= i6;
                } else {
                    i5 = i3 - i2;
                    i4 += i5;
                }
            }
            if (i4 < 0) {
                return 0;
            }
            return i4;
        } catch (Exception e2) {
            e2.printStackTrace();
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, int i4) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!P() && !q1.i().v() && d1()) {
                if (this.f15516Z == null) {
                    this.f15516Z = new ui(this.f15508U);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f15514X;
                if (shakeViewBean == null || this.f15516Z == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f15514X.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f15514X.getOrderData(), this.f15510V.c());
                if (orderDataShakeViewBeanA == null || orderDataShakeViewBeanA.getShakeView() == null) {
                    shakeView = null;
                } else {
                    shakeView = orderDataShakeViewBeanA.getShakeView();
                    if (shakeView != null) {
                        shakeViewUuid = shakeView.getShakeViewUuid();
                    }
                }
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setShakeViewUuid(shakeViewUuid);
                    I0();
                }
                if (i3 <= 0) {
                    i3 = i4;
                }
                this.f15516Z.a(this.f15526j0);
                View viewA = this.f15516Z.a(vo.b(this.f15508U, i2), vo.b(this.f15508U, i3), this.f15514X.getPosition(), this.f15523g0);
                this.f15522f0 = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f15514X;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f15497J0.addView(this.f15522f0, layoutParams2);
                        }
                    }
                }
                b(shakeView);
                this.f15516Z.a(new k(i2, i3));
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f15515Y;
                if (coolShakeViewBean != null) {
                    this.f15516Z.a(coolShakeViewBean, this.f15517a0);
                }
                this.f15516Z.a(this.f15497J0);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) go.a(this.f15508U, this.f15517a0, (Object) 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f15515Y.getCoolTime()) {
                new Handler().postDelayed(new l(shakeViewBean), this.f15515Y.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            tn.a().b(this.f15517a0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i2) {
        FrameLayout frameLayout;
        try {
            j1();
            if (this.f15512W != null && this.f15497J0 != null && !this.f15541y0 && !this.f15531o0) {
                this.f15531o0 = true;
                this.f15541y0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f15540x0);
                    I0();
                }
                pi piVar = this.f15512W;
                if (piVar == null || (frameLayout = this.f15497J0) == null) {
                    return;
                }
                piVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], i2, new m());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private int a(String str, int i2, int i3, int i4) {
        int i5;
        int i6;
        try {
            if (TextUtils.isEmpty(str)) {
                return i4;
            }
            if (!ScrollClickView.DIR_LEFT.equals(str)) {
                if ("center".equals(str)) {
                    if (i2 > i3) {
                        i6 = (i2 - i3) / 2;
                        i4 -= i6;
                    } else {
                        i5 = (i3 - i2) / 2;
                        i4 += i5;
                    }
                } else if (!ScrollClickView.DIR_RIGHT.equals(str)) {
                    i4 = 0;
                } else if (i2 > i3) {
                    i6 = i2 - i3;
                    i4 -= i6;
                } else {
                    i5 = i3 - i2;
                    i4 += i5;
                }
            }
            if (i4 < 0) {
                return 0;
            }
            return i4;
        } catch (Exception e2) {
            e2.printStackTrace();
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] a(View view, View view2, float f2, float f3, float f4, float f5) {
        String[] strArr = new String[0];
        try {
            String[] strArr2 = {f2 + "", f3 + "", f4 + "", f5 + ""};
            if (view == null || view2 == null) {
                return strArr2;
            }
            try {
                view.getLocationOnScreen(new int[2]);
                int width = view2.getWidth();
                int height = view2.getHeight();
                int[] iArr = new int[2];
                view2.getLocationOnScreen(iArr);
                int width2 = (width * ((int) ((f2 * 100.0d) / view.getWidth()))) / 100;
                int height2 = (height * ((int) ((f3 * 100.0d) / view.getHeight()))) / 100;
                int i2 = iArr[0] + width2;
                int i3 = iArr[1] + height2;
                strArr2[0] = width2 + "";
                strArr2[1] = height2 + "";
                strArr2[2] = i2 + "";
                strArr2[3] = i3 + "";
                return strArr2;
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                    return strArr2;
                } catch (Exception e3) {
                    e = e3;
                    strArr = strArr2;
                    e.printStackTrace();
                    return strArr;
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List list) {
        FrameLayout frameLayout;
        if (list == null || list.size() == 0) {
            list = new ArrayList();
        }
        if (this.f15494G0 && (frameLayout = this.f15497J0) != null) {
            list.add(frameLayout);
        }
        if (list.size() == 0) {
            return;
        }
        for (View view : list) {
            if (view != null) {
                view.setOnTouchListener(new d(view));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) {
        FrameLayout frameLayout;
        try {
            j1();
            if (this.f15512W != null && this.f15497J0 != null && !this.f15541y0) {
                this.f15531o0 = true;
                this.f15541y0 = true;
                EventBean eventBean = this.f13612b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f15540x0);
                    I0();
                }
                pi piVar = this.f15512W;
                if (piVar == null || (frameLayout = this.f15497J0) == null) {
                    return;
                }
                piVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], 0, new e());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
