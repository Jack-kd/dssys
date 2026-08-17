package com.kwad.sdk.core.g;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.utils.bk;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class c {

    @Nullable
    private com.kwad.sdk.core.g.a aXY;

    @Nullable
    private a aXZ;
    private AdMatrixInfo.RotateInfo rotateInfo;
    private volatile boolean aXN = true;
    private long aXO = 0;
    private double aXP = 9.999999717180685E-10d;
    private double[] aXQ = {0.0d, 0.0d, 0.0d};
    private double[] aXR = {0.0d, 0.0d, 0.0d};
    boolean aXS = false;
    boolean aXT = false;
    boolean aXU = false;
    boolean aXV = false;
    boolean aXW = false;
    boolean aXX = false;
    private final bk.b aYa = new bk.b() { // from class: com.kwad.sdk.core.g.c.1
        @Override // com.kwad.sdk.utils.bk.b
        public final void onFailed() {
            if (c.this.aXY != null) {
                c.this.aXY.ck();
            }
        }
    };

    public class a implements SensorEventListener {
        private a() {
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i2) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            if (c.this.aXO != 0) {
                double d2 = (sensorEvent.timestamp - c.this.aXO) * c.this.aXP;
                double[] dArr = c.this.aXR;
                dArr[0] = dArr[0] + Math.toDegrees(f2 * d2);
                double[] dArr2 = c.this.aXR;
                dArr2[1] = dArr2[1] + Math.toDegrees(f3 * d2);
                double[] dArr3 = c.this.aXR;
                dArr3[2] = dArr3[2] + Math.toDegrees(f4 * d2);
                c.this.NK();
                c.this.NL();
            }
            c.this.aXO = sensorEvent.timestamp;
        }

        public /* synthetic */ a(c cVar, byte b3) {
            this();
        }
    }

    public c(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    private void NI() {
        Arrays.fill(this.aXQ, 0.0d);
        Arrays.fill(this.aXR, 0.0d);
        this.aXO = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void NK() {
        if (this.aXN) {
            if (Math.abs(this.aXR[0]) > Math.abs(this.aXQ[0])) {
                this.aXQ[0] = this.aXR[0];
            }
            if (Math.abs(this.aXR[1]) > Math.abs(this.aXQ[1])) {
                this.aXQ[1] = this.aXR[1];
            }
            if (Math.abs(this.aXR[2]) > Math.abs(this.aXQ[2])) {
                this.aXQ[2] = this.aXR[2];
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void NL() {
        AdMatrixInfo.RotateInfo rotateInfo;
        if (this.aXN && (rotateInfo = this.rotateInfo) != null) {
            try {
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            }
            boolean zC = rotateInfo.bidirectionalSwitch ? c(rotateInfo) : true;
            if (this.aXY != null) {
                if (!a(0, r2.rotateDegree, this.rotateInfo.f31473x.direction)) {
                    if (!a(1, r2.rotateDegree, this.rotateInfo.f31474y.direction)) {
                        if (!a(2, r1.rotateDegree, this.rotateInfo.f31475z.direction)) {
                            return;
                        }
                    }
                }
                if (zC) {
                    this.aXN = false;
                    this.aXY.t(NM());
                }
            }
        }
    }

    private String NM() {
        return "{\"x\": " + this.aXQ[0] + ",\"y\":" + this.aXQ[1] + ",\"z\":" + this.aXQ[2] + "}";
    }

    private void NN() {
        this.aXS = false;
        this.aXT = false;
        this.aXU = false;
        this.aXV = false;
        this.aXW = false;
        this.aXX = false;
    }

    public final synchronized void NJ() {
        NI();
        this.aXN = true;
    }

    public final void cb(Context context) {
        try {
            if (this.rotateInfo.enable && context != null) {
                NI();
                this.aXN = true;
                if (this.aXZ == null) {
                    this.aXZ = new a(this, (byte) 0);
                }
                bk.Wo().a(2, 2, this.aXZ, this.aYa);
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
    }

    public final synchronized void cc(Context context) {
        if (context != null) {
            if (this.aXZ != null) {
                bk.Wo().a(this.aXZ);
                this.aXZ = null;
            }
        }
    }

    private boolean c(AdMatrixInfo.RotateInfo rotateInfo) {
        double d2 = this.aXR[0];
        if (d2 > 0.0d && !this.aXS) {
            this.aXS = a(0, rotateInfo.f31473x.rotateDegree, this.rotateInfo.f31473x.direction);
        } else if (d2 < 0.0d && !this.aXV) {
            this.aXV = a(0, rotateInfo.f31473x.rotateDegree, this.rotateInfo.f31473x.direction);
        }
        double d3 = this.aXR[1];
        if (d3 > 0.0d && !this.aXT) {
            this.aXT = a(1, rotateInfo.f31474y.rotateDegree, this.rotateInfo.f31474y.direction);
        } else if (d3 < 0.0d && !this.aXW) {
            this.aXW = a(1, rotateInfo.f31474y.rotateDegree, this.rotateInfo.f31474y.direction);
        }
        double d4 = this.aXR[2];
        if (d4 > 0.0d && !this.aXU) {
            this.aXU = a(2, rotateInfo.f31475z.rotateDegree, this.rotateInfo.f31475z.direction);
        } else if (d4 < 0.0d && !this.aXX) {
            this.aXX = a(2, rotateInfo.f31475z.rotateDegree, this.rotateInfo.f31475z.direction);
        }
        boolean z2 = (this.aXS && this.aXV) || (this.aXT && this.aXW) || (this.aXU && this.aXX);
        if (z2) {
            NN();
        }
        return z2;
    }

    public final void b(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    public final void a(AdMatrixInfo.RotateInfo rotateInfo) {
        this.rotateInfo = rotateInfo;
    }

    public final void a(@Nullable com.kwad.sdk.core.g.a aVar) {
        this.aXY = aVar;
    }

    private boolean a(int i2, double d2, int i3) {
        if (d2 <= 0.0d || Math.abs(this.aXR[i2]) < d2) {
            return false;
        }
        double d3 = this.aXR[i2];
        return (d3 <= 0.0d || i3 != 1) && (d3 >= 0.0d || i3 != 2);
    }
}
