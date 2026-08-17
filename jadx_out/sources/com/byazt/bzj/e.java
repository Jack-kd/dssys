package com.byazt.bzj;

import android.util.SparseArray;
import android.view.ViewGroup;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, 45})
/* loaded from: classes2.dex */
public class e extends jx {
    public e(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        super(lVar, function);
    }

    public void showAd(ViewGroup viewGroup) {
        com.byazt.rlh.l lVar = ((jx) this).f18696s;
        if (lVar != null) {
            lVar.mediationCallShow();
        }
        if (((jx) this).f18695q != null) {
            ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(6152).hp(20060, viewGroup).hp(Void.class).l());
        }
    }

    @Override // com.byazt.rt.jx
    public void showSplashAd(ViewGroup viewGroup) {
        try {
            showAd(viewGroup);
        } catch (Exception unused) {
        }
    }
}
