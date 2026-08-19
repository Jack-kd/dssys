package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.smartdigimkt.a4.f;
import com.smartdigimkt.d0.b;
import com.smartdigimkt.e0.t;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.q1.d;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import com.smartdigimkt.t3.n;
import com.smartdigimkt.v1.i3;
import com.smartdigimkt.v1.j3;
import com.smartdigimkt.v1.p3;
import com.smartdigimkt.v1.q3;
import com.smartdigimkt.v1.s3;
import com.smartdigimkt.v1.u3;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes5.dex */
public class MraidContainerView extends FrameLayout {
    public static final int ENDCARD_INIT = 1;
    public static final int LOAD_RETRY_CLICK = 3;
    public static final int PRE_LOAD = 5;
    public static final int VISIABLE_CLICK = 4;
    public static final int WINDOW_ATTACH_CHECK = 2;

    /* renamed from: a, reason: collision with root package name */
    public final c f43477a;

    /* renamed from: b, reason: collision with root package name */
    public final a f43478b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.u1.c f43479c;

    /* renamed from: d, reason: collision with root package name */
    public j3 f43480d;

    /* renamed from: e, reason: collision with root package name */
    public ClickToReLoadView f43481e;

    /* renamed from: f, reason: collision with root package name */
    public MraidWebView f43482f;

    /* renamed from: g, reason: collision with root package name */
    public final u3 f43483g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f43484h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f43485i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f43486j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f43487k;

    /* renamed from: l, reason: collision with root package name */
    public f f43488l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f43489m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f43490n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f43491o;

    /* renamed from: p, reason: collision with root package name */
    public final b f43492p;

    /* renamed from: q, reason: collision with root package name */
    public long f43493q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f43494r;

    public MraidContainerView(@NonNull Context context) {
        super(context);
        this.f43492p = new b();
    }

    public final void a() {
        MraidWebView mraidWebView = (MraidWebView) t.f40026b.remove(t.a(2, this.f43478b, this.f43477a));
        this.f43482f = mraidWebView;
        if (mraidWebView != null) {
            ClickToReLoadView clickToReLoadView = this.f43481e;
            if (clickToReLoadView != null) {
                removeView(clickToReLoadView);
            }
            this.f43487k = true;
            if (this.f43485i) {
                this.f43482f.setNeedRegisterVolumeChangeReceiver(true);
            }
            this.f43482f.prepare(getContext(), new p3(this));
            MraidWebView mraidWebView2 = this.f43482f;
            if (mraidWebView2 != null) {
                Object object = mraidWebView2.getObject();
                if (object instanceof com.smartdigimkt.q1.f) {
                    ((com.smartdigimkt.q1.f) object).f42680b = this.f43492p;
                }
            }
            if (this.f43482f.getParent() == null) {
                this.f43482f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                addView(this.f43482f);
            }
            c cVar = this.f43477a;
            if (cVar.f41784E > 0 && cVar.f41785F > 0) {
                ViewTreeObserver viewTreeObserver = getViewTreeObserver();
                viewTreeObserver.addOnGlobalLayoutListener(new q3(this, viewTreeObserver));
            }
            this.f43489m = true;
            if (!this.f43490n && this.f43484h) {
                this.f43490n = true;
                com.smartdigimkt.u1.c cVar2 = this.f43479c;
                if (cVar2 != null && cVar2.a()) {
                    this.f43479c.a(this.f43482f, 201);
                }
            }
            u3 u3Var = this.f43483g;
            if (u3Var != null) {
                u3Var.a();
            }
        }
    }

