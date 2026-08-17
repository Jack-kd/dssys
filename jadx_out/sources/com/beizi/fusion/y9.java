package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.z9;

/* loaded from: classes2.dex */
public class y9 implements xa {

    /* renamed from: a, reason: collision with root package name */
    protected z9 f17672a;

    @Override // com.beizi.fusion.xa
    public void a() {
    }

    public void a(za zaVar, View view, Integer num) {
        z9 z9Var = this.f17672a;
        if (z9Var == null || !(zaVar instanceof z9.a)) {
            return;
        }
        if (z9.a.AD_CLOSE == zaVar) {
            z9Var.d(zaVar);
        }
        if (z9.a.COMPLAIN_CONFIRM == zaVar) {
            this.f17672a.f(zaVar);
        }
        if (z9.a.AD_CLICK == zaVar) {
            this.f17672a.a(zaVar, view);
        }
        this.f17672a.a((z9.a) zaVar);
    }

    @Override // com.beizi.fusion.xa
    public void a(z9 z9Var) {
        this.f17672a = z9Var;
        z9Var.a(this);
    }
}
