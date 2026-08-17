package com.kwad.sdk.core.g;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import androidx.annotation.Nullable;
import com.kwad.sdk.components.DevelopMangerComponents;
import com.kwad.sdk.utils.bk;
import java.util.Random;

/* loaded from: classes4.dex */
public final class d {
    private static float aYd = 9.81f;
    private static double aYe = 0.05d;
    private float aYc;

    @Nullable
    private b aYf;

    @Nullable
    private a aYg;
    private boolean enable;
    private boolean bidirectionalSwitch = false;
    private volatile boolean aXN = true;
    private final bk.b aYa = new bk.b() { // from class: com.kwad.sdk.core.g.d.1
        @Override // com.kwad.sdk.utils.bk.b
        public final void onFailed() {
            if (d.this.aYf != null) {
                d.this.aYf.cj();
            }
        }
    };

    public class a implements SensorEventListener {
        private Random aUi;
        private boolean aYj;
        private final float[] aYi = {0.0f, 0.0f, 9.8f};
        private final float[] aYk = {0.0f, 0.0f, 0.0f};
        boolean aXS = false;
        boolean aXT = false;
        boolean aXU = false;
        boolean aYl = false;
        boolean aYm = false;
        boolean aYn = false;
        private int aYo = 0;

        public a() {
            this.aYj = false;
            if (((DevelopMangerComponents) com.kwad.sdk.components.d.f(DevelopMangerComponents.class)) != null) {
                this.aYj = false;
            }
        }

        private void NN() {
            this.aXS = false;
            this.aXT = false;
            this.aXU = false;
            this.aYl = false;
            this.aYm = false;
            this.aYn = false;
        }

        private void NQ() {
            if (this.aUi == null) {
                this.aUi = new Random();
            }
            if (this.aUi.nextInt(100) == 1) {
                a(this.aYi);
            }
        }

        private void a(float[] fArr) {
            c(fArr);
            float f2 = fArr[0];
            boolean zD = true;
            float f3 = fArr[1];
            float f4 = fArr[2];
            double dAbs = Math.abs(Math.sqrt((f2 * f2) + (f3 * f3) + (f4 * f4)));
            if (b(fArr)) {
                dAbs = Math.abs(dAbs - d.aYd);
            }
            if (d.this.bidirectionalSwitch) {
                dAbs = Math.max(Math.max(Math.abs(f2), Math.abs(f3)), Math.abs(f4));
                zD = d(fArr);
            }
            if (!d.this.aXN || !zD || dAbs < d.this.aYc || d.this.aYf == null) {
                return;
            }
            d.a(d.this, false);
            d.this.aYf.a(dAbs);
        }

        private static boolean b(float[] fArr) {
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            return Math.abs(Math.abs(Math.sqrt((double) (((f2 * f2) + (f3 * f3)) + (f4 * f4)))) - ((double) d.aYd)) <= d.aYe;
        }

        private void c(float[] fArr) {
            float[] fArr2 = this.aYk;
            float f2 = fArr2[0];
            float f3 = (f2 == 0.0f && fArr2[1] == 0.0f && fArr2[2] == 0.0f) ? 1.0f : 0.6f;
            float f4 = 1.0f - f3;
            fArr[0] = (fArr[0] * f3) + (f2 * f4);
            fArr[1] = (fArr[1] * f3) + (fArr2[1] * f4);
            fArr[2] = (f3 * fArr[2]) + (f4 * fArr2[2]);
            System.arraycopy(fArr, 0, fArr2, 0, 3);
        }

        private boolean d(float[] fArr) {
            float f2 = fArr[0];
            if (f2 > 0.0f && !this.aXS) {
                this.aXS = n(f2);
            } else if (f2 < 0.0f && !this.aYl) {
                this.aYl = n(f2);
            }
            float f3 = fArr[1];
            if (f3 > 0.0f && !this.aXT) {
                this.aXT = n(f3);
            } else if (f3 < 0.0f && !this.aYm) {
                this.aYm = n(f3);
            }
            float f4 = fArr[2];
            if (f4 > 0.0f && !this.aXU) {
                this.aXU = n(f4);
            } else if (f4 < 0.0f && !this.aYn) {
                this.aYn = n(f4);
            }
            boolean z2 = this.aXS && this.aYl;
            boolean z3 = this.aXT && this.aYm;
            boolean z4 = this.aXU && this.aYn;
            if (z2 || z3 || z4) {
                this.aYo++;
                NN();
            }
            if (this.aYo <= 2) {
                return false;
            }
            this.aYo = 0;
            return true;
        }

        private boolean n(float f2) {
            return Math.abs(f2) >= d.this.aYc && ((double) Math.abs(f2 - d.aYd)) >= d.aYe;
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            a(sensorEvent.values);
            if (this.aYj) {
                NQ();
            }
        }
    }

    public d(boolean z2, float f2) {
        this.enable = false;
        this.enable = z2;
        if (f2 <= 0.0f) {
            this.aYc = 5.0f;
        } else {
            this.aYc = f2;
        }
    }

    public final synchronized void NJ() {
        this.aXN = true;
    }

    public final void bG(boolean z2) {
        this.bidirectionalSwitch = z2;
    }

    public final void cb(Context context) {
        if (this.enable) {
            if (context == null) {
                com.kwad.sdk.core.d.c.d("ShakeDetector", "startDetect context is null");
                return;
            }
            this.aXN = true;
            if (this.aYg == null) {
                this.aYg = new a();
            }
            bk.Wo().a(1, 2, this.aYg, this.aYa);
        }
    }

    public final synchronized void cc(Context context) {
        if (context != null) {
            if (this.aYg != null) {
                bk.Wo().a(this.aYg);
                this.aYg = null;
            }
        }
    }

    public final void m(float f2) {
        this.aYc = f2;
    }

    public static /* synthetic */ boolean a(d dVar, boolean z2) {
        dVar.aXN = false;
        return false;
    }

    public final void a(@Nullable b bVar) {
        this.aYf = bVar;
    }
}
