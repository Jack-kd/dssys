package com.byazt.bzj;

import android.app.Activity;
import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, 150})
/* loaded from: classes2.dex */
public class q extends jx {
    public q(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        super(lVar, function);
    }

    @Override // com.byazt.rt.jx
    public void showAd(Activity activity, Object obj, String str) {
        try {
            showAd(activity);
        } catch (Exception unused) {
        }
    }

    public void showAd(Activity activity) {
        com.byazt.rlh.l lVar = ((jx) this).f18696s;
        if (lVar != null) {
            lVar.mediationCallShow();
        }
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8113).hp(20033, activity).hp(Void.class).l());
        }
    }
}
