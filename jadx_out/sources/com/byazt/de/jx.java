package com.byazt.de;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.jz.vv;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 465, 30})
/* loaded from: classes2.dex */
public class jx extends com.byazt.p000if.hp implements l {
    public long hp;

    public jx(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.hp = System.currentTimeMillis();
    }

    @Override // com.byazt.p000if.hp
    public void l(final com.byazt.qt.l lVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.l(lVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.jx.3
                @Override // java.lang.Runnable
                public void run() {
                    jx.super.l(lVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.hp
    public void hp(final com.byazt.qt.l lVar) {
        if (com.byazt.qfg.a.jx()) {
            super.hp(lVar);
        } else {
            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.de.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    jx.super.hp(lVar);
                }
            });
        }
    }

    @Override // com.byazt.de.l
    public long l() {
        return this.hp;
    }

    @Override // com.byazt.p000if.hp
    public void hp(final com.byazt.qt.hp hpVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(hpVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    jx.super.hp(hpVar);
                }
            });
        }
    }

    @Override // com.byazt.p000if.hp
    public void hp(final com.byazt.qt.l lVar, final com.byazt.qt.hp hpVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.hp(lVar, hpVar);
        } else {
            vv.a().post(new Runnable() { // from class: com.byazt.de.jx.4
                @Override // java.lang.Runnable
                public void run() {
                    jx.super.hp(lVar, hpVar);
                }
            });
        }
    }
}
