package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class eg extends r3 {
    public eg(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(InteractionModel interactionModel) {
        super.a(interactionModel);
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void b() {
        super.b();
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.ya
    public /* bridge */ /* synthetic */ xa d() {
        return super.d();
    }

    @Override // com.beizi.fusion.r3
    public void e() {
    }

    public synchronized void f() {
        try {
            Thread.sleep(1000L);
            this.f15866a.a(fd.a.LANDING_PAGE_ENDCARD_INTERACTIVE_TRIGGER, this.f15869d, null);
            fc fcVar = this.f15868c;
            if (fcVar instanceof j1) {
                ((j1) fcVar).a(this.f15869d);
            }
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.beizi.fusion.r3
    public /* bridge */ /* synthetic */ void a(View view, EnumC1130d enumC1130d) {
        super.a(view, enumC1130d);
    }

    public synchronized void b(fd.a aVar) {
        this.f15866a.a(aVar, this.f15869d, null);
        fc fcVar = this.f15868c;
        if (fcVar != null) {
            fcVar.a(this.f15869d, aVar.getEventCode());
        }
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public synchronized void a(Context context, String str) {
        this.f15866a.a(fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER, this.f15869d, null);
        fc fcVar = this.f15868c;
        if (fcVar instanceof g1) {
            ((g1) fcVar).b(context, str);
        }
    }

    @Override // com.beizi.fusion.r3, com.beizi.fusion.zc
    public void a(fc fcVar) {
        super.a(fcVar);
    }
}
