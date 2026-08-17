package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.zy;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, 94})
/* loaded from: classes2.dex */
public class eb extends com.byazt.p000if.w implements l {
    public long hp;

    public eb(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.w
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.eb.1
                @Override // java.lang.Runnable
                public void run() {
                    eb.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.p000if.w
    public void hp(final List<zy> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(list);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.eb.2
                @Override // java.lang.Runnable
                public void run() {
                    eb.super.hp(list);
                }
            });
        }
    }
}
