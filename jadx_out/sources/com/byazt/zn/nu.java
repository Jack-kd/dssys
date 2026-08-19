package com.byazt.zn;

import android.annotation.SuppressLint;
import com.byazt.ke.j;

@com.byazt.kj.hp(hp = {0, 1, 442, 546})
/* loaded from: classes3.dex */
public final class nu {
    public static volatile boolean hp = false;

    @com.byazt.kj.hp(hp = {0, 1, 442, 1651})
    public static class hp {

        @SuppressLint({"StaticFieldLeak"})
        public static final j.hp hp = nu.j();
    }

    public static com.byazt.ow.w hp(String str) {
        return hp.hp.hp(l(str)).hp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j.hp j() {
        com.byazt.jkd.gu guVarL = com.byazt.jz.sz.l();
        guVarL.bx();
        return new j.hp().hp(com.byazt.jz.sz.getContext()).hp(1).l(guVarL.qb()).hp(hp);
    }

    public static int l() {
        return 3;
    }

    public static void hp() {
        hp = true;
    }

    private static String l(String str) {
        if (hp || com.byazt.ymw.sz.hp(com.byazt.jz.sz.getContext())) {
            return str;
        }
        return str + com.byazt.ymw.sz.l(com.byazt.jz.sz.getContext());
    }
}
