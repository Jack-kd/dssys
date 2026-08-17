package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, 38})
/* loaded from: classes2.dex */
public class j extends com.byazt.p000if.l implements l {
    public long hp;

    public j(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.l
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.p000if.l
    public void hp(final List<com.byazt.qt.q> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(list);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.j.2
                @Override // java.lang.Runnable
                public void run() {
                    j.super.hp(list);
                }
            });
        }
    }
}
