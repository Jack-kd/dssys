package com.smartdigimkt.h2;

import android.view.MotionEvent;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GestureG2CV2View;

/* loaded from: classes5.dex */
public final class x implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GestureG2CV2View f40538a;

    public x(GestureG2CV2View gestureG2CV2View) {
        this.f40538a = gestureG2CV2View;
    }

    @Override // com.smartdigimkt.h2.h0
    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f40538a.f43889o = motionEvent.getX();
            return true;
        }
        if (action == 1) {
            GestureG2CV2View gestureG2CV2View = this.f40538a;
            if (gestureG2CV2View.f43890p <= gestureG2CV2View.f43891q) {
                return false;
            }
            com.smartdigimkt.k2.e eVar = gestureG2CV2View.f43840e;
            if (eVar != null) {
                eVar.a(11, 15);
            }
            return true;
        }
        if (action != 2) {
            return false;
        }
        float x2 = motionEvent.getX();
        GestureG2CV2View gestureG2CV2View2 = this.f40538a;
        gestureG2CV2View2.f43890p += Math.abs(x2 - gestureG2CV2View2.f43889o);
        this.f40538a.f43889o = motionEvent.getX();
        return false;
    }
}
