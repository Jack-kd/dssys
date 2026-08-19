package com.beizi.fusion;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
abstract class r3 implements zc, ya {

    /* renamed from: b, reason: collision with root package name */
    protected final Context f15867b;

    /* renamed from: c, reason: collision with root package name */
    protected fc f15868c;

    /* renamed from: d, reason: collision with root package name */
    protected View f15869d;

    /* renamed from: f, reason: collision with root package name */
    protected InteractionModel f15871f;

    /* renamed from: g, reason: collision with root package name */
    protected EnumC1130d f15872g;

    /* renamed from: e, reason: collision with root package name */
    protected boolean f15870e = false;

    /* renamed from: h, reason: collision with root package name */
    protected boolean f15873h = false;

    /* renamed from: a, reason: collision with root package name */
    protected final ed f15866a = new ed();

    public r3(Context context) {
        this.f15867b = context.getApplicationContext();
    }

    @Override // com.beizi.fusion.zc
    public void b() {
        this.f15870e = false;
        this.f15866a.b();
    }

    public xa d() {
        return this.f15866a;
    }

    public abstract void e();

    @Override // com.beizi.fusion.zc
    public void a(View view, EnumC1130d enumC1130d) {
        this.f15869d = view;
        this.f15872g = enumC1130d;
        this.f15866a.a((Object) null);
    }

    @Override // com.beizi.fusion.zc
    public void a() {
        this.f15870e = true;
        this.f15866a.a();
    }

    @Override // com.beizi.fusion.zc
    public void a(fc fcVar) {
        this.f15868c = fcVar;
    }

    public void a(fd.a aVar) {
        if (aVar == fd.a.EULER_INTERACTIVE_TRIGGER || aVar == fd.a.SHAKE_INTERACTIVE_TRIGGER) {
            ((no) wp.a().b(this.f15867b)).b(this.f15872g);
        }
        this.f15866a.a(aVar, this.f15869d, null);
        fc fcVar = this.f15868c;
        if (fcVar != null) {
            fcVar.a(this.f15869d, aVar.getEventCode());
        }
    }

    @Override // com.beizi.fusion.zc
    public void a(InteractionModel interactionModel) {
        this.f15871f = interactionModel;
        e();
    }
}
