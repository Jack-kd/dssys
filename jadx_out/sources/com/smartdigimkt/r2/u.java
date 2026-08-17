package com.smartdigimkt.r2;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes5.dex */
public final class u {

    /* renamed from: b, reason: collision with root package name */
    public int f43038b;

    /* renamed from: c, reason: collision with root package name */
    public int f43039c;

    /* renamed from: e, reason: collision with root package name */
    public com.smartdigimkt.n2.a f43041e;

    /* renamed from: a, reason: collision with root package name */
    public int f43037a = -1;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43040d = false;

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 0
            if (r0 == 0) goto L65
            r2 = 1
            r3 = -1
            if (r0 == r2) goto L3f
            r4 = 2
            if (r0 == r4) goto L12
            r2 = 3
            if (r0 == r2) goto L3f
            goto L7b
        L12:
            int r0 = r5.f43037a
            if (r0 != r3) goto L17
            goto L7b
        L17:
            int r0 = r6.findPointerIndex(r0)
            if (r0 != r3) goto L1e
            goto L7b
        L1e:
            float r1 = r6.getY(r0)
            int r1 = (int) r1
            float r6 = r6.getX(r0)
            int r6 = (int) r6
            int r0 = r5.f43038b
            int r1 = r1 - r0
            int r0 = java.lang.Math.abs(r1)
            int r1 = r5.f43039c
            int r6 = r6 - r1
            int r6 = java.lang.Math.abs(r6)
            r1 = 10
            if (r0 > r1) goto L3c
            if (r6 <= r1) goto L7b
        L3c:
            r5.f43040d = r2
            goto L7b
        L3f:
            boolean r0 = r5.f43040d
            if (r0 == 0) goto L4c
            com.smartdigimkt.n2.a r0 = r5.f43041e
            if (r0 == 0) goto L4c
            r2 = 13
            r0.a(r2, r2)
        L4c:
            int r0 = r5.f43037a
            int r0 = r6.findPointerIndex(r0)
            float r2 = r6.getX(r0)
            int r2 = (int) r2
            r5.f43039c = r2
            float r6 = r6.getY(r0)
            int r6 = (int) r6
            r5.f43038b = r6
            r5.f43040d = r1
            r5.f43037a = r3
            goto L7b
        L65:
            float r0 = r6.getY()
            int r0 = (int) r0
            r5.f43038b = r0
            float r0 = r6.getX()
            int r0 = (int) r0
            r5.f43039c = r0
            int r6 = r6.getPointerId(r1)
            r5.f43037a = r6
            r5.f43040d = r1
        L7b:
            boolean r6 = r5.f43040d
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.r2.u.a(android.view.MotionEvent):boolean");
    }

    public final void a(View view, MotionEvent motionEvent) {
        com.smartdigimkt.n2.a aVar;
        int iFindPointerIndex;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f43038b = (int) motionEvent.getY();
            this.f43039c = (int) motionEvent.getX();
            this.f43037a = motionEvent.getPointerId(0);
            this.f43040d = false;
            return;
        }
        if (action == 1) {
            if (this.f43040d && (aVar = this.f43041e) != null) {
                aVar.a(13, 13);
            }
            int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f43037a);
            this.f43039c = (int) motionEvent.getX(iFindPointerIndex2);
            this.f43038b = (int) motionEvent.getY(iFindPointerIndex2);
            this.f43040d = false;
            this.f43037a = -1;
            return;
        }
        if (action == 2 && (iFindPointerIndex = motionEvent.findPointerIndex(this.f43037a)) != -1) {
            int x2 = (int) motionEvent.getX(iFindPointerIndex);
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            int iAbs = Math.abs(x2 - this.f43039c);
            if (Math.abs(y2 - this.f43038b) > 10 || iAbs > 10) {
                this.f43040d = true;
                ViewParent parent = view.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            }
        }
    }
}
