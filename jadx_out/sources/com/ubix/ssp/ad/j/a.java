package com.ubix.ssp.ad.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.v.e;
import com.ubix.ssp.open.AdError;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.i f48260A;

    /* renamed from: B, reason: collision with root package name */
    private ValueAnimator f48261B;

    /* renamed from: C, reason: collision with root package name */
    private boolean f48262C;

    /* renamed from: D, reason: collision with root package name */
    private double f48263D;

    /* renamed from: E, reason: collision with root package name */
    private int f48264E;

    /* renamed from: F, reason: collision with root package name */
    private int f48265F;

    /* renamed from: G, reason: collision with root package name */
    private boolean f48266G;

    /* renamed from: H, reason: collision with root package name */
    private int f48267H;

    /* renamed from: I, reason: collision with root package name */
    private float f48268I;

    /* renamed from: J, reason: collision with root package name */
    private int f48269J;

    /* renamed from: K, reason: collision with root package name */
    private int f48270K;

    /* renamed from: L, reason: collision with root package name */
    private float f48271L;

    /* renamed from: M, reason: collision with root package name */
    private boolean f48272M;

    /* renamed from: N, reason: collision with root package name */
    private boolean f48273N;

    /* renamed from: O, reason: collision with root package name */
    private int f48274O;

    /* renamed from: P, reason: collision with root package name */
    private int f48275P;

    /* renamed from: Q, reason: collision with root package name */
    private int f48276Q;

    /* renamed from: R, reason: collision with root package name */
    private long f48277R;

    /* renamed from: S, reason: collision with root package name */
    private long f48278S;

    /* renamed from: T, reason: collision with root package name */
    private long f48279T;

    /* renamed from: U, reason: collision with root package name */
    private int f48280U;

    /* renamed from: V, reason: collision with root package name */
    private boolean f48281V;

    /* renamed from: W, reason: collision with root package name */
    private boolean f48282W;

    /* renamed from: a0, reason: collision with root package name */
    Rect f48283a0;

    /* renamed from: l, reason: collision with root package name */
    private com.ubix.ssp.ad.e.t.a.e f48284l;

    /* renamed from: m, reason: collision with root package name */
    com.ubix.ssp.ad.k.a f48285m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f48286n;

    /* renamed from: o, reason: collision with root package name */
    private int f48287o;

    /* renamed from: p, reason: collision with root package name */
    private l f48288p;

    /* renamed from: q, reason: collision with root package name */
    private float f48289q;

    /* renamed from: r, reason: collision with root package name */
    private int f48290r;

    /* renamed from: s, reason: collision with root package name */
    private int f48291s;

    /* renamed from: t, reason: collision with root package name */
    private int f48292t;

    /* renamed from: u, reason: collision with root package name */
    private AtomicBoolean f48293u;

    /* renamed from: v, reason: collision with root package name */
    private volatile ValueAnimator f48294v;

    /* renamed from: w, reason: collision with root package name */
    private volatile com.ubix.ssp.ad.e.a0.g f48295w;

    /* renamed from: x, reason: collision with root package name */
    private int f48296x;

    /* renamed from: y, reason: collision with root package name */
    private int f48297y;

    /* renamed from: z, reason: collision with root package name */
    private int f48298z;

    /* renamed from: com.ubix.ssp.ad.j.a$a, reason: collision with other inner class name */
    public class RunnableC0847a implements Runnable {
        public RunnableC0847a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.e("onWindowVisibilityChanged inner" + a.this.getWindowVisibility() + ";" + a.this.hasWindowFocus());
            if (a.this.getWindowVisibility() != 0 || a.this.f48288p == null) {
                return;
            }
            a.this.f48288p.sendEmptyMessage(5);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.k(3);
            if (a.this.u()) {
                if (a.this.findViewById(920101) != null) {
                    ((RelativeLayout.LayoutParams) a.this.findViewById(920101).getLayoutParams()).bottomMargin = r.a(16.0f);
                }
                if (a.this.findViewById(300008) != null) {
                    ((RelativeLayout.LayoutParams) a.this.findViewById(300008).getLayoutParams()).bottomMargin = r.a(40.0f);
                }
                if (a.this.findViewById(300012) != null) {
                    ((RelativeLayout.LayoutParams) a.this.findViewById(300012).getLayoutParams()).bottomMargin = r.a(36.0f);
                }
            }
            if (a.this.findViewById(920101) != null) {
                a.this.findViewById(920101).setVisibility(0);
            }
            if (a.this.findViewById(300008) != null) {
                a.this.findViewById(300008).setVisibility(0);
            }
            if (a.this.findViewById(300012) != null) {
                a.this.findViewById(300012).setVisibility(0);
            }
        }
    }

    public class c implements e.b {
        public c() {
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(com.ubix.ssp.ad.e.v.e eVar, String str, String str2, boolean z2) {
            a.this.a(str);
        }

        @Override // com.ubix.ssp.ad.e.v.e.b
        public void a(AdError adError) {
        }
    }

    public class d implements com.ubix.ssp.ad.g.k.j {
        public d() {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void c(int i2) {
            if (a.this.findViewWithTag(900102) != null) {
                a.this.findViewWithTag(900102).setVisibility(0);
            }
            com.ubix.ssp.ad.k.a aVar = a.this.f48285m;
            if (aVar != null) {
                aVar.setVisibility(4);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void e(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void f(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void g(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void h(int i2) {
            com.ubix.ssp.ad.k.a aVar;
            if (a.this.findViewWithTag(900102) != null) {
                a.this.findViewWithTag(900102).setVisibility(4);
            }
            com.ubix.ssp.ad.k.a aVar2 = a.this.f48285m;
            if (aVar2 != null) {
                aVar2.setVisibility(0);
            }
            if (a.this.f48298z != 2 || (aVar = a.this.f48285m) == null) {
                return;
            }
            aVar.u();
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void i(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void j(int i2) {
            com.ubix.ssp.ad.k.a aVar;
            if (a.this.f48298z != 2 || (aVar = a.this.f48285m) == null) {
                return;
            }
            aVar.u();
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, int i3) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void b(int i2, int i3) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, long j2, long j3) {
            if (a.this.f48260A != null) {
                a.this.f48260A.a(i2, j2, j3);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            ((com.ubix.ssp.ad.b) a.this).f45638a.putAll(map);
            if (a.this.f48260A != null) {
                a.this.f48260A.b(i2, view, ((com.ubix.ssp.ad.b) a.this).f45638a);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, Bundle bundle) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, View view) {
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__WIDTH__", a.this.getWidth() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__HEIGHT__", a.this.getHeight() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__IMP_AREA__", a.this.getLeft() + "_" + a.this.getTop() + "_" + a.this.getRight() + "_" + a.this.getBottom());
            HashMap map = ((com.ubix.ssp.ad.b) a.this).f45638a;
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.getLeft());
            sb.append("");
            map.put("adLeft", sb.toString());
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adRight", a.this.getRight() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adTop", a.this.getTop() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adBottom", a.this.getBottom() + "");
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (a.this.f48292t != ((Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f48291s) / 100) / 1000) {
                a.this.f48292t = ((Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f48291s) / 100) / 1000;
                a.this.k(1);
            }
            a.this.f48292t = ((Integer.parseInt(valueAnimator.getAnimatedValue() + "") * a.this.f48291s) / 100) / 1000;
        }
    }

    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            a.this.f48288p.sendEmptyMessage(5);
            try {
                if (a.this.f48294v != null) {
                    a.this.f48294v.removeAllListeners();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class h implements g.b {
        public h() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
            a.this.f48288p.sendEmptyMessage(5);
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
            if (a.this.f48292t != j2 / 1000) {
                a.this.f48292t = ((int) j2) / 1000;
                a.this.k(1);
            }
            a.this.f48292t = ((int) j2) / 1000;
        }
    }

    public class i implements s.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f48307a;

        public i(View view) {
            this.f48307a = view;
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (a.this.isShown()) {
                    ((com.ubix.ssp.ad.b) a.this).f45643f.f();
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "3");
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "3");
                    if (a.this.f48260A != null) {
                        a.this.f48260A.a(((com.ubix.ssp.ad.b) a.this).f45639b, this.f48307a, ((com.ubix.ssp.ad.b) a.this).f45638a);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(Bundle bundle) {
            try {
                if (a.this.isShown()) {
                    u.e("onSensorInfo=" + bundle.toString());
                    if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                        ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
                    }
                    if (a.this.f48260A != null) {
                        a.this.f48260A.a(((com.ubix.ssp.ad.b) a.this).f45639b, bundle);
                    }
                }
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
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__WIDTH__", a.this.getWidth() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__HEIGHT__", a.this.getHeight() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("__IMP_AREA__", a.this.getLeft() + "_" + a.this.getTop() + "_" + a.this.getRight() + "_" + a.this.getBottom());
            HashMap map = ((com.ubix.ssp.ad.b) a.this).f45638a;
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.getLeft());
            sb.append("");
            map.put("adLeft", sb.toString());
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adRight", a.this.getRight() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adTop", a.this.getTop() + "");
            ((com.ubix.ssp.ad.b) a.this).f45638a.put("adBottom", a.this.getBottom() + "");
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View viewFindViewById = a.this.findViewById(300001);
            if (viewFindViewById != null) {
                viewFindViewById.bringToFront();
            }
            View viewFindViewById2 = a.this.findViewById(300012);
            if (viewFindViewById2 != null) {
                viewFindViewById2.bringToFront();
            }
            View viewFindViewById3 = a.this.findViewById(300008);
            if (viewFindViewById3 != null) {
                viewFindViewById3.bringToFront();
            }
            View viewFindViewById4 = a.this.findViewById(300016);
            if (viewFindViewById4 != null) {
                viewFindViewById4.bringToFront();
            }
        }
    }

    public static class l extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private SoftReference<a> f48311a;

        public l(a aVar) {
            this.f48311a = new SoftReference<>(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            SoftReference<a> softReference = this.f48311a;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            this.f48311a.get().w();
        }

        private void d() {
            a aVar;
            try {
                SoftReference<a> softReference = this.f48311a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                if (this.f48311a.get().f48280U == 0) {
                    if (this.f48311a.get().f48294v != null) {
                        this.f48311a.get().f48294v.pause();
                        if (this.f48311a.get().f48261B != null) {
                            aVar = this.f48311a.get();
                            aVar.f48261B.pause();
                        }
                    }
                } else if (this.f48311a.get().f48295w != null) {
                    this.f48311a.get().f48295w.c();
                    if (this.f48311a.get().f48261B != null) {
                        aVar = this.f48311a.get();
                        aVar.f48261B.pause();
                    }
                }
                View viewFindViewById = this.f48311a.get().findViewById(300001);
                if (viewFindViewById != null && (viewFindViewById instanceof com.ubix.ssp.ad.e.g)) {
                    ((com.ubix.ssp.ad.e.g) viewFindViewById).c();
                }
                if (this.f48311a.get().f48285m != null) {
                    this.f48311a.get().f48285m.u();
                    this.f48311a.get().f48298z = 2;
                }
                if (((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f != null) {
                    ((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f.f();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        private void e() {
            a aVar;
            try {
                SoftReference<a> softReference = this.f48311a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                if (this.f48311a.get().f48280U == 0) {
                    if (this.f48311a.get().f48294v != null) {
                        this.f48311a.get().f48294v.resume();
                        if (this.f48311a.get().f48261B != null) {
                            aVar = this.f48311a.get();
                            aVar.f48261B.resume();
                        }
                    }
                } else if (this.f48311a.get().f48295w != null) {
                    this.f48311a.get().f48295w.d();
                    if (this.f48311a.get().f48261B != null) {
                        aVar = this.f48311a.get();
                        aVar.f48261B.resume();
                    }
                }
                View viewFindViewById = this.f48311a.get().findViewById(300001);
                if (viewFindViewById != null && (viewFindViewById instanceof com.ubix.ssp.ad.e.g)) {
                    ((com.ubix.ssp.ad.e.g) viewFindViewById).d();
                }
                if (this.f48311a.get().f48285m != null && this.f48311a.get().f48298z != 0) {
                    this.f48311a.get().f48285m.v();
                    this.f48311a.get().f48298z = 3;
                }
                if (this.f48311a.get().l() || !this.f48311a.get().f48262C) {
                    return;
                }
                if ((com.ubix.ssp.ad.d.b.f45786E == 1 && ((com.ubix.ssp.ad.b) this.f48311a.get()).f45641d) || this.f48311a.get().findViewById(910101) == null) {
                    return;
                }
                this.f48311a.get().setShakeSensor(this.f48311a.get().findViewById(910101));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        public void a() {
            u.a("handleAdClose");
            try {
                SoftReference<a> softReference = this.f48311a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                this.f48311a.get().f48298z = 5;
                if (((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f != null) {
                    ((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f.f();
                }
                if (((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f != null) {
                    ((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f.a();
                }
                if (this.f48311a.get().f48260A != null) {
                    this.f48311a.get().f48260A.e(((com.ubix.ssp.ad.b) this.f48311a.get()).f45639b);
                }
                if (this.f48311a.get().f48285m != null) {
                    this.f48311a.get().f48285m.w();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        public void b() {
            u.a("handleAdSkip");
            try {
                SoftReference<a> softReference = this.f48311a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                this.f48311a.get().f48298z = 5;
                if (this.f48311a.get().f48260A != null) {
                    if (((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f != null) {
                        ((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f.f();
                    }
                    if (((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f != null) {
                        ((com.ubix.ssp.ad.b) this.f48311a.get()).f45643f.a();
                    }
                    if (this.f48311a.get().f48294v != null) {
                        this.f48311a.get().f48294v.cancel();
                    }
                    if (this.f48311a.get().f48295w != null) {
                        this.f48311a.get().f48295w.a();
                    }
                    if (this.f48311a.get().f48261B != null) {
                        this.f48311a.get().f48261B.cancel();
                    }
                    this.f48311a.get().f48260A.a(((com.ubix.ssp.ad.b) this.f48311a.get()).f45639b, this.f48311a.get().f48291s);
                }
                if (this.f48311a.get().f48285m != null) {
                    this.f48311a.get().f48285m.w();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    c();
                    break;
                case 1:
                    SoftReference<a> softReference = this.f48311a;
                    if (softReference != null && softReference.get() != null && (this.f48311a.get().f48280U != 0 ? this.f48311a.get().f48295w == null || this.f48311a.get().f48295w.b() : this.f48311a.get().f48294v == null || !this.f48311a.get().f48294v.isRunning())) {
                        sendEmptyMessage(0);
                    }
                    a(message.arg1);
                    break;
                case 2:
                    d();
                    removeMessages(1);
                    break;
                case 3:
                    if (!hasMessages(1)) {
                        e();
                        this.f48311a.get().k(1);
                        break;
                    } else {
                        u.b("msg already exist");
                        break;
                    }
                case 4:
                    removeMessages(1);
                    removeMessages(2);
                    removeMessages(3);
                    b();
                    break;
                case 5:
                    removeMessages(1);
                    removeMessages(2);
                    removeMessages(3);
                    a();
                    break;
                case 6:
                    SoftReference<a> softReference2 = this.f48311a;
                    if (softReference2 != null && softReference2.get() != null && this.f48311a.get().f48285m != null) {
                        a(true);
                        break;
                    }
                    break;
                case 7:
                    SoftReference<a> softReference3 = this.f48311a;
                    if (softReference3 != null && softReference3.get() != null && this.f48311a.get().f48285m != null) {
                        a(false);
                        break;
                    }
                    break;
            }
        }

        private void a(int i2) {
            View viewFindViewById;
            SoftReference<a> softReference = this.f48311a;
            if (softReference == null || softReference.get() == null || (viewFindViewById = this.f48311a.get().findViewById(300001)) == null || !(viewFindViewById instanceof TextView) || this.f48311a.get().f48287o != 4) {
                return;
            }
            ((TextView) viewFindViewById).setText("跳过 " + i2);
        }

        private void a(boolean z2) {
            SoftReference<a> softReference = this.f48311a;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            if (this.f48311a.get().f48285m != null) {
                this.f48311a.get().f48285m.setMute(z2);
            }
            SoftReference<a> softReference2 = this.f48311a;
            if (softReference2 == null || softReference2.get().findViewById(300012) == null) {
                return;
            }
            ((ImageView) this.f48311a.get().findViewById(300012)).setImageDrawable(q.a(z2 ? "ubix/ic_volume_off.webp" : "ubix/ic_volume_on.webp"));
        }
    }

    public a(Context context) {
        super(context);
        this.f48286n = false;
        this.f48289q = 0.0f;
        this.f48290r = 5000;
        this.f48291s = 5000;
        this.f48292t = 5000;
        this.f48293u = new AtomicBoolean();
        this.f48296x = 0;
        this.f48297y = 0;
        this.f48298z = 0;
        this.f48263D = 3.0d;
        this.f48265F = 0;
        this.f48266G = false;
        this.f48267H = 0;
        this.f48268I = 0.05f;
        this.f48269J = 5;
        this.f48270K = 5;
        this.f48271L = 0.5625f;
        this.f48272M = false;
        this.f48273N = false;
        this.f48274O = -1;
        this.f48275P = 0;
        this.f48276Q = 0;
        this.f48277R = 0L;
        this.f48278S = 0L;
        this.f48279T = 0L;
        this.f48280U = 0;
        this.f48281V = false;
        this.f48282W = false;
        this.f48283a0 = new Rect();
        this.f48288p = new l(this);
        setClickable(true);
        this.f48263D = r.a().a(context);
    }

    private int getCurrentRotation() {
        return ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
    }

    private void setClickArea(int i2) {
        HashMap<String, String> map;
        String str;
        if (i2 == 132 || i2 == 68) {
            map = this.f45638a;
            str = "4";
        } else if (i2 == 16) {
            map = this.f45638a;
            str = "7";
        } else if (i2 == 32) {
            map = this.f45638a;
            str = "11";
        } else {
            if ((i2 & 4) != 4) {
                return;
            }
            map = this.f45638a;
            str = "4";
        }
        map.put("__CLICK_AREA__", str);
        this.f45638a.put("__CLICK_TRIGGER__", str);
    }

    @Override // com.ubix.ssp.ad.b, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f48266G = a(this.f48264E, motionEvent.getX(), motionEvent.getY());
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!a(this.f48264E, motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        a(motionEvent);
        try {
            float fRound = Math.round(this.f45648k * 100.0f) / 100.0f;
            this.f45638a.put("__TRI_VAL__", Base64.encodeToString((fRound + "").getBytes(), 10));
        } catch (Exception unused) {
        }
        this.f45638a.put("__INSIDE_AREA__", this.f48266G + "");
        setClickArea(this.f48264E);
        com.ubix.ssp.ad.g.k.i iVar = this.f48260A;
        if (iVar == null) {
            return true;
        }
        iVar.b(this.f45639b, this, this.f45638a);
        return true;
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return this.f48260A;
    }

    public long getSkipTime() {
        return this.f48290r * 1000;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.ubix.ssp.ad.g.k.i iVar;
        if (!"14".equals(this.f45638a.get("__CLICK_TRIGGER__"))) {
            this.f45638a.put("__CLICK_TRIGGER__", "");
        }
        if (view.getId() == 300012) {
            if (this.f48285m.t()) {
                k(7);
                return;
            } else {
                k(6);
                return;
            }
        }
        if (view.getId() == 300001) {
            u.e("get lsat by SPLASH_SKIP_VIEW_ID");
            if (this.f48281V || System.currentTimeMillis() - com.ubix.ssp.ad.d.b.f45800g <= this.f48279T || this.f48276Q != 1 || System.currentTimeMillis() - this.f48278S <= this.f48277R) {
                this.f48288p.sendEmptyMessage(4);
                return;
            }
            this.f48281V = true;
            this.f48278S = System.currentTimeMillis();
            a(this.f45638a);
            this.f45638a.put("__CLICK_AREA__", "15");
            this.f45638a.put("__CLICK_TRIGGER__", "15");
            iVar = this.f48260A;
            if (iVar == null) {
                return;
            }
        } else if (view.getId() == 910301 || view.getId() == 910401 || view.getId() == 910701 || view.getId() == 910501) {
            if (view.getId() == 910401 || view.getId() == 910701 || view.getId() == 910501) {
                this.f45638a.put("__INSIDE_AREA__", this.f48266G + "");
            }
            if (this.f45638a.containsKey("__CLICK_UNREAL_TRIGGER__") && "14".equals(this.f45638a.get("__CLICK_UNREAL_TRIGGER__"))) {
                this.f45638a.put("__CLICK_AREA__", "14");
                this.f45638a.put("__CLICK_TRIGGER__", "14");
                this.f45638a.remove("__CLICK_UNREAL_TRIGGER__");
            } else {
                this.f45638a.put("__CLICK_AREA__", "2");
                this.f45638a.put("__CLICK_TRIGGER__", "2");
            }
            iVar = this.f48260A;
            if (iVar == null) {
                return;
            }
        } else {
            if (view.getId() == 920301) {
                com.ubix.ssp.ad.g.k.i iVar2 = this.f48260A;
                if (iVar2 != null) {
                    iVar2.a(this.f45639b);
                    return;
                }
                return;
            }
            iVar = this.f48260A;
            if (iVar == null) {
                return;
            }
        }
        iVar.b(this.f45639b, view, this.f45638a);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int iB;
        int iA;
        int iA2;
        int iA3;
        int iB2;
        int measuredWidth;
        int iA4;
        int measuredWidth2;
        int iA5;
        View viewFindViewById;
        int iA6;
        int bottom;
        int measuredWidth3;
        int bottom2;
        int i6;
        int iA7;
        int i7;
        int iA8;
        com.ubix.ssp.ad.e.c cVar;
        double d2;
        int i8;
        int i9;
        int i10;
        int iA9;
        int i11;
        com.ubix.ssp.ad.e.d dVar;
        double d3;
        com.ubix.ssp.ad.e.d dVar2;
        int i12;
        int i13;
        super.onLayout(z2, i2, i3, i4, i5);
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            try {
                View childAt = getChildAt(i14);
                switch (childAt.getId()) {
                    case 300008:
                        View viewFindViewById2 = findViewById(920101);
                        if (viewFindViewById2 != null) {
                            int left = viewFindViewById2.getLeft();
                            int top = (int) (viewFindViewById2.getTop() - (r.a(28.0f) * 0.53d));
                            int iA10 = r.a(28.0f) + viewFindViewById2.getLeft();
                            iA3 = viewFindViewById2.getTop();
                            iB = left;
                            iA = iA10;
                            iA2 = top;
                        } else {
                            iB = r.b(6.0f);
                            int iA11 = i5 - (r.a(38.0f) + ((int) (r.a(28.0f) * 0.53d)));
                            iA = r.a(28.0f) + r.b(6.0f);
                            iA2 = iA11;
                            iA3 = i5 - r.a(38.0f);
                        }
                        childAt.layout(iB, iA2, iA, iA3);
                    case 300012:
                        View viewFindViewById3 = findViewById(920101);
                        if (viewFindViewById3 != null) {
                            int right = viewFindViewById3.getRight() - r.a(32.0f);
                            iA2 = viewFindViewById3.getTop() - r.a(32.0f);
                            iB2 = viewFindViewById3.getRight();
                            iA3 = viewFindViewById3.getTop();
                            iB = right;
                        } else {
                            iB = (i4 - r.b(6.0f)) - r.a(32.0f);
                            iA2 = i5 - (r.a(38.0f) + r.a(38.0f));
                            iB2 = i4 - r.b(6.0f);
                            iA3 = i5 - r.a(38.0f);
                        }
                        iA = iB2;
                        childAt.layout(iB, iA2, iA, iA3);
                    case 300016:
                        View viewFindViewById4 = findViewById(300008);
                        childAt.layout(viewFindViewById4.getRight(), viewFindViewById4.getTop() + ((viewFindViewById4.getHeight() - childAt.getMeasuredHeight()) / 2), viewFindViewById4.getRight() + childAt.getMeasuredWidth(), viewFindViewById4.getTop() + ((viewFindViewById4.getHeight() + childAt.getMeasuredHeight()) / 2));
                    case 900100:
                        try {
                            if (this.f48267H == 1) {
                                int i15 = i4 - i2;
                                int i16 = i5 - i3;
                                if (!e(i15, i16)) {
                                    com.ubix.ssp.ad.e.t.a.e eVar = (com.ubix.ssp.ad.e.t.a.e) childAt.findViewWithTag(900102);
                                    eVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
                                    Rect rectD = d(i15, i16);
                                    if (rectD.width() > 0 && rectD.height() > 0 && childAt.findViewWithTag(900102) != null) {
                                        eVar.layout(rectD.left, rectD.top, rectD.right, rectD.bottom);
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        break;
                    case 910100:
                        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                            childAt.layout((this.f48297y - childAt.getMeasuredWidth()) / 2, (i5 - r.a(180.0f)) - childAt.getMeasuredHeight(), (this.f48297y + childAt.getMeasuredWidth()) / 2, i5 - r.a(180.0f));
                            viewFindViewById = childAt.findViewById(910104);
                        } else if (this.f48272M) {
                            childAt.layout((this.f48297y - childAt.getMeasuredWidth()) / 2, (i5 - r.a(130.0f)) - childAt.getMeasuredHeight(), (this.f48297y + childAt.getMeasuredWidth()) / 2, i5 - r.a(130.0f));
                            ((com.ubix.ssp.ad.e.k) childAt.findViewById(910104)).a(true);
                        } else {
                            if (u()) {
                                measuredWidth = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                                iA4 = (i5 - r.a(210.0f)) - childAt.getMeasuredHeight();
                                measuredWidth2 = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                                iA5 = r.a(210.0f);
                            } else {
                                measuredWidth = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                                iA4 = (i5 - r.a(165.0f)) - childAt.getMeasuredHeight();
                                measuredWidth2 = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                                iA5 = r.a(165.0f);
                            }
                            childAt.layout(measuredWidth, iA4, measuredWidth2, i5 - iA5);
                            viewFindViewById = childAt.findViewById(910104);
                        }
                        ((com.ubix.ssp.ad.e.k) viewFindViewById).a(false);
                    case 910101:
                        if (u()) {
                            int i17 = this.f48297y;
                            iB = (i17 - (i17 / 5)) / 2;
                            int iA12 = i5 - r.a(200.0f);
                            int i18 = this.f48297y;
                            iA2 = iA12 - (i18 / 5);
                            iA = (i18 + (i18 / 5)) / 2;
                            iA6 = r.a(200.0f);
                        } else {
                            int i19 = this.f48297y;
                            iB = (i19 - (i19 / 5)) / 2;
                            int iA13 = i5 - r.a(120.0f);
                            int i20 = this.f48297y;
                            iA2 = iA13 - (i20 / 5);
                            iA = (i20 + (i20 / 5)) / 2;
                            iA6 = r.a(120.0f);
                        }
                        iA3 = i5 - iA6;
                        childAt.layout(iB, iA2, iA, iA3);
                    case 910102:
                        if (u()) {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            bottom = findViewById(910101).getBottom() + 20;
                            measuredWidth3 = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            bottom2 = findViewById(910101).getBottom();
                        } else {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            bottom = findViewById(910101).getBottom() + 20;
                            measuredWidth3 = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            bottom2 = findViewById(910101).getBottom();
                        }
                        int i21 = measuredWidth3;
                        iA3 = bottom2 + r.a(20.0f) + 20;
                        iA2 = bottom;
                        iA = i21;
                        childAt.layout(iB, iA2, iA, iA3);
                    case 910200:
                        if (!this.f48272M && u()) {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            iA2 = (i5 - r.a(190.0f)) - childAt.getMeasuredHeight();
                            iA = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            iA9 = r.a(190.0f);
                            iA3 = i5 - iA9;
                            childAt.layout(iB, iA2, iA, iA3);
                        } else {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            iA2 = (i5 - r.a(145.0f)) - childAt.getMeasuredHeight();
                            iA = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            iA9 = r.a(145.0f);
                            iA3 = i5 - iA9;
                            childAt.layout(iB, iA2, iA, iA3);
                        }
                        break;
                    case 910301:
                        int iMin = Math.min((int) (this.f48297y * 0.8d * 0.212d), (int) (r.a().c(getContext()) * 0.15d));
                        int i22 = (int) ((this.f48263D * 25.0d) / 2.0d);
                        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                            int iMin2 = (int) (Math.min(this.f48297y, this.f48296x) * 0.45d);
                            int i23 = (int) (iMin2 * 0.2d);
                            childAt.layout(((this.f48297y - iMin2) / 2) - i22, ((i5 - r.a(80.0f)) - i23) - i22, ((this.f48297y + iMin2) / 2) + i22, (i5 - r.a(80.0f)) + i22);
                            cVar = (com.ubix.ssp.ad.e.c) childAt;
                            int i24 = i22 * 2;
                            i9 = iMin2 + i24;
                            i8 = i23 + i24;
                        } else {
                            if (this.f48272M) {
                                childAt.layout(((int) (this.f48297y * 0.3d)) - i22, ((i5 - r.a(60.0f)) - iMin) - i22, ((int) (this.f48297y * 0.7d)) + i22, (i5 - r.a(60.0f)) + i22);
                                cVar = (com.ubix.ssp.ad.e.c) childAt;
                                d2 = this.f48297y * 0.4d;
                            } else {
                                if (u()) {
                                    i6 = ((int) (this.f48297y * 0.1d)) - i22;
                                    iA7 = ((i5 - r.a(100.0f)) - iMin) - i22;
                                    i7 = ((int) (this.f48297y * 0.9d)) + i22;
                                    iA8 = r.a(100.0f);
                                } else {
                                    i6 = ((int) (this.f48297y * 0.1d)) - i22;
                                    iA7 = ((i5 - r.a(70.0f)) - iMin) - i22;
                                    i7 = ((int) (this.f48297y * 0.9d)) + i22;
                                    iA8 = r.a(70.0f);
                                }
                                childAt.layout(i6, iA7, i7, (i5 - iA8) + i22);
                                cVar = (com.ubix.ssp.ad.e.c) childAt;
                                d2 = this.f48297y * 0.8d;
                            }
                            int i25 = i22 * 2;
                            int i26 = ((int) d2) + i25;
                            i8 = iMin + i25;
                            i9 = i26;
                        }
                        cVar.a(i9, i8);
                    case 910401:
                        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                            if (this.f48272M) {
                                i10 = (int) (i5 * 0.5d);
                                childAt.layout(0, i5 - i10, i4, i5);
                            } else {
                                i10 = (int) (i5 * 0.4d);
                                childAt.layout(0, i5 - i10, i4, i5);
                            }
                        } else if (this.f48272M) {
                            i10 = (int) (i5 * 0.65d);
                            childAt.layout(0, i5 - i10, i4, i5);
                        } else if (u()) {
                            i10 = (int) (i5 * 0.45d);
                            childAt.layout(0, i5 - i10, i4, i5);
                        } else {
                            i10 = (int) (i5 * 0.35d);
                            childAt.layout(0, i5 - i10, i4, i5);
                        }
                        ((com.ubix.ssp.ad.e.e) childAt).a(i4, i10);
                    case 910501:
                        childAt.layout(i4 - (i4 / 4), i3, i4, i5);
                        ((com.ubix.ssp.ad.e.r) childAt).a(i4 / 4, i5);
                    case 910601:
                        if (this.f48272M) {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            iA2 = (i5 - r.a(130.0f)) - childAt.getMeasuredHeight();
                            iA = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            iA9 = r.a(130.0f);
                            iA3 = i5 - iA9;
                            childAt.layout(iB, iA2, iA, iA3);
                        } else if (u()) {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            iA2 = (i5 - r.a(190.0f)) - childAt.getMeasuredHeight();
                            iA = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            iA9 = r.a(190.0f);
                            iA3 = i5 - iA9;
                            childAt.layout(iB, iA2, iA, iA3);
                        } else {
                            iB = (this.f48297y - childAt.getMeasuredWidth()) / 2;
                            iA2 = (i5 - r.a(145.0f)) - childAt.getMeasuredHeight();
                            iA = (this.f48297y + childAt.getMeasuredWidth()) / 2;
                            iA9 = r.a(145.0f);
                            iA3 = i5 - iA9;
                            childAt.layout(iB, iA2, iA, iA3);
                        }
                    case 910701:
                        if (com.ubix.ssp.ad.e.a0.c.h(getContext())) {
                            if (this.f48272M) {
                                double d4 = i4;
                                childAt.layout((int) (d4 * 0.2d), i5 - ((int) (0.35d * d4)), (int) (d4 * 0.8d), i5);
                                dVar2 = (com.ubix.ssp.ad.e.d) childAt;
                                i12 = (int) (d4 * 0.6d);
                                i13 = (int) (d4 * 0.4d);
                                dVar2.a(true, i12, i13);
                            } else {
                                double d5 = i4;
                                i11 = (int) (d5 * 0.4d);
                                childAt.layout((int) (d5 * 0.2d), i5 - i11, (int) (d5 * 0.8d), i5);
                                dVar = (com.ubix.ssp.ad.e.d) childAt;
                                d3 = d5 * 0.6d;
                                dVar.a(false, (int) d3, i11);
                            }
                        } else if (this.f48272M) {
                            double d6 = i4;
                            childAt.layout((int) (d6 * 0.2d), i5 - ((int) (d6 * 0.3d)), (int) (d6 * 0.8d), i5);
                            dVar2 = (com.ubix.ssp.ad.e.d) childAt;
                            i12 = (int) (d6 * 0.6d);
                            i13 = (int) (d6 * 0.4d);
                            dVar2.a(true, i12, i13);
                        } else {
                            double d7 = i4;
                            i11 = (int) (0.5d * d7);
                            childAt.layout((int) (0.1d * d7), i5 - i11, (int) (0.9d * d7), i5);
                            dVar = (com.ubix.ssp.ad.e.d) childAt;
                            d3 = d7 * 0.8d;
                            dVar.a(false, (int) d3, i11);
                        }
                    default:
                }
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
            return;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        int currentRotation = getCurrentRotation();
        this.f48272M = (currentRotation == 0 || currentRotation == 2) ? false : true;
        this.f48296x = r.a().c(getContext());
        this.f48297y = r.a().h(getContext());
        x();
        post(new e());
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            t();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        l lVar;
        int i2;
        super.onWindowFocusChanged(z2);
        if (z2) {
            lVar = this.f48288p;
            i2 = 3;
        } else {
            lVar = this.f48288p;
            i2 = 2;
        }
        lVar.sendEmptyMessage(i2);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        if (i2 == 0) {
            t();
        }
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        int i3;
        super.onWindowVisibilityChanged(i2);
        if (i2 != 0) {
            if (this.f48298z != 5) {
                this.f48288p.sendEmptyMessage(2);
                return;
            }
            return;
        }
        t();
        if (l()) {
            u.e("onWindowVisibilityChanged outer" + getWindowVisibility() + ";" + hasWindowFocus());
            if (this.f48275P <= 0 || !((i3 = this.f48274O) == 2 || i3 == 22)) {
                this.f48288p.sendEmptyMessage(5);
            } else {
                try {
                    postDelayed(new RunnableC0847a(), this.f48275P);
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.ubix.ssp.ad.b
    public ViewGroup r() {
        return this;
    }

    @Override // com.ubix.ssp.ad.b
    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f48260A = (com.ubix.ssp.ad.g.k.i) bVar;
    }

    @Override // com.ubix.ssp.ad.b
    public void setShakeSensor(View view) {
        if (this.f48298z == 5) {
            u.a("展示已经结束不再延时监听");
            return;
        }
        super.setShakeSensor(view);
        s sVar = this.f45643f;
        if (sVar == null) {
            return;
        }
        this.f48262C = true;
        sVar.a(new i(view));
    }

    private Rect d(int i2, int i3) {
        Rect rect = new Rect();
        if (i2 * i3 > 0) {
            int i4 = (int) (this.f48270K * i3 * 0.01f);
            int i5 = (int) (this.f48269J * i2 * 0.01f);
            rect.left = i5;
            rect.top = i4;
            rect.right = i2 - i5;
            rect.bottom = i3 - i4;
        }
        return rect;
    }

    private boolean e(int i2, int i3) {
        return Math.abs((this.f48271L / ((((float) i2) * 1.0f) / ((float) i3))) - 1.0f) <= this.f48268I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void s() {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.j.a.s():void");
    }

    private void t() {
        l lVar;
        if (this.f48293u.get() || !isShown()) {
            return;
        }
        this.f48293u.set(true);
        com.ubix.ssp.ad.g.k.i iVar = this.f48260A;
        if (iVar != null) {
            iVar.a(this.f45639b, this);
        }
        x();
        try {
            if (this.f48280U == 0) {
                if (this.f48294v == null || this.f48294v.isRunning()) {
                    lVar = this.f48288p;
                    if (lVar != null) {
                        lVar.c();
                    }
                }
            } else if ((this.f48295w == null || !this.f48295w.b()) && (lVar = this.f48288p) != null) {
                lVar.c();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        post(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u() {
        return ((double) getHeight()) > ((double) this.f48296x) * 0.88d;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void v() {
        /*
            r4 = this;
            int r0 = com.ubix.ssp.ad.d.b.f45801h
            r1 = 0
            if (r0 == 0) goto L20
            r2 = 1
            if (r0 == r2) goto L1d
            r3 = 2
            if (r0 == r3) goto Lc
            goto L22
        Lc:
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 33
            if (r0 < r3) goto L1d
            float r0 = com.ubix.ssp.ad.j.c.a()
            r3 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L1d
            goto L20
        L1d:
            r4.f48280U = r2
            goto L22
        L20:
            r4.f48280U = r1
        L22:
            int r0 = r4.f48280U
            if (r0 != 0) goto L63
            android.animation.ValueAnimator r0 = r4.f48294v
            if (r0 == 0) goto L2b
            goto L67
        L2b:
            r0 = 99
            int[] r0 = new int[]{r0, r1}
            android.animation.ValueAnimator r0 = android.animation.ValueAnimator.ofInt(r0)
            r4.f48294v = r0
            android.animation.ValueAnimator r0 = r4.f48294v
            int r1 = r4.f48290r
            long r1 = (long) r1
            r0.setDuration(r1)
            android.animation.ValueAnimator r0 = r4.f48294v
            android.view.animation.LinearInterpolator r1 = new android.view.animation.LinearInterpolator
            r1.<init>()
            r0.setInterpolator(r1)
            android.animation.ValueAnimator r0 = r4.f48294v
            com.ubix.ssp.ad.j.a$f r1 = new com.ubix.ssp.ad.j.a$f
            r1.<init>()
            r0.addUpdateListener(r1)
            android.animation.ValueAnimator r0 = r4.f48294v
            com.ubix.ssp.ad.j.a$g r1 = new com.ubix.ssp.ad.j.a$g
            r1.<init>()
            r0.addListener(r1)
            android.animation.ValueAnimator r0 = r4.f48294v
            r0.start()
            return
        L63:
            com.ubix.ssp.ad.e.a0.g r0 = r4.f48295w
            if (r0 == 0) goto L68
        L67:
            return
        L68:
            com.ubix.ssp.ad.e.a0.g r0 = new com.ubix.ssp.ad.e.a0.g
            int r1 = r4.f48290r
            long r1 = (long) r1
            r0.<init>(r1)
            r4.f48295w = r0
            com.ubix.ssp.ad.e.a0.g r0 = r4.f48295w
            com.ubix.ssp.ad.j.a$h r1 = new com.ubix.ssp.ad.j.a$h
            r1.<init>()
            r0.a(r1)
            com.ubix.ssp.ad.e.a0.g r0 = r4.f48295w
            r0.e()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.j.a.v():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        TextView textView;
        String str;
        v();
        View viewFindViewById = findViewById(300001);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
        int i2 = this.f48287o;
        if (i2 == 2) {
            com.ubix.ssp.ad.e.g gVar = (com.ubix.ssp.ad.e.g) viewFindViewById;
            gVar.setDuration(this.f48291s);
            gVar.e();
        } else {
            if (i2 == 3) {
                textView = (TextView) viewFindViewById;
                str = "跳过";
            } else if (i2 == 4) {
                textView = (TextView) viewFindViewById;
                str = "跳过 " + (this.f48291s / 1000);
            }
            textView.setText(str);
        }
        viewFindViewById.setOnClickListener(this);
    }

    private void x() {
        TextView textView = (TextView) findViewById(920101);
        if (textView != null) {
            int iB = this.f48297y - r.b(12.0f);
            textView.getPaint().measureText(((Object) textView.getText()) + "");
            textView.setMinWidth(iB);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void c(int i2, int i3) {
        this.f48274O = i2;
        this.f48275P = i3;
    }

    @Override // com.ubix.ssp.ad.b
    public void j() {
        s sVar = this.f45643f;
        if (sVar != null) {
            sVar.a();
        }
        this.f48288p.sendEmptyMessage(4);
    }

    public void k(int i2) {
        Message message = new Message();
        message.what = i2;
        message.arg1 = this.f48292t + 1;
        this.f48288p.sendMessage(message);
    }

    @Override // com.ubix.ssp.ad.b
    public boolean n() {
        int i2 = this.f48264E;
        return i2 == 16 || i2 == 32 || (i2 & 4) == 4;
    }

    @Override // com.ubix.ssp.ad.b
    public void q() {
        post(new k());
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x01a8 A[PHI: r0 r1
      0x01a8: PHI (r0v1 com.ubix.ssp.ad.j.a) = 
      (r0v0 com.ubix.ssp.ad.j.a)
      (r0v5 com.ubix.ssp.ad.j.a)
      (r0v0 com.ubix.ssp.ad.j.a)
      (r0v11 com.ubix.ssp.ad.j.a)
      (r0v0 com.ubix.ssp.ad.j.a)
      (r0v0 com.ubix.ssp.ad.j.a)
     binds: [B:83:0x01a6, B:79:0x0187, B:72:0x0156, B:51:0x00da, B:33:0x006f, B:30:0x0055] A[DONT_GENERATE, DONT_INLINE]
      0x01a8: PHI (r1v4 android.view.View) = 
      (r1v3 android.view.View)
      (r1v13 android.view.View)
      (r1v19 android.view.View)
      (r1v32 android.view.View)
      (r1v39 android.view.View)
      (r1v45 android.view.View)
     binds: [B:83:0x01a6, B:79:0x0187, B:72:0x0156, B:51:0x00da, B:33:0x006f, B:30:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.ubix.ssp.ad.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r19, int r20, int r21, double r22, int r24, int[] r25, int r26, java.lang.String r27, java.lang.String r28, int r29, double r30, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.j.a.a(int, int, int, double, int, int[], int, java.lang.String, java.lang.String, int, double, boolean, boolean):void");
    }

    public void b(boolean z2) {
        k(z2 ? 7 : 6);
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        this.f48276Q = bundle.getInt("S_A_T");
        this.f48277R = bundle.getLong("S_A_T_I");
        this.f48279T = bundle.getLong("G_B_U");
        this.f48278S = bundle.getLong("L_S_A_T_I");
        this.f48273N = bundle.getBoolean("SUPPORT_FEED_BACK");
        this.f48287o = bundle.getInt("SKIP_VIEW_STYLE");
        int i2 = bundle.getInt("SKIP_COUNT_TIME");
        this.f48291s = i2;
        this.f48290r = i2;
        this.f48286n = bundle.getBoolean("IS_DOWNLOAD", false);
        int currentRotation = getCurrentRotation();
        if (currentRotation == 0 || currentRotation == 2) {
            this.f48272M = false;
        } else {
            this.f48272M = true;
        }
        this.f48282W = bundle.getBoolean("IS_UNNAMED");
        s();
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        TextView textView;
        String string = bundle.getString("AD_SOURCE");
        this.f48267H = bundle.getInt("RENDER_MODE", 0);
        this.f48268I = bundle.getFloat("SCALE_IGNORE_PERCENT", 0.05f);
        int i2 = bundle.getInt("SCALE_HORIZONTAL_MARGIN", 5);
        this.f48269J = i2;
        if (i2 >= 50) {
            this.f48269J = 5;
        }
        int i3 = bundle.getInt("SCALE_VERTICAL_MARGIN", 5);
        this.f48270K = i3;
        if (i3 >= 50) {
            this.f48270K = 5;
        }
        if (!TextUtils.isEmpty(string) && (textView = (TextView) findViewById(300016)) != null) {
            textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
            textView.setTextSize(6.0f);
            textView.setGravity(17);
            textView.setText(string);
        }
        try {
            if (!bundle.getBoolean("IS_VIDEO")) {
                return b(bundle.getStringArray("IMAGE_URL")[0]);
            }
            a(bundle.getString("VIDEO_URL"), bundle.getStringArray("IMAGE_URL")[0], bundle.getInt("VIDEO_RENDER_TYPE", 0));
            b(bundle.getBoolean("AUTO_MUTE", true));
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private boolean b(String str) {
        Bitmap bitmapB;
        try {
            com.ubix.ssp.ad.e.v.a aVarB = com.ubix.ssp.ad.e.v.e.b();
            int i2 = this.f48267H;
            if (i2 == 1) {
                if (aVarB.d(str) && (bitmapB = com.ubix.ssp.ad.e.a0.c.b(str)) != null) {
                    if (bitmapB.getHeight() != 0) {
                        this.f48271L = (bitmapB.getWidth() * 1.0f) / bitmapB.getHeight();
                    }
                    findViewById(900100).setBackground(new BitmapDrawable(bitmapB));
                }
            } else if (i2 == 2) {
                ((ImageView) findViewWithTag(900102)).setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (aVarB.d(str)) {
                aVarB.a(str, (ImageView) findViewWithTag(900102));
            } else {
                a((ImageView) findViewWithTag(900102), 0);
                aVarB.a(str, (ImageView) findViewWithTag(900102), 5, new c());
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(View view) {
        super.a(view);
        view.setOnClickListener(this);
    }

    public static void a(ImageView imageView, int i2) {
        if (imageView != null) {
            try {
                if (imageView.isShown()) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(200L);
                    alphaAnimation.setFillAfter(true);
                    imageView.startAnimation(alphaAnimation);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            int i2 = this.f48267H;
            if (i2 == 1) {
                Bitmap bitmapB = com.ubix.ssp.ad.e.a0.c.b(str);
                if (bitmapB != null) {
                    if (bitmapB.getHeight() != 0) {
                        this.f48271L = (bitmapB.getWidth() * 1.0f) / bitmapB.getHeight();
                    }
                    findViewById(900100).setBackground(new BitmapDrawable(bitmapB));
                }
            } else if (i2 == 2) {
                ((ImageView) findViewWithTag(900102)).setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            com.ubix.ssp.ad.e.v.a aVarB = com.ubix.ssp.ad.e.v.e.b();
            if (aVarB.d(str)) {
                aVarB.a(str, (ImageView) findViewWithTag(900102));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2) {
        try {
            s sVar = this.f45643f;
            if (sVar != null) {
                sVar.f();
            }
            View viewFindViewById = r().findViewById(910104);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
                r().removeView(viewFindViewById);
            }
            View viewFindViewById2 = r().findViewById(910301);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
                r().removeView(viewFindViewById2);
            }
            a(1, this.f48265F, 0, 0.0d, 0, new int[0], 0, str, str2, 0, 0.0d, false, false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(String str, String str2, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("AD_TYPE", 1);
        bundle.putInt("VIDEO_RENDER_TYPE", i2);
        if (this.f48285m == null) {
            com.ubix.ssp.ad.k.a aVar = new com.ubix.ssp.ad.k.a(getContext(), bundle);
            this.f48285m = aVar;
            aVar.setId(300011);
            boolean z2 = false;
            this.f48285m.setShowAdLogo(false);
            this.f48285m.setShowCountDown(false);
            this.f48285m.setShowVolumeSwitch(false);
            this.f48285m.setShowBanner(false);
            if (i2 != 0 ? i2 != 2 : !(com.ubix.ssp.ad.d.b.f45794a.isSpecifiedVideoWidget() && com.ubix.ssp.ad.d.b.f45794a.isUseTextureView())) {
                z2 = true;
            }
            this.f48285m.setInnerListener(new d());
            a(!z2);
        }
        b(str2);
        this.f48285m.b(str, (String) null);
        this.f48285m.setMute(true);
        if (this.f48267H != 1) {
            this.f48285m.setVideoDisplayType(1);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        boolean z2;
        String strA;
        String str7;
        String str8;
        super.a(str, str2, str3, str4, str5, str6, j2);
        TextView textView = (TextView) findViewById(920101);
        if (textView == null) {
            return;
        }
        String str9 = "";
        if (j2 > 0) {
            strA = com.ubix.ssp.ad.e.a0.k.a(j2);
            z2 = true;
        } else {
            z2 = false;
            strA = "";
        }
        if (TextUtils.isEmpty(str5)) {
            str7 = "";
        } else {
            str7 = "丨备案号:" + str5;
        }
        if (TextUtils.isEmpty(str6)) {
            str8 = "";
        } else {
            str8 = "丨适用年龄:" + str6;
        }
        if (z2) {
            str9 = "丨应用大小:" + strA;
        }
        textView.setText(new com.ubix.ssp.ad.e.f(String.format("应用名称:%s丨应用版本:%s丨开发者:%s%s%s%s丨权限丨隐私丨功能介绍", str, str2, str3, str7, str8, str9)).a(this.f48260A));
    }

    private void a(HashMap<String, String> map) {
        Rect rect;
        float f2;
        float f3;
        try {
            View viewFindViewById = findViewById(910501);
            float f4 = 0.6f;
            float f5 = 0.2f;
            if (viewFindViewById != null) {
                rect = new Rect();
                viewFindViewById.getGlobalVisibleRect(rect);
                f3 = 0.2f;
                f5 = 0.35f;
                f2 = 0.6f;
            } else {
                viewFindViewById = findViewById(910701);
                if (viewFindViewById != null) {
                    rect = new Rect();
                    viewFindViewById.getGlobalVisibleRect(rect);
                } else {
                    rect = null;
                }
                if (viewFindViewById == null) {
                    viewFindViewById = findViewById(910401);
                    f2 = 0.25f;
                    if (viewFindViewById != null) {
                        rect = new Rect();
                        viewFindViewById.getGlobalVisibleRect(rect);
                    }
                } else {
                    f2 = 0.3f;
                }
                if (viewFindViewById == null) {
                    viewFindViewById = findViewById(910301);
                    f5 = 0.15f;
                    f4 = 0.7f;
                    if (viewFindViewById != null) {
                        rect = new Rect();
                        viewFindViewById.getGlobalVisibleRect(rect);
                    }
                    f2 = 0.7f;
                    f3 = 0.15f;
                } else {
                    f3 = 0.45f;
                }
            }
            if (rect != null) {
                int iWidth = (int) ((rect.width() * f5) + (rect.width() * f4 * Math.random()));
                int iHeight = (int) ((rect.height() * f3) + (rect.height() * f2 * Math.random()));
                int iWidth2 = (int) (rect.left + (rect.width() * f5) + (rect.width() * f4 * Math.random()));
                int iHeight2 = (int) (rect.top + (rect.height() * f3) + (rect.height() * f2 * Math.random()));
                u.e(viewFindViewById + ";visibleRect=" + rect + ";x=" + iWidth + ";y=" + iHeight + ";rx=" + iWidth2 + ";ry=" + iHeight2);
                map.put("__DOWN_X__", iWidth2 + "");
                map.put("__DOWN_Y__", iHeight2 + "");
                map.put("__UP_X__", iWidth2 + "");
                map.put("__UP_Y__", iHeight2 + "");
                map.put("__RAW_DOWN_X__", iWidth2 + "");
                map.put("__RAW_DOWN_Y__", iHeight2 + "");
                map.put("__RAW_UP_X__", iWidth2 + "");
                map.put("__RAW_UP_Y__", iHeight2 + "");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(boolean z2) {
        ImageView imageView = new ImageView(getContext());
        imageView.setId(300012);
        imageView.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(r.a(32.0f), r.a(38.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, r.a(10.0f), r.a(32.0f));
        imageView.setPadding(r.a(4.0f), r.a(4.0f), r.a(4.0f), r.a(4.0f));
        imageView.setImageDrawable(q.a("ubix/ic_volume_off.webp"));
        imageView.setOnClickListener(this);
        findViewById(300015).setVisibility(0);
        ((FrameLayout) findViewById(900100)).addView(this.f48285m, 0, new FrameLayout.LayoutParams(-1, -1));
        addView(imageView, layoutParams);
    }

    public boolean a(int i2, float f2, float f3) {
        getGlobalVisibleRect(new Rect());
        if (i2 == 128 || i2 == 132) {
            com.ubix.ssp.ad.e.e eVar = (com.ubix.ssp.ad.e.e) findViewById(910401);
            if (eVar == null) {
                return false;
            }
            eVar.getGlobalVisibleRect(this.f48283a0);
            return eVar.a(f2, (f3 - this.f48283a0.top) + r0.top);
        }
        if (i2 == 64 || i2 == 68) {
            com.ubix.ssp.ad.e.d dVar = (com.ubix.ssp.ad.e.d) findViewById(910701);
            if (dVar == null) {
                return false;
            }
            dVar.getGlobalVisibleRect(this.f48283a0);
            Rect rect = this.f48283a0;
            return dVar.a(f2 - rect.left, (f3 - rect.top) + r0.top);
        }
        if (i2 != 16) {
            return i2 == 32 || (i2 & 4) == 4;
        }
        com.ubix.ssp.ad.e.r rVar = (com.ubix.ssp.ad.e.r) findViewById(910501);
        if (rVar == null) {
            return false;
        }
        rVar.getGlobalVisibleRect(this.f48283a0);
        Rect rect2 = this.f48283a0;
        return rVar.a(f2 - rect2.left, (f3 - rect2.top) + r0.top);
    }
}
