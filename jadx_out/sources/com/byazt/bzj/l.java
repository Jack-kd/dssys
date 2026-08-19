package com.byazt.bzj;

import android.util.SparseArray;
import android.view.View;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 200, 34})
/* loaded from: classes2.dex */
public class l extends jx {
    public l(com.byazt.rlh.l lVar, Function<SparseArray<Object>, Object> function) {
        super(lVar, function);
    }

    @Override // com.byazt.rt.jx
    public View getAdView() {
        return getView();
    }

    public View getView() {
        try {
            if (((jx) this).f18695q != null) {
                Object objApply = ((jx) this).f18695q.apply(com.byazt.wi.j.hp().hp(8113).hp(View.class).l());
                if (objApply instanceof View) {
                    return (View) objApply;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
