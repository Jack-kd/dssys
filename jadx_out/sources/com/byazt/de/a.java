package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.gu;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, 54})
/* loaded from: classes2.dex */
public class a extends com.byazt.p000if.j implements l {
    public long hp;

    public a(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.p000if.j
    public void l(final gu guVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.l(guVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.a.4
                @Override // java.lang.Runnable
                public void run() {
                    a.super.l(guVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.j
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.j
    public void hp(final gu guVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(guVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.super.hp(guVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.j
    public void hp() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp();
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.super.hp();
                }
            });
        }
    }
}
