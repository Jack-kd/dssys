package com.beizi.fusion;

import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.fd;
import com.beizi.fusion.lf;

/* loaded from: classes2.dex */
class dq implements lf {

    /* renamed from: a, reason: collision with root package name */
    private final lf.b f13583a = new lf.b();

    @Override // com.beizi.fusion.lf
    public void a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f13583a.o();
            this.f13583a.b(motionEvent.getX(), motionEvent.getY());
            this.f13583a.a(motionEvent.getRawX(), motionEvent.getRawY());
        } else {
            if (action != 1) {
                return;
            }
            this.f13583a.p();
            this.f13583a.d(motionEvent.getX(), motionEvent.getY());
            this.f13583a.c(motionEvent.getRawX(), motionEvent.getRawY());
        }
    }

    @Override // com.beizi.fusion.lf
    public void a(View view, int i2) {
        if (i2 == fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER.getEventCode() || i2 == fd.a.INVOKE_INTERACTIVE_TRIGGER.getEventCode()) {
            this.f13583a.o();
            int[] iArrA = h7.a(view);
            this.f13583a.b(iArrA[0], iArrA[1]);
            this.f13583a.a(iArrA[0], iArrA[1]);
            this.f13583a.d(iArrA[0], iArrA[1]);
            this.f13583a.c(iArrA[0], iArrA[1]);
            this.f13583a.p();
        }
    }

    @Override // com.beizi.fusion.lf
    public void a(View view) {
        this.f13583a.a(view);
    }

    @Override // com.beizi.fusion.lf
    public void a(View view, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f13583a.o();
            float[] fArrA = a(view, view2, new float[]{motionEvent.getX(), motionEvent.getY(), motionEvent.getRawX(), motionEvent.getRawY()});
            if (fArrA == null || fArrA.length != 4) {
                return;
            }
            this.f13583a.b(fArrA[0], fArrA[1]);
            this.f13583a.a(fArrA[2], fArrA[3]);
            return;
        }
        if (action != 1) {
            return;
        }
        this.f13583a.p();
        float[] fArrA2 = a(view, view2, new float[]{motionEvent.getX(), motionEvent.getY(), motionEvent.getRawX(), motionEvent.getRawY()});
        if (fArrA2 == null || fArrA2.length != 4) {
            return;
        }
        this.f13583a.b(fArrA2[0], fArrA2[1]);
        this.f13583a.a(fArrA2[2], fArrA2[3]);
    }

    private float[] a(View view, View view2, float[] fArr) {
        if (view == null || view2 == null || fArr == null || fArr.length != 4) {
            return fArr;
        }
        view.getLocationOnScreen(new int[2]);
        int width = view.getWidth();
        float f2 = (int) ((fArr[0] * 100.0d) / width);
        float height = (int) ((fArr[1] * 100.0d) / view.getHeight());
        int width2 = view2.getWidth();
        int height2 = view2.getHeight();
        view2.getLocationOnScreen(new int[2]);
        float f3 = (width2 * f2) / 100.0f;
        float f4 = (height2 * height) / 100.0f;
        return new float[]{f3, f4, r6[0] + f3, r6[1] + f4};
    }

    @Override // com.beizi.fusion.lf
    public lf.b a() {
        return this.f13583a;
    }
}
