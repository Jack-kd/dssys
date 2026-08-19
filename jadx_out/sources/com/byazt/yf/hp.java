package com.byazt.yf;

import android.util.SparseArray;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1247, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f27904l;

    private hp() {
    }

    public static hp getInstance() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static void init(Function<SparseArray<Object>, Object> function) {
        f27904l = function;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        return null;
    }

    public void startRequestRit(String str, String str2) {
        if (f27904l != null) {
            com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
            hpVarHp.hp(20000, str);
            hpVarHp.hp(20001, str2);
            hpVarHp.hp(-99999987, 10000);
            hpVarHp.hp(-99999985, Void.class);
            f27904l.apply(hpVarHp.l().sparseArray());
        }
    }
}
