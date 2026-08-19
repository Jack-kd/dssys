package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.se;

/* loaded from: classes2.dex */
public class re implements xa {

    /* renamed from: a, reason: collision with root package name */
    private se f15932a;

    @Override // com.beizi.fusion.xa
    public void a() {
    }

    public void a(za zaVar, View view, Integer num) {
        se seVar = this.f15932a;
        if (seVar != null && (zaVar instanceof se.a) && se.a.REWARD_CLAIM_EVENT == zaVar) {
            seVar.g(zaVar);
        }
    }

    @Override // com.beizi.fusion.xa
    public void a(se seVar) {
        this.f15932a = seVar;
        seVar.a(this);
    }
}
