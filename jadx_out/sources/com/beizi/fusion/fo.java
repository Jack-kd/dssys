package com.beizi.fusion;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.SlideParams;

/* loaded from: classes2.dex */
public class fo extends yk {

    /* renamed from: f, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f13892f;

    /* renamed from: g, reason: collision with root package name */
    private Rect f13893g;

    /* renamed from: h, reason: collision with root package name */
    private int f13894h;

    /* renamed from: i, reason: collision with root package name */
    private int f13895i;

    /* renamed from: j, reason: collision with root package name */
    private SlideParams f13896j;

    /* renamed from: k, reason: collision with root package name */
    private final long f13897k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f13898l;

    public class a implements ViewTreeObserver.OnScrollChangedListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (fo.this.f13898l) {
                fo foVar = fo.this;
                foVar.f17697d.getGlobalVisibleRect(foVar.f13893g);
                if (fo.this.f13895i == 0) {
                    fo foVar2 = fo.this;
                    foVar2.f13895i = foVar2.f13893g.top;
                }
                fo foVar3 = fo.this;
                fo.b(foVar3, Math.abs(foVar3.f13893g.top - fo.this.f13895i));
                if (fo.this.f13894h <= fo.this.f13896j.getDistance() || System.currentTimeMillis() - fo.this.f13897k <= fo.this.f13896j.getNeedTime()) {
                    return;
                }
                fo.this.c();
                fo.this.f17697d.getViewTreeObserver().removeOnScrollChangedListener(fo.this.f13892f);
            }
        }
    }

    public fo(Context context) {
        super(context);
        this.f13898l = false;
        this.f13897k = System.currentTimeMillis();
    }

    public static /* synthetic */ int b(fo foVar, int i2) {
        int i3 = foVar.f13894h + i2;
        foVar.f13894h = i3;
        return i3;
    }

    private ViewTreeObserver.OnScrollChangedListener f() {
        if (this.f13896j == null) {
            return null;
        }
        this.f13893g = new Rect();
        return new a();
    }

    @Override // com.beizi.fusion.yk, com.beizi.fusion.zc
    public void b() {
        super.b();
        this.f13898l = false;
    }

    @Override // com.beizi.fusion.yk, com.beizi.fusion.zc
    public void a() {
        super.a();
        this.f13898l = true;
    }

    @Override // com.beizi.fusion.yk
    public void b(OptimizeModel optimizeModel) {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
        this.f13896j = optimizeModel.getSlide();
        if (this.f17697d != null) {
            this.f13892f = f();
            ViewTreeObserver viewTreeObserver = this.f17697d.getViewTreeObserver();
            if (viewTreeObserver == null || (onScrollChangedListener = this.f13892f) == null) {
                return;
            }
            viewTreeObserver.addOnScrollChangedListener(onScrollChangedListener);
        }
    }

    @Override // com.beizi.fusion.yk, com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
    }
}