    public final boolean b() {
        e eVar;
        e eVar2;
        if (this.f43488l == null) {
            c cVar = this.f43477a;
            this.f43488l = new f((cVar == null || (eVar2 = cVar.f41832w) == null) ? 1 : eVar2.a());
        }
        if (this.f43488l == null) {
            c cVar2 = this.f43477a;
            this.f43488l = new f((cVar2 == null || (eVar = cVar2.f41832w) == null) ? 1 : eVar.a());
        }
        View rootView = getRootView();
        if (rootView == null || !this.f43488l.a(rootView, this, 20, 0)) {
            if (isShown() && getHeight() > 0 && getWidth() > 0) {
                if (getGlobalVisibleRect(new Rect())) {
                    long jHeight = r0.height() * r0.width();
                    long height = getHeight() * getWidth();
                    if (height > 0 && ((int) ((jHeight * 100) / height)) >= 20) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            b();
            b bVar = this.f43492p;
            synchronized (bVar) {
                com.smartdigimkt.d0.a aVar = new com.smartdigimkt.d0.a();
                aVar.f39868a = SystemClock.elapsedRealtime();
                bVar.f39869a = aVar;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void fireAudioVolumeChange(boolean z2) {
        MraidWebView mraidWebView;
        if (!this.f43487k || (mraidWebView = this.f43482f) == null) {
            return;
        }
        if (z2) {
            Locale locale = Locale.US;
            try {
                mraidWebView.loadUrl("javascript:window.mraidbridge.audioVolumeChange(0.0);");
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        Locale locale2 = Locale.US;
        try {
            mraidWebView.loadUrl("javascript:window.mraidbridge.audioVolumeChange(1.0);");
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void fireMraidIsViewable(boolean z2) {
        MraidWebView mraidWebView;
        try {
            if (!this.f43487k || (mraidWebView = this.f43482f) == null) {
                return;
            }
            if (z2) {
                d.a(mraidWebView, true);
            } else {
                d.a(mraidWebView, false);
            }
        } catch (Throwable unused) {
        }
    }

    public b getAutoRedirectGuard() {
        return this.f43492p;
    }

    public void init() {
        a aVar = this.f43478b;
        c cVar = this.f43477a;
        HashMap map = t.f40025a;
        if (aVar != null && cVar != null && t.f40026b.containsKey(t.a(2, aVar, cVar))) {
            a();
            return;
        }
        j3 j3Var = new j3(this);
        this.f43480d = j3Var;
        j3Var.f44511c = (int) TypedValue.applyDimension(1, 30, getResources().getDisplayMetrics());
    }

    public void loadMraidWebView(int i2) {
        ClickToReLoadView clickToReLoadView = this.f43481e;
        if (clickToReLoadView != null) {
            removeView(clickToReLoadView);
        }
        if (this.f43486j || this.f43487k) {
            return;
        }
        if (!this.f43491o || this.f43484h) {
            this.f43486j = true;
            j3 j3Var = this.f43480d;
            if (j3Var != null) {
                j3Var.a();
            }
            String strA = com.smartdigimkt.q1.t.a(this.f43477a, this.f43478b);
            if (!TextUtils.isEmpty(strA)) {
                com.smartdigimkt.b4.e.a().a(new s3(this, t.a(2, this.f43478b, this.f43477a), strA, i2));
                return;
            }
            this.f43486j = false;
            j3 j3Var2 = this.f43480d;
            if (j3Var2 == null || j3Var2.f44510b == null) {
                return;
            }
            j3Var2.f44509a.post(new i3(j3Var2));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f43484h = true;
        if (!this.f43490n && this.f43489m) {
            this.f43490n = true;
            com.smartdigimkt.u1.c cVar = this.f43479c;
            if (cVar != null && cVar.a()) {
                this.f43479c.a(this.f43482f, 201);
            }
        }
        a aVar = this.f43478b;
        c cVar2 = this.f43477a;
        HashMap map = t.f40025a;
        if (aVar == null || cVar2 == null || !t.f40026b.containsKey(t.a(2, aVar, cVar2))) {
            loadMraidWebView(2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f43484h = false;
    }

    public void release() {
        MraidWebView mraidWebView;
        try {
            this.f43493q = 0L;
            b bVar = this.f43492p;
            synchronized (bVar) {
                bVar.f39869a = null;
            }
            if (this.f43487k && (mraidWebView = this.f43482f) != null) {
                com.smartdigimkt.z3.d.a(mraidWebView);
                this.f43482f.release();
                n.a().a(this.f43477a, this.f43478b);
            }
            com.smartdigimkt.z3.d.a(this);
        } catch (Throwable unused) {
        }
    }

    public void setNeedRegisterVolumeChangeReceiver(boolean z2) {
        this.f43485i = z2;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (this.f43484h) {
            a aVar = this.f43478b;
            c cVar = this.f43477a;
            HashMap map = t.f40025a;
            if (aVar == null || cVar == null || !t.f40026b.containsKey(t.a(2, aVar, cVar))) {
                loadMraidWebView(4);
            }
        }
    }

    public MraidContainerView(@NonNull Context context, c cVar, a aVar, com.smartdigimkt.u1.c cVar2, u3 u3Var) {
        super(context);
        this.f43492p = new b();
        this.f43477a = cVar;
        e eVar = aVar.f41644r;
        this.f43478b = aVar;
        this.f43479c = cVar2;
        this.f43483g = u3Var;
        setBackgroundDrawable(new com.smartdigimkt.f2.a());
        this.f43491o = false;
        if (eVar != null) {
            this.f43491o = eVar.f41849D1 == 1;
        }
    }
}
