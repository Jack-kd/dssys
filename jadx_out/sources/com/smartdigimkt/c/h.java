package com.smartdigimkt.c;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.china.based.twist.TwistG2CV2View;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class h extends com.smartdigimkt.k2.f {

    /* renamed from: i, reason: collision with root package name */
    public TwistG2CV2View f39601i;

    /* renamed from: j, reason: collision with root package name */
    public final f f39602j = new f(this);

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        try {
            if (i2 != 112) {
                if (i2 == 114) {
                    a();
                    return;
                } else if (i2 != 115) {
                    return;
                }
            }
            TwistG2CV2View twistG2CV2View = this.f39601i;
            if (twistG2CV2View != null) {
                twistG2CV2View.removeCallbacks(this.f39602j);
            }
            try {
                TwistG2CV2View twistG2CV2View2 = this.f39601i;
                if (twistG2CV2View2 != null && twistG2CV2View2.getParent() != null) {
                    ((ViewGroup) this.f39601i.getParent()).removeView(this.f39601i);
                }
            } catch (Throwable unused) {
            }
            TwistG2CV2View twistG2CV2View3 = this.f39601i;
            if (twistG2CV2View3 != null) {
                twistG2CV2View3.release();
                this.f39601i = null;
            }
        } catch (Throwable unused2) {
        }
    }

    public final void a() {
        try {
            int i2 = this.f41308e;
            if ((i2 == 1 || i2 == 2 || i2 == 3) && this.f41304a != null && this.f41305b != null && this.f41306c.f41644r != null) {
                if (this.f39601i == null) {
                    TwistG2CV2View twistG2CV2View = new TwistG2CV2View(this.f41304a);
                    this.f39601i = twistG2CV2View;
                    twistG2CV2View.initView(this.f41308e, 0);
                }
                com.smartdigimkt.m3.e eVar = this.f41306c.f41644r;
                this.f39601i.setTwistConfig(eVar.f41906W1, eVar.f41909X1, eVar.f41912Y1, new g(this));
                ViewGroup viewGroup = this.f41307d;
                if (viewGroup == null) {
                    return;
                }
                if (this.f41309f != null) {
                    this.f41309f.addView(this.f39601i, new RelativeLayout.LayoutParams(-1, -1));
                } else {
                    viewGroup.addView(this.f39601i, new ViewGroup.LayoutParams(-1, -1));
                }
                this.f39601i.removeCallbacks(this.f39602j);
                this.f39601i.post(this.f39602j);
            }
        } catch (Throwable unused) {
        }
    }
}
