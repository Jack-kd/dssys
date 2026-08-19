package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.report.ReportModel3;
import com.beizi.fusion.da;
import com.beizi.fusion.gf;
import com.beizi.fusion.hc;
import com.beizi.fusion.ic;
import com.beizi.fusion.je;
import com.beizi.fusion.kf;
import com.beizi.fusion.lf;
import com.beizi.fusion.qb;
import com.beizi.fusion.te;
import com.beizi.fusion.wb;
import com.beizi.fusion.xa;
import com.beizi.fusion.za;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ScopeExpressContainer extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private final hc f12813a;

    /* renamed from: b, reason: collision with root package name */
    private final lf f12814b;

    /* renamed from: c, reason: collision with root package name */
    private final e f12815c;

    /* renamed from: d, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f12816d;

    /* renamed from: e, reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f12817e;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ScopeExpressContainer.this.b();
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            ScopeExpressContainer.this.b();
        }
    }

    public class c implements ic {

        /* renamed from: a, reason: collision with root package name */
        private final ic f12820a;

        public /* synthetic */ c(ScopeExpressContainer scopeExpressContainer, ic icVar, a aVar) {
            this(icVar);
        }

        @Override // com.beizi.fusion.ic
        public void b(za zaVar, View view) {
            if (this.f12820a == null || ScopeExpressContainer.this.f12815c == null) {
                return;
            }
            if (ScopeExpressContainer.this.f12815c.f12825d == null) {
                this.f12820a.b(zaVar, view);
            } else if (ScopeExpressContainer.this.f12815c.f12825d.alreadyPlay()) {
                this.f12820a.b(zaVar, view);
            }
        }

        @Override // com.beizi.fusion.ic
        public void c(za zaVar, View view) {
            ScopeExpressContainer.this.d(true);
            ic icVar = this.f12820a;
            if (icVar != null) {
                icVar.c(zaVar, view);
            }
        }

        private c(ic icVar) {
            this.f12820a = icVar;
        }

        @Override // com.beizi.fusion.ab
        public void a(hc hcVar) {
            this.f12820a.a(hcVar);
        }

        @Override // com.beizi.fusion.ic
        public void a(View view) {
            ScopeExpressContainer.this.c(true);
            ic icVar = this.f12820a;
            if (icVar != null) {
                icVar.a(view);
            }
        }

        @Override // com.beizi.fusion.ic
        public void b(View view) {
            ic icVar = this.f12820a;
            if (icVar != null) {
                icVar.b(view);
            }
        }
    }

    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        private ViewGroup f12822a;

        /* renamed from: b, reason: collision with root package name */
        private wb f12823b;

        /* renamed from: c, reason: collision with root package name */
        private String f12824c;

        /* renamed from: d, reason: collision with root package name */
        private ScopeVideoView f12825d;

        /* renamed from: e, reason: collision with root package name */
        private qb f12826e;

        /* renamed from: f, reason: collision with root package name */
        private final List f12827f;

        /* renamed from: g, reason: collision with root package name */
        private final List f12828g;

        public /* synthetic */ e(a aVar) {
            this();
        }

        private e() {
            this.f12827f = new ArrayList();
            this.f12828g = new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f12824c = "";
            this.f12825d = null;
            this.f12826e = null;
            this.f12822a = null;
            this.f12827f.clear();
            this.f12828g.clear();
        }
    }

    public ScopeExpressContainer(@NonNull Context context) {
        super(context.getApplicationContext());
        this.f12816d = new a();
        this.f12817e = new b();
        this.f12813a = new hc(this);
        this.f12814b = lf.a.a();
        a();
        this.f12815c = new e(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z2) {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewResume(z2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public lf getViewRecorder() {
        return this.f12814b;
    }

    public xa getMonitor() {
        return this.f12813a;
    }

    public void onActivityPause() {
        this.f12813a.b();
        c(false);
    }

    public void onActivityResume() {
        this.f12813a.a();
        d(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f12813a.a();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(this.f12817e);
        viewTreeObserver.addOnGlobalLayoutListener(this.f12816d);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f12813a.b();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.removeOnScrollChangedListener(this.f12817e);
        viewTreeObserver.removeOnGlobalLayoutListener(this.f12816d);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f12814b.a(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void onViewDestroy() {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewDestroy();
                }
            }
        }
        e eVar = this.f12815c;
        if (eVar != null) {
            eVar.a();
        }
    }

    public void removeFromParent() {
        d.a((View) this);
    }

    public <C extends da> void setVideoConfig(C c2) {
        if (this.f12815c.f12825d == null || c2 == null) {
            return;
        }
        this.f12815c.f12825d.setMediaConfig(c2.e());
    }

    public static final class d {
        public static void a(View view) {
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
            }
        }

        public static wb b(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return null;
            }
            return scopeExpressContainer.f12815c.f12823b;
        }

        public static List c(ScopeExpressContainer scopeExpressContainer) {
            return (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) ? new ArrayList() : scopeExpressContainer.f12815c.f12827f;
        }

        public static List d(ScopeExpressContainer scopeExpressContainer) {
            return (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) ? new ArrayList() : scopeExpressContainer.f12815c.f12828g;
        }

        public static ScopeVideoView e(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return null;
            }
            return scopeExpressContainer.f12815c.f12825d;
        }

        public static lf f(ScopeExpressContainer scopeExpressContainer) {
            return scopeExpressContainer.getViewRecorder();
        }

        public static ViewGroup g(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return null;
            }
            return scopeExpressContainer.f12815c.f12822a;
        }

        public static void h(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || scopeExpressContainer.f12815c.f12826e == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12826e.pauseCarousel();
        }

        public static void i(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || scopeExpressContainer.f12815c.f12826e == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12826e.startCarousel();
        }

        public static void j(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || scopeExpressContainer.f12815c.f12826e == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12826e.nextCarousel();
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, ReportModel3 reportModel3, ic icVar, kf kfVar) {
            if (scopeExpressContainer != null) {
                scopeExpressContainer.a(reportModel3, icVar, kfVar);
            }
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, ScopeVideoView scopeVideoView) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || scopeVideoView == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12825d = scopeVideoView;
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, qb qbVar) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || qbVar == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12826e = qbVar;
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, ViewGroup viewGroup) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null || viewGroup == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12822a = viewGroup;
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, String str) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12824c = str;
        }

        public static String a(ScopeExpressContainer scopeExpressContainer) {
            if (scopeExpressContainer != null && scopeExpressContainer.f12815c != null) {
                return scopeExpressContainer.f12815c.f12824c;
            }
            return "";
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, View view) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return;
            }
            scopeExpressContainer.a(view);
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, wb wbVar) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12823b = wbVar;
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, te teVar) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12827f.add(teVar);
        }

        public static void a(ScopeExpressContainer scopeExpressContainer, gf gfVar) {
            if (scopeExpressContainer == null || scopeExpressContainer.f12815c == null) {
                return;
            }
            scopeExpressContainer.f12815c.f12828g.add(gfVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z2 = false;
        if (!isShown()) {
            b(false);
            return;
        }
        Rect rect = new Rect();
        if (getLocalVisibleRect(rect) && rect.width() > 0 && rect.height() > 0) {
            z2 = true;
        }
        b(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z2) {
        if (getChildCount() > 0) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt instanceof je) {
                    ((je) childAt).onViewPause(z2);
                }
            }
        }
    }

    public void a(ReportModel3 reportModel3, ic icVar, kf kfVar) {
        this.f12813a.a(reportModel3);
        this.f12813a.a((ic) new c(this, icVar, null));
        if (this.f12815c.f12825d != null) {
            this.f12815c.f12825d.registerVideoObserver(kfVar);
        }
        if (this.f12815c.f12826e != null) {
            this.f12815c.f12826e.registerAsVideoObserver(kfVar);
        }
    }

    public ScopeExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        this.f12816d = new a();
        this.f12817e = new b();
        this.f12813a = new hc(this);
        this.f12814b = lf.a.a();
        a();
        this.f12815c = new e(null);
    }

    private void b(boolean z2) {
        if (z2) {
            d(true);
            this.f12813a.a();
        } else {
            c(true);
        }
    }

    private void a() {
        getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.i
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public final void onWindowFocusChanged(boolean z2) {
                this.f12861a.a(z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z2) {
        if (z2) {
            onActivityResume();
        } else {
            onActivityPause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.f12815c.f12826e != null) {
            this.f12815c.f12826e.addCarouseItemView(view);
        }
    }

    public ScopeExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context.getApplicationContext(), attributeSet, i2);
        this.f12816d = new a();
        this.f12817e = new b();
        this.f12813a = new hc(this);
        this.f12814b = lf.a.a();
        a();
        this.f12815c = new e(null);
    }

    public ScopeExpressContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i3) {
        super(context.getApplicationContext(), attributeSet, i2, i3);
        this.f12816d = new a();
        this.f12817e = new b();
        this.f12813a = new hc(this);
        this.f12814b = lf.a.a();
        a();
        this.f12815c = new e(null);
    }
}
