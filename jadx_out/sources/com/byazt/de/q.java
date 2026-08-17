package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.vv;
import com.byazt.qt.v;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, 150})
/* loaded from: classes2.dex */
public class q extends com.byazt.p000if.eb implements l {
    public long hp;

    public q(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.p000if.eb
    public void l(final v vVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.l(vVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.q.4
                @Override // java.lang.Runnable
                public void run() {
                    q.super.l(vVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.eb
    public void hp(final int i2, final String str) {
        if (str == null) {
            str = hq.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(i2, str);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.q.1
                @Override // java.lang.Runnable
                public void run() {
                    q.super.hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.eb
    public void hp(final v vVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(vVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.q.2
                @Override // java.lang.Runnable
                public void run() {
                    q.super.hp(vVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.eb
    public void hp() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp();
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.q.3
                @Override // java.lang.Runnable
                public void run() {
                    q.super.hp();
                }
            });
        }
    }
}
