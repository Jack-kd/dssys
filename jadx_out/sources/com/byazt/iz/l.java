package com.byazt.iz;

import android.provider.Settings;
import android.view.Window;
import android.view.WindowManager;
import com.byazt.jz.sz;
import com.byazt.rdt.jx;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1633, 34})
/* loaded from: classes.dex */
public class l extends com.byazt.rdt.hp {
    public Window hp;

    /* renamed from: l, reason: collision with root package name */
    public final String f21261l = "xgc_prop_bright";
    public final float jx = 255.0f;

    /* renamed from: j, reason: collision with root package name */
    public final int f21260j = -1;

    public l(Window window) {
        this.hp = window;
        if (jx.hp().w() == -2.0f) {
            jx.hp().hp(w() / 255.0f);
        }
    }

    public void hp(double d2) {
        l(d2);
    }

    @Override // com.byazt.rdt.hp
    public JSONObject j() {
        return sz.l().gb();
    }

    @Override // com.byazt.rdt.hp
    public boolean jx() {
        if (this.hp == null) {
            return true;
        }
        double dW = jx.hp().w();
        return dW >= 0.95d || dW <= 0.05d;
    }

    @Override // com.byazt.rdt.hp
    public void l(int i2) {
        l(-1.0d);
    }

    public int w() {
        return Settings.System.getInt(sz.getContext().getContentResolver(), "screen_brightness", 0);
    }

    private void l(double d2) {
        WindowManager.LayoutParams attributes = this.hp.getAttributes();
        if (attributes != null) {
            if (d2 != -1.0d) {
                d2 = Math.max(0.0d, Math.min(d2, 1.0d));
                if (d2 == 0.0d) {
                    d2 = -1.0d;
                }
            }
            attributes.screenBrightness = (float) d2;
            this.hp.setAttributes(attributes);
        }
    }

    public float hp(Window window) {
        return window.getAttributes().screenBrightness;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c A[PHI: r7
      0x001c: PHI (r7v3 double) = (r7v1 double), (r7v2 double) binds: [B:8:0x001a, B:11:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.rdt.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(int r10) {
        /*
            r9 = this;
            org.json.JSONObject r0 = r9.j()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            com.byazt.rdt.jx.hp()
            r2 = 0
            r4 = 1
            if (r10 != r4) goto L25
            java.lang.String r10 = "value"
            double r5 = r0.optDouble(r10, r2)
            r7 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 < 0) goto L1e
        L1c:
            r5 = r7
            goto L37
        L1e:
            r7 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 > 0) goto L37
            goto L1c
        L25:
            r0 = 2
            if (r10 != r0) goto L56
            com.byazt.rdt.jx r10 = com.byazt.rdt.jx.hp()
            double r5 = r10.l()
            r7 = -4611686018427387904(0xc000000000000000, double:-2.0)
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 != 0) goto L37
            return r1
        L37:
            int r10 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r10 != 0) goto L3c
            return r1
        L3c:
            android.view.Window r10 = r9.hp
            float r10 = r9.hp(r10)
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 != 0) goto L55
            int r10 = r9.w()
            float r10 = (float) r10
            r0 = 1132396544(0x437f0000, float:255.0)
            float r10 = r10 / r0
            double r0 = (double) r10
            double r0 = r0 + r5
            r9.hp(r0)
        L55:
            return r4
        L56:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.iz.l.hp(int):boolean");
    }

    @Override // com.byazt.rdt.hp
    public boolean l() {
        return jx.hp().jx();
    }
}
