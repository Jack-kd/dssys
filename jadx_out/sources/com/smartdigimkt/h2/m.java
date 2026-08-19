package com.smartdigimkt.h2;

import android.view.MotionEvent;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.FullOrientationG2CV2View;

/* loaded from: classes5.dex */
public final class m implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FullOrientationG2CV2View f40507a;

    public m(FullOrientationG2CV2View fullOrientationG2CV2View) {
        this.f40507a = fullOrientationG2CV2View;
    }

    @Override // com.smartdigimkt.h2.h0
    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f40507a.f43867l = motionEvent.getX();
            this.f40507a.f43868m = motionEvent.getY();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float x2 = motionEvent.getX() - this.f40507a.f43867l;
                float y2 = motionEvent.getY();
                FullOrientationG2CV2View fullOrientationG2CV2View = this.f40507a;
                float f2 = y2 - fullOrientationG2CV2View.f43868m;
                fullOrientationG2CV2View.f43869n += Math.abs(x2);
                this.f40507a.f43870o += Math.abs(f2);
                this.f40507a.f43867l = motionEvent.getX();
                this.f40507a.f43868m = motionEvent.getY();
                return false;
            }
            if (action != 3) {
                return false;
            }
        }
        FullOrientationG2CV2View fullOrientationG2CV2View2 = this.f40507a;
        if (fullOrientationG2CV2View2.f43869n + fullOrientationG2CV2View2.f43870o <= fullOrientationG2CV2View2.f43871p) {
            return false;
        }
        com.smartdigimkt.k2.e eVar = fullOrientationG2CV2View2.f43840e;
        if (eVar != null) {
            eVar.a(11, 21);
        }
        return true;
    }
}
