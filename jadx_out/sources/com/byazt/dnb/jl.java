package com.byazt.dnb;

import com.byazt.xci.df;
import com.byazt.xci.ec;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 1239, 19})
/* loaded from: classes2.dex */
public class jl {
    public static boolean hp(mp mpVar) {
        if (df.jl(mpVar)) {
            if (ec.hp(mpVar)) {
                return ec.l(mpVar);
            }
            if (!mp.jx(mpVar)) {
                return true;
            }
        }
        return false;
    }
}
