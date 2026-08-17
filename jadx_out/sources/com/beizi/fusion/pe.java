package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.z9;

/* loaded from: classes2.dex */
public class pe extends ec {
    @Override // com.beizi.fusion.y9
    public void a(za zaVar, View view, Integer num) {
        z9 z9Var = this.f17672a;
        if (z9Var != null && (zaVar instanceof z9.a) && (z9Var instanceof qe)) {
            if (z9.a.REWARD_PRIMARY_CLOSE == zaVar) {
                ((qe) z9Var).h(zaVar);
            }
            if (z9.a.REWARD_TO_PRIVILEGE == zaVar) {
                ((qe) this.f17672a).k(zaVar);
            }
            if (z9.a.REWARD_TO_END_CARD == zaVar) {
                ((qe) this.f17672a).b(zaVar);
            }
            if (z9.a.REWARD_TO_RETAIN == zaVar) {
                ((qe) this.f17672a).a(zaVar);
            }
        }
        super.a(zaVar, view, null);
    }
}
