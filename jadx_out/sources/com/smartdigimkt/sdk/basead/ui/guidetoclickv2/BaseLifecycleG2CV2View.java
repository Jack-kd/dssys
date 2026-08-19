package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.h2.b;
import com.smartdigimkt.h2.c;
import com.smartdigimkt.v1.q2;

/* loaded from: classes5.dex */
public abstract class BaseLifecycleG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public GTCV2InnerCountDownView f43843h;

    public BaseLifecycleG2CV2View(Context context) {
        super(context);
    }

    public final void b() {
        if (this.f43843h == null) {
            this.f43843h = new GTCV2InnerCountDownView(getContext());
            addView(this.f43843h, new ViewGroup.MarginLayoutParams(-1, -1));
            this.f43843h.initSetting(new c(this));
        }
        e eVarA = e.a();
        eVarA.f39592b.removeCallbacks(this.f43839d);
    }

    public abstract int getClickArea();

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void init(long j2, int i2, int i3, com.smartdigimkt.k2.e eVar, b bVar) {
        d dVar;
        super.init(j2, i2, i3, eVar, bVar);
        com.smartdigimkt.k2.e eVar2 = this.f43840e;
        if (!(eVar2 instanceof q2) || (dVar = ((q2) eVar2).f44581a.f43229o) == null) {
            return;
        }
        dVar.f39650q = false;
        dVar.b();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void pauseAnim() {
        GTCV2InnerCountDownView gTCV2InnerCountDownView = this.f43843h;
        if (gTCV2InnerCountDownView != null) {
            gTCV2InnerCountDownView.onPause();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void pauseAnimPlay() {
        GTCV2InnerCountDownView gTCV2InnerCountDownView = this.f43843h;
        if (gTCV2InnerCountDownView != null) {
            gTCV2InnerCountDownView.onPause();
        } else {
            super.pauseAnimPlay();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        d dVar;
        super.release();
        GTCV2InnerCountDownView gTCV2InnerCountDownView = this.f43843h;
        if (gTCV2InnerCountDownView != null) {
            gTCV2InnerCountDownView.release();
        }
        com.smartdigimkt.k2.e eVar = this.f43840e;
        if (!(eVar instanceof q2) || (dVar = ((q2) eVar).f44581a.f43229o) == null) {
            return;
        }
        dVar.f39650q = true;
        dVar.c();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void resumeAnim() {
        GTCV2InnerCountDownView gTCV2InnerCountDownView = this.f43843h;
        if (gTCV2InnerCountDownView != null) {
            gTCV2InnerCountDownView.onResume();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public void resumeAnimPlay() {
        GTCV2InnerCountDownView gTCV2InnerCountDownView = this.f43843h;
        if (gTCV2InnerCountDownView != null) {
            gTCV2InnerCountDownView.onResume();
        } else {
            super.resumeAnimPlay();
        }
    }

    public BaseLifecycleG2CV2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BaseLifecycleG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
