package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.AreaOptimizeFrame;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.BaseOptimizeFrame;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.SlideOptimizeFrame;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.opt.TouchOptimizeFrame;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.OptimizeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.ClickAreaParams;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.SlideParams;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class ti {

    /* renamed from: a, reason: collision with root package name */
    private final OptimizeModel f16367a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f16368b;

    /* renamed from: c, reason: collision with root package name */
    private fc f16369c;

    /* renamed from: d, reason: collision with root package name */
    private WeakReference f16370d;

    /* renamed from: e, reason: collision with root package name */
    private BaseOptimizeFrame f16371e;

    /* renamed from: f, reason: collision with root package name */
    private BaseOptimizeFrame f16372f;

    /* renamed from: g, reason: collision with root package name */
    private BaseOptimizeFrame f16373g;

    /* renamed from: h, reason: collision with root package name */
    private BaseOptimizeFrame f16374h;

    /* renamed from: i, reason: collision with root package name */
    private fd f16375i;

    /* renamed from: j, reason: collision with root package name */
    private final Handler f16376j;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f16377a;

        public a(View view) {
            this.f16377a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = this.f16377a.getContext();
            if (context == null || !(this.f16377a instanceof ViewGroup)) {
                return;
            }
            ti tiVar = ti.this;
            tiVar.f16372f = tiVar.b(context);
            if (ti.this.f16372f != null) {
                ti tiVar2 = ti.this;
                tiVar2.a("opt", tiVar2.f16372f);
                ti.this.f16372f.addToWindow();
            }
            ti tiVar3 = ti.this;
            tiVar3.f16371e = tiVar3.c(context);
            if (ti.this.f16371e != null) {
                ti tiVar4 = ti.this;
                tiVar4.a("opts", tiVar4.f16371e);
                ti.this.f16371e.linkedTo(this.f16377a);
                ti.this.f16371e.addToWindow();
            }
            ti tiVar5 = ti.this;
            tiVar5.f16374h = tiVar5.b();
            if (ti.this.f16374h != null) {
                ti tiVar6 = ti.this;
                tiVar6.a("optt", tiVar6.f16374h);
                ti.this.f16374h.linkedTo(this.f16377a);
                ti.this.f16374h.addToWindow();
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f16379a;

        public b(View view) {
            this.f16379a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = this.f16379a.getContext();
            if (context != null) {
                ti tiVar = ti.this;
                tiVar.f16373g = tiVar.a(context);
                if (ti.this.f16373g != null) {
                    ti tiVar2 = ti.this;
                    tiVar2.a("opt", tiVar2.f16373g);
                    ti.this.f16373g.linkedTo(this.f16379a);
                    ti.this.f16373g.addToWindow();
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ti.this.f16371e != null) {
                ti.this.f16371e.removeFromParent();
            }
            if (ti.this.f16373g != null) {
                ti.this.f16373g.removeFromParent();
            }
            if (ti.this.f16372f != null) {
                ti.this.f16372f.removeFromParent();
            }
            if (ti.this.f16374h != null) {
                ti.this.f16374h.removeFromParent();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ti.this.f16373g != null) {
                ti.this.f16373g.onViewHide();
            }
            if (ti.this.f16371e != null) {
                ti.this.f16371e.onViewHide();
            }
        }
    }

    public ti(Context context, OptimizeModel optimizeModel) {
        this.f16368b = context.getApplicationContext();
        this.f16367a = optimizeModel;
        this.f16376j = new Handler(context.getMainLooper());
    }

    public void e() {
        this.f16376j.post(new c());
    }

    public BaseOptimizeFrame b() {
        boolean zA = pl.a(this.f16367a.getTouchDownNum());
        boolean zA2 = pl.a(this.f16367a.getHoldSlideNum());
        if (zA || zA2) {
            return new TouchOptimizeFrame(this.f16368b, this.f16367a, zA, zA2);
        }
        return null;
    }

    public BaseOptimizeFrame c(Context context) {
        SlideParams slide = this.f16367a.getSlide();
        if (slide == null || !pl.a(slide.getRandomNum())) {
            return null;
        }
        return new SlideOptimizeFrame(context, this.f16367a);
    }

    public void d() {
        BaseOptimizeFrame baseOptimizeFrame = this.f16371e;
        if (baseOptimizeFrame != null) {
            baseOptimizeFrame.onViewReappear();
        }
    }

    public BaseOptimizeFrame a(Context context) {
        ClickAreaParams clickArea = this.f16367a.getClickArea();
        if (clickArea == null || !pl.a(clickArea.getRandomNum())) {
            return null;
        }
        return new AreaOptimizeFrame(context, this.f16367a);
    }

    public BaseOptimizeFrame b(Context context) {
        if (!pl.a(this.f16367a.getCloseClickNum())) {
            return null;
        }
        BaseOptimizeFrame baseOptimizeFrame = new BaseOptimizeFrame(context, this.f16367a);
        WeakReference weakReference = this.f16370d;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        baseOptimizeFrame.linkedTo((View) this.f16370d.get());
        return baseOptimizeFrame;
    }

    public void c() {
        this.f16376j.post(new d());
    }

    public void a(fc fcVar, Object obj) {
        if (fcVar instanceof ja) {
            this.f16369c = fcVar;
        }
        if ((fcVar instanceof d1) && (obj instanceof View)) {
            this.f16370d = new WeakReference((View) obj);
        }
    }

    public void a(View view) {
        this.f16376j.post(new a(view));
        this.f16376j.postDelayed(new b(view), a());
    }

    private long a() {
        OptimizeModel optimizeModel = this.f16367a;
        if (optimizeModel == null || optimizeModel.getClickArea() == null) {
            return 0L;
        }
        return this.f16367a.getClickArea().getNeedTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, BaseOptimizeFrame baseOptimizeFrame) {
        zc zcVarA = ag.a(this.f16368b, str, false);
        if (zcVarA != null) {
            zcVarA.a(this.f16367a);
            zcVarA.a(baseOptimizeFrame, null);
            zcVarA.a(this.f16369c);
            if (zcVarA instanceof ya) {
                ((ya) zcVarA).d().a(this.f16375i);
            }
            baseOptimizeFrame.bindInteractionForm(zcVarA);
        }
    }

    public void a(fd fdVar) {
        this.f16375i = fdVar;
    }
}
