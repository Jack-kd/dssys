package com.byazt.xu;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 2063, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.tm.hp {
    public hp(Context context, ViewGroup viewGroup, mp mpVar, com.byazt.go.hp hpVar) {
        super(context, viewGroup, mpVar, hpVar);
        hp(false);
    }

    public boolean b() {
        return xs() != null && xs().isPaused();
    }

    @Override // com.byazt.tm.hp
    public int cx() {
        return 2;
    }
}
