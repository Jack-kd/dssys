package com.byazt.sg;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.text.TextUtils;
import com.byazt.gg.a;
import com.byazt.xs.jx;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1083, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.ov.hp {
    public l(jx jxVar, String str, a.hp hpVar) {
        super(jxVar, str, hpVar);
    }

    @Override // com.byazt.ov.hp
    public void hp() {
        Object obj;
        jx jxVar;
        jx jxVarL;
        Map<String, Object> map = this.f24188a;
        if (map == null || map.isEmpty() || (obj = this.f24188a.get("id")) == null) {
            return;
        }
        String strValueOf = String.valueOf(obj);
        if (TextUtils.isEmpty(strValueOf) || (jxVarL = (jxVar = this.jx).l(jxVar)) == null) {
            return;
        }
        jx jxVarJ = jxVarL.j(strValueOf);
        if (jxVarJ instanceof com.byazt.gx.l) {
            com.byazt.gx.l lVar = (com.byazt.gx.l) jxVarJ;
            lVar.rv();
            lVar.hp(new AnimatorListenerAdapter() { // from class: com.byazt.sg.l.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    l.this.jx();
                }
            });
        }
    }

    @Override // com.byazt.ov.hp
    public void l() {
    }
}
