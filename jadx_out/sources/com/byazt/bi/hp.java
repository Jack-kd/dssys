package com.byazt.bi;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import com.byazt.xci.nu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 322, 28})
/* loaded from: classes2.dex */
public class hp {
    public List<l> hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f18551l;

    /* renamed from: w, reason: collision with root package name */
    public final Vibrator f18552w;
    public final List<Long> jx = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final List<Integer> f18550j = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public long f18549a = 0;
    public long eb = 0;

    public hp(Context context, nu nuVar) {
        this.f18551l = context;
        this.f18552w = jx.jx(context);
        this.hp = nuVar.l();
        hp();
    }

    private static float hp(float f2, float f3, float f4) {
        return f2 < f3 ? f3 : f2 > f4 ? f4 : f2;
    }

    public void jx() {
        this.jx.clear();
        this.f18550j.clear();
        this.f18549a = 0L;
        this.eb = 0L;
    }

    public void l() {
        if (!jx.hp(this.f18551l) || this.jx.isEmpty() || this.f18550j.isEmpty()) {
            return;
        }
        long[] jArrHp = hp(this.jx);
        int[] iArrL = l(this.f18550j);
        if (Build.VERSION.SDK_INT < 26) {
            this.f18552w.vibrate(100L);
        } else {
            this.f18552w.vibrate(VibrationEffect.createWaveform(jArrHp, iArrL, -1));
        }
    }

    public void hp() {
        jx();
        List<l> list = this.hp;
        if (list == null || list.isEmpty()) {
            return;
        }
        Collections.sort(this.hp, new Comparator<l>() { // from class: com.byazt.bi.hp.1
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(l lVar, l lVar2) {
                return Long.compare(lVar.hp(), lVar2.hp());
            }
        });
        Iterator<l> it = this.hp.iterator();
        while (it.hasNext()) {
            long jHp = r1.hp() + it.next().l();
            if (jHp > this.eb) {
                this.eb = jHp;
            }
        }
        for (l lVar : this.hp) {
            if (this.f18549a < lVar.hp()) {
                hp(lVar.hp() - this.f18549a);
            }
            hp(lVar.l(), lVar.jx(), lVar.j());
        }
        long j2 = this.f18549a;
        long j3 = this.eb;
        if (j2 < j3) {
            hp(j3 - j2);
        }
    }

    private int[] l(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        return iArr;
    }

    private void hp(long j2) {
        if (j2 > 0) {
            this.jx.add(Long.valueOf(j2));
            this.f18550j.add(0);
            this.f18549a += j2;
        }
    }

    private void hp(long j2, float f2, float f3) {
        float fHp = hp(f2, 0.0f, 1.0f);
        float fHp2 = hp(f3, 0.0f, 1.0f);
        int iPow = (int) (((float) Math.pow(fHp, 1.5d)) * 255.0f);
        int iMax = Math.max(1, (int) (fHp2 * ((int) (j2 / 22))));
        long j3 = j2 - (iMax * 20);
        for (int i2 = 0; i2 < iMax; i2++) {
            this.jx.add(20L);
            this.f18550j.add(Integer.valueOf(iPow));
            int i3 = iMax - 1;
            if (i2 < i3) {
                this.jx.add(Long.valueOf(Math.max(2L, j3 / i3)));
                this.f18550j.add(0);
            }
        }
        this.f18549a += j2;
    }

    private long[] hp(List<Long> list) {
        long[] jArr = new long[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            jArr[i2] = list.get(i2).longValue();
        }
        return jArr;
    }
}
