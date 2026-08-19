package com.byazt.oi;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 1547, 28})
/* loaded from: classes3.dex */
public class hp {
    public String hp = "GesThrough_";

    /* renamed from: l, reason: collision with root package name */
    public List<MotionEvent> f24100l = new ArrayList();
    public Set<String> jx = Collections.synchronizedSet(new HashSet());

    public void hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent) {
        if (jxVar == null || motionEvent == null || this.f24100l == null) {
            return;
        }
        hp(jxVar.q(), jxVar.nu(), motionEvent);
    }

    public void hp(View view, String str, MotionEvent motionEvent) {
        if (view == null || motionEvent == null || this.f24100l == null) {
            return;
        }
        this.hp = "GesThrough_".concat(String.valueOf(str));
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (motionEvent.getAction() == 0) {
            hp();
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(i2, i3);
        this.f24100l.add(motionEventObtain);
    }

    public boolean hp(MotionEvent motionEvent) {
        if (motionEvent == null || this.jx == null) {
            return false;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        return this.jx.contains(motionEvent.getDownTime() + "_" + pointerId);
    }

    public void hp(com.byazt.xs.jx jxVar) {
        if (this.f24100l.isEmpty() || this.jx == null || jxVar == null || jxVar.q() == null || jxVar.q().getRootView() == null) {
            return;
        }
        hp(jxVar.q());
    }

    public void hp(View view) {
        if (this.f24100l.isEmpty() || this.jx == null || view == null || view.getRootView() == null) {
            return;
        }
        final View rootView = view.getRootView();
        this.f24100l.size();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.oi.hp.1
            @Override // java.lang.Runnable
            public void run() {
                for (MotionEvent motionEvent : hp.this.f24100l) {
                    if (motionEvent != null) {
                        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        hp.this.jx.add(motionEvent.getDownTime() + "_" + pointerId);
                        rootView.dispatchTouchEvent(motionEvent);
                        motionEvent.recycle();
                    }
                }
                hp.this.hp();
            }
        }, 300L);
    }

    public void hp() {
        List<MotionEvent> list = this.f24100l;
        if (list != null) {
            list.clear();
        }
    }
}
