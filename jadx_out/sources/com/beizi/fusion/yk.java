package com.beizi.fusion;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class yk implements zc, ya {

    /* renamed from: a, reason: collision with root package name */
    protected final ed f17694a = new ed();

    /* renamed from: b, reason: collision with root package name */
    protected OptimizeModel f17695b;

    /* renamed from: c, reason: collision with root package name */
    private fc f17696c;

    /* renamed from: d, reason: collision with root package name */
    protected View f17697d;

    /* renamed from: e, reason: collision with root package name */
    protected b f17698e;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            b bVar = yk.this.f17698e;
            if (bVar != null) {
                bVar.a(view, motionEvent);
            }
            if (motionEvent.getAction() == 1) {
                yk.this.c();
            }
            return true;
        }
    }

    public interface b {
        void a(View view, MotionEvent motionEvent);
    }

    public yk(Context context) {
    }

    @Override // com.beizi.fusion.zc
    public void b() {
    }

    public void c() {
        ed edVar = this.f17694a;
        fd.a aVar = fd.a.OPTIMIZE_INTERACTIVE_TRIGGER;
        edVar.a(aVar, this.f17697d, null);
        fc fcVar = this.f17696c;
        if (fcVar != null) {
            fcVar.a(this.f17697d, aVar.getEventCode());
        }
    }

    @Override // com.beizi.fusion.ya
    public xa d() {
        return this.f17694a;
    }

    public void e() {
        this.f17697d = null;
        b();
    }

    public void b(OptimizeModel optimizeModel) {
        View view = this.f17697d;
        if (view != null) {
            view.setOnTouchListener(new a());
        }
    }

    @Override // com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        this.f17697d = view;
        this.f17694a.a((Object) null);
    }

    @Override // com.beizi.fusion.zc
    public void a() {
        this.f17694a.a();
    }

    @Override // com.beizi.fusion.zc
    public void a(fc fcVar) {
        this.f17696c = fcVar;
    }

    @Override // com.beizi.fusion.zc
    public void a(OptimizeModel optimizeModel) {
        this.f17695b = optimizeModel;
        b(optimizeModel);
    }

    public void a(b bVar) {
        this.f17698e = bVar;
    }
}
