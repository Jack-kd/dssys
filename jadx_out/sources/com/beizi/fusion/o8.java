package com.beizi.fusion;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.SlideModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.widget.ScrollClickView;

/* loaded from: classes2.dex */
public class o8 extends r3 {

    /* renamed from: i, reason: collision with root package name */
    private b f15423i;

    /* renamed from: j, reason: collision with root package name */
    private final boolean f15424j;

    public interface b {
        boolean a(MotionEvent motionEvent);
    }

    public class c implements b {

        /* renamed from: a, reason: collision with root package name */
        private final String f15425a;

        /* renamed from: b, reason: collision with root package name */
        private float f15426b;

        /* renamed from: c, reason: collision with root package name */
        private float f15427c;

        /* renamed from: d, reason: collision with root package name */
        private final float f15428d;

        @Override // com.beizi.fusion.o8.b
        public boolean a(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.f15426b = motionEvent.getX();
                this.f15427c = motionEvent.getY();
            }
            if (motionEvent.getAction() == 1) {
                if (o8.this.f15424j) {
                    o8.this.f();
                    return true;
                }
                int scaledTouchSlop = ViewConfiguration.get(o8.this.f15869d.getContext()).getScaledTouchSlop();
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float f2 = scaledTouchSlop;
                if ((Math.abs(this.f15426b - x2) > f2 || Math.abs(this.f15427c - y2) > f2) && (Math.abs(this.f15426b - x2) > this.f15428d || Math.abs(this.f15427c - y2) > this.f15428d)) {
                    if ("all".equalsIgnoreCase(this.f15425a)) {
                        o8.this.f();
                        return true;
                    }
                    if ((Math.abs(this.f15426b - x2) > Math.abs(this.f15427c - y2) ? this.f15426b > x2 ? ScrollClickView.DIR_LEFT : ScrollClickView.DIR_RIGHT : this.f15427c > y2 ? "up" : ScrollClickView.DIR_DOWN).equalsIgnoreCase(this.f15425a)) {
                        o8.this.f();
                    }
                }
            }
            return true;
        }

        private c(SlideModel slideModel, String str) {
            this.f15425a = slideModel.getSlideDirection(str);
            this.f15428d = slideModel.getSlideDistance(str);
        }
    }

    public o8(Context context, boolean z2) {
        super(context);
        this.f15424j = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f15423i = null;
        a(fd.a.GESTURE_INTERACTIVE_TRIGGER);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.ya
    public /* bridge */ /* synthetic */ xa d() {
        return super.d();
    }

    @Override // com.beizi.fusion.r3
    public void e() {
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || interactionModel.getSlideModel() == null) {
            return;
        }
        no noVar = (no) wp.a().b(this.f15867b);
        if (noVar.a(this.f15871f.getProtectTime()) || noVar.a(this.f15872g, this.f15871f.getCoolTime())) {
            this.f15423i = new c(this.f15871f.getSlideModel(), "Cooling");
        } else {
            this.f15423i = new c(this.f15871f.getSlideModel(), "Normal");
        }
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a(fc fcVar) {
        super.a(fcVar);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(InteractionModel interactionModel) {
        super.a(interactionModel);
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public boolean a(MotionEvent motionEvent) {
        b bVar = this.f15423i;
        if (bVar != null) {
            return bVar.a(motionEvent);
        }
        return false;
    }
}
