package com.byazt.rq;

import android.content.Context;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.qk.w;
import com.byazt.xci.b;
import com.byazt.xci.wt;
import com.byazt.ymw.ud;
import com.byazt.zn.xh;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 659, 2286})
/* loaded from: classes3.dex */
public class SlideInterceptView extends View implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public float f25269a;

    /* renamed from: e, reason: collision with root package name */
    public final com.byazt.oi.hp f25270e;
    public boolean eb;
    public final ud gu;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public MotionEvent f25271j;
    public final Map<Integer, l> jl;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public float f25272l;

    /* renamed from: q, reason: collision with root package name */
    public final hp f25273q;

    /* renamed from: s, reason: collision with root package name */
    public final wt f25274s;

    /* renamed from: w, reason: collision with root package name */
    public float f25275w;

    public interface hp {
        w hp();

        void hp(View view, b bVar);
    }

    @com.byazt.kj.hp(hp = {0, 1, 659, 1727})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public boolean f25276a = false;
        public MotionEvent eb;
        public float hp;

        /* renamed from: j, reason: collision with root package name */
        public float f25277j;
        public long jx;

        /* renamed from: l, reason: collision with root package name */
        public float f25278l;

        /* renamed from: w, reason: collision with root package name */
        public float f25279w;

        public l(float f2, float f3, long j2, MotionEvent motionEvent) {
            this.hp = f2;
            this.f25278l = f3;
            this.jx = j2;
            this.f25277j = f2;
            this.f25279w = f3;
            this.eb = motionEvent;
        }
    }

    public SlideInterceptView(Context context, wt wtVar, hp hpVar) {
        super(context);
        this.eb = false;
        this.f25270e = new com.byazt.oi.hp();
        this.gu = new ud(this);
        this.jl = new HashMap();
        this.f25274s = wtVar;
        this.f25273q = hpVar;
    }

    private boolean hp(float f2, float f3, int i2, int i3) {
        boolean z2 = (i2 & 1) == 1;
        boolean z3 = (i2 & 2) == 2;
        boolean z4 = (i2 & 4) == 4;
        boolean z5 = (i2 & 8) == 8;
        if (z2 && (-f3) > i3) {
            return true;
        }
        if (z3 && f3 > i3) {
            return true;
        }
        if (!z4 || (-f2) <= i3) {
            return z5 && f2 > ((float) i3);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean jx(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rq.SlideInterceptView.jx(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean l(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.rq.SlideInterceptView.l(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f25270e.hp(motionEvent)) {
            return false;
        }
        com.byazt.oi.hp hpVar = this.f25270e;
        StringBuilder sb = new StringBuilder();
        sb.append(getId());
        hpVar.hp(this, sb.toString(), motionEvent);
        hp(motionEvent);
        return sz.l().oh() ? jx(motionEvent) : l(motionEvent);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (!sz.l().oh()) {
            if (!hp(this.f25275w - this.hp, this.f25269a - this.f25272l, System.currentTimeMillis() - this.jx, this.f25274s.cx(), xh.jx(getContext(), this.f25274s.b())) || this.eb) {
                return;
            }
            this.eb = true;
            hp hpVar = this.f25273q;
            if (hpVar != null) {
                hpVar.hp(this, hp(this.f25275w, this.f25269a, this.f25271j, (byte) 5));
                return;
            }
            return;
        }
        Iterator<Map.Entry<Integer, l>> it = this.jl.entrySet().iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            l value = it.next().getValue();
            if (value != null && !value.f25276a) {
                if (hp(value.f25277j - value.hp, value.f25279w - value.f25278l, System.currentTimeMillis() - value.jx, this.f25274s.cx(), xh.jx(getContext(), this.f25274s.b()))) {
                    value.f25276a = true;
                    hp hpVar2 = this.f25273q;
                    if (hpVar2 != null) {
                        hpVar2.hp(this, hp(value, value.f25277j, value.f25279w, value.eb, (byte) 5));
                    }
                    z2 = true;
                }
            }
        }
        if (z2) {
            this.eb = true;
        }
    }

    private void hp(MotionEvent motionEvent) {
        w wVarHp;
        hp hpVar = this.f25273q;
        if (hpVar == null || (wVarHp = hpVar.hp()) == null) {
            return;
        }
        wVarHp.jx(motionEvent.getDeviceId());
        wVarHp.l(motionEvent.getSource());
        wVarHp.j(motionEvent.getToolType(0));
    }

    private boolean hp(l lVar, float f2, float f3, long j2, float f4, float f5, MotionEvent motionEvent, boolean z2) {
        int iVv = this.f25274s.vv();
        int iJx = xh.jx(getContext(), this.f25274s.ec());
        int iCx = this.f25274s.cx();
        int iJx2 = xh.jx(getContext(), this.f25274s.b());
        if ((z2 || this.f25274s.ns() == 1) && !lVar.f25276a && hp(f2, f3, iVv, iJx)) {
            lVar.f25276a = true;
            hp hpVar = this.f25273q;
            if (hpVar != null) {
                hpVar.hp(this, hp(lVar, f4, f5, motionEvent, (byte) 2));
            }
            return true;
        }
        if (lVar.f25276a || !hp(f2, f3, j2, iCx, iJx2)) {
            return false;
        }
        lVar.f25276a = true;
        hp hpVar2 = this.f25273q;
        if (hpVar2 != null) {
            hpVar2.hp(this, hp(lVar, f4, f5, motionEvent, (byte) 5));
        }
        return true;
    }

    private boolean hp(float f2, float f3, long j2, int i2, int i3) {
        if (i2 <= 0 || j2 < i2) {
            return false;
        }
        float f4 = i3;
        return Math.abs(f2) <= f4 && Math.abs(f3) <= f4;
    }

    private b hp(float f2, float f3, MotionEvent motionEvent, byte b3) {
        b.hp hpVar = new b.hp();
        hpVar.j(this.hp);
        hpVar.jx(this.f25272l);
        hpVar.l(f2);
        hpVar.hp(f3);
        hpVar.hp(b3);
        hpVar.hp(b3 == 1);
        hpVar.l(this.jx);
        hpVar.hp(System.currentTimeMillis());
        return hpVar.hp();
    }

    private b hp(l lVar, float f2, float f3, MotionEvent motionEvent, byte b3) {
        b.hp hpVar = new b.hp();
        hpVar.j(lVar.hp);
        hpVar.jx(lVar.f25278l);
        hpVar.l(f2);
        hpVar.hp(f3);
        hpVar.hp(b3 == 1);
        hpVar.hp(b3);
        hpVar.l(lVar.jx);
        hpVar.hp(System.currentTimeMillis());
        return hpVar.hp();
    }

    public void hp() {
        this.gu.removeMessages(1);
        this.jl.clear();
    }
}
