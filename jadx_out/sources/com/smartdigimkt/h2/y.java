package com.smartdigimkt.h2;

import android.view.MotionEvent;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GestureNewG2CV2View;

/* loaded from: classes5.dex */
public final class y implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ GestureNewG2CV2View f40540a;

    public y(GestureNewG2CV2View gestureNewG2CV2View) {
        this.f40540a = gestureNewG2CV2View;
    }

    @Override // com.smartdigimkt.h2.h0
    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f40540a.f43899n = motionEvent.getX();
            return true;
        }
        if (action == 1) {
            GestureNewG2CV2View gestureNewG2CV2View = this.f40540a;
            if (gestureNewG2CV2View.f43900o <= gestureNewG2CV2View.f43901p) {
                return false;
            }
            com.smartdigimkt.k2.e eVar = gestureNewG2CV2View.f43840e;
            if (eVar != null) {
                eVar.a(11, 46);
            }
            return true;
        }
        if (action != 2) {
            return false;
        }
        float x2 = motionEvent.getX();
        GestureNewG2CV2View gestureNewG2CV2View2 = this.f40540a;
        gestureNewG2CV2View2.f43900o += Math.abs(x2 - gestureNewG2CV2View2.f43899n);
        this.f40540a.f43899n = motionEvent.getX();
        return false;
    }
}
