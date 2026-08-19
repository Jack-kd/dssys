package com.beizi.fusion;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.view.KeyEvent;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeShakeView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.ShakeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.par.StatusParamModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.pn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class bi extends pn {

    /* renamed from: l, reason: collision with root package name */
    private final Map f13078l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f13079m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f13080n;

    /* renamed from: o, reason: collision with root package name */
    private float[] f13081o;

    /* renamed from: p, reason: collision with root package name */
    private float[] f13082p;

    /* renamed from: q, reason: collision with root package name */
    private float[] f13083q;

    /* renamed from: r, reason: collision with root package name */
    private float[] f13084r;

    /* renamed from: s, reason: collision with root package name */
    private float[] f13085s;

    /* renamed from: t, reason: collision with root package name */
    private float[] f13086t;

    /* renamed from: u, reason: collision with root package name */
    private float[] f13087u;

    /* renamed from: v, reason: collision with root package name */
    private long f13088v;

    public class b {

        /* renamed from: a, reason: collision with root package name */
        private final int f13089a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13090b;

        /* renamed from: c, reason: collision with root package name */
        private final double f13091c;

        /* renamed from: d, reason: collision with root package name */
        private final double f13092d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13093e;

        /* renamed from: f, reason: collision with root package name */
        private double f13094f;

        /* renamed from: g, reason: collision with root package name */
        private double f13095g;

        /* renamed from: h, reason: collision with root package name */
        private int f13096h;

        /* renamed from: i, reason: collision with root package name */
        private double f13097i;

        /* renamed from: j, reason: collision with root package name */
        private double f13098j;

        /* renamed from: k, reason: collision with root package name */
        private int f13099k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f13100l;

        /* renamed from: m, reason: collision with root package name */
        private boolean f13101m;

        /* renamed from: n, reason: collision with root package name */
        private long f13102n;

        /* renamed from: o, reason: collision with root package name */
        private int f13103o;

        /* renamed from: p, reason: collision with root package name */
        private int f13104p;

        /* renamed from: q, reason: collision with root package name */
        private double f13105q;

        /* renamed from: r, reason: collision with root package name */
        private e f13106r;

        /* renamed from: s, reason: collision with root package name */
        private long f13107s;

        public class a extends hn {
            public a(int i2, int i3, long j2) {
                super(i2, i3, j2);
            }

            @Override // com.beizi.fusion.hn
            public void a(ValueAnimator valueAnimator) {
                if (b.this.f13103o == 1) {
                    b.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue() / 10.0d);
                }
            }

            @Override // com.beizi.fusion.hn
            public void b(Animator animator) {
                b.this.f13104p = 0;
                b.this.a();
            }

            @Override // com.beizi.fusion.hn
            public void d(Animator animator) {
                b.this.f13104p = 0;
                b.this.a(1.0d);
                b bVar = b.this;
                bVar.a(bVar.f13093e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
        }

        private b(double d2, double d3, int i2, String str, String str2) {
            this.f13100l = false;
            this.f13101m = false;
            this.f13104p = 0;
            this.f13105q = 0.0d;
            this.f13106r = e.SHAKE_STATUS_STANDBY;
            this.f13107s = 0L;
            this.f13093e = str2;
            this.f13092d = d2;
            this.f13091c = d3;
            this.f13089a = i2;
            this.f13090b = str;
            this.f13099k = i2;
            this.f13097i = d2;
            this.f13098j = d3;
        }

        private void c() {
            if (this.f13101m) {
                return;
            }
            this.f13101m = true;
            long j2 = this.f13102n;
            if (j2 > 0) {
                new a(10, 1, j2).c();
            } else {
                a();
            }
        }

        private void d() {
            View view = bi.this.f15869d;
            if (view == null || !(view instanceof ScopeShakeView)) {
                return;
            }
            ((ScopeShakeView) view).setMaxProgress(this.f13099k);
            ((ScopeShakeView) bi.this.f15869d).setProgress(this.f13104p);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(SensorEvent sensorEvent) {
            if (this.f13100l) {
                c();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f13107s > bi.this.o()) {
                this.f13107s = jCurrentTimeMillis;
                a(sensorEvent);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2, double d3, int i2) {
            this.f13094f = d2;
            this.f13095g = d3;
            this.f13096h = i2;
            if (i2 <= 0) {
                i2 = this.f13089a;
            }
            this.f13099k = i2;
            if (d2 <= 0.0d) {
                d2 = this.f13092d;
            }
            this.f13097i = d2;
            if (d3 <= 0.0d) {
                d3 = this.f13091c;
            }
            this.f13098j = d3;
            this.f13100l = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j2, int i2) {
            this.f13102n = j2;
            this.f13103o = i2;
        }

        private void a(float f2, float[] fArr) {
            if (f2 > fArr[1]) {
                fArr[1] = f2;
            }
            if (f2 < fArr[0]) {
                fArr[0] = f2;
            }
        }

        private void a(SensorEvent sensorEvent) {
            if (bi.this.a(sensorEvent, 1).booleanValue()) {
                float[] fArr = sensorEvent.values;
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                double dA = a(f2, f3, f4, "XYZ");
                a(f2, bi.this.f13084r);
                a(f3, bi.this.f13085s);
                a(f4, bi.this.f13086t);
                a((float) dA, bi.this.f13087u);
                double dA2 = a(f2, f3, f4, this.f13090b);
                if (dA < 1.1d || this.f13105q == 0.0d) {
                    this.f13105q = Math.min(dA2, 1.0d);
                }
                double d2 = dA2 - this.f13105q;
                double d3 = this.f13097i - 1.0d;
                double d4 = this.f13098j - 1.0d;
                if (d2 >= d3) {
                    this.f13106r = e.SHAKE_STATUS_START;
                    return;
                }
                if (d2 > d4 || this.f13106r != e.SHAKE_STATUS_START) {
                    return;
                }
                this.f13104p++;
                d();
                this.f13106r = e.SHAKE_STATUS_STANDBY;
                int i2 = this.f13099k;
                if (i2 <= 0 || this.f13104p < i2) {
                    return;
                }
                bi.this.f13079m = true;
                bi.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            KeyEvent.Callback callback = bi.this.f15869d;
            if (callback == null || !(callback instanceof le)) {
                return;
            }
            ((le) callback).updateByInteractiveStatus(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f13097i = this.f13092d;
            this.f13098j = this.f13091c;
            this.f13099k = this.f13089a;
            a("Normal");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2) {
            double d3 = this.f13092d;
            this.f13097i = d3 + ((this.f13094f - d3) * d2);
            double d4 = this.f13091c;
            this.f13098j = d4 + ((this.f13095g - d4) * d2);
            this.f13099k = this.f13096h;
        }

        private double a(float f2, float f3, float f4, String str) {
            String upperCase = str.toUpperCase();
            double dPow = upperCase.contains("X") ? 0.0d + Math.pow(f2 / 9.80665f, 2.0d) : 0.0d;
            if (upperCase.contains("Y")) {
                dPow += Math.pow(f3 / 9.80665f, 2.0d);
            }
            if (upperCase.contains("Z")) {
                dPow += Math.pow(f4 / 9.80665f, 2.0d);
            }
            return Math.sqrt(dPow);
        }
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        private final float f13110a;

        /* renamed from: b, reason: collision with root package name */
        private final int f13111b;

        /* renamed from: c, reason: collision with root package name */
        private float f13112c;

        /* renamed from: d, reason: collision with root package name */
        private float f13113d;

        /* renamed from: e, reason: collision with root package name */
        private float f13114e;

        /* renamed from: f, reason: collision with root package name */
        private float f13115f;

        /* renamed from: g, reason: collision with root package name */
        private long f13116g;

        /* renamed from: h, reason: collision with root package name */
        private int f13117h;

        /* renamed from: i, reason: collision with root package name */
        private int f13118i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f13119j;

        /* renamed from: k, reason: collision with root package name */
        private boolean f13120k;

        /* renamed from: l, reason: collision with root package name */
        private int f13121l;

        /* renamed from: m, reason: collision with root package name */
        private long f13122m;

        public class a extends hn {
            public a(int i2, int i3, long j2) {
                super(i2, i3, j2);
            }

            @Override // com.beizi.fusion.hn
            public void a(ValueAnimator valueAnimator) {
                if (c.this.f13117h == 1) {
                    c.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue() / 10.0d);
                }
            }

            @Override // com.beizi.fusion.hn
            public void b(Animator animator) {
                c.this.a();
            }

            @Override // com.beizi.fusion.hn
            public void d(Animator animator) {
                c.this.a(1.0d);
            }
        }

        private c(int i2) {
            this.f13110a = 1.0E-9f;
            this.f13113d = 0.0f;
            this.f13114e = 0.0f;
            this.f13115f = 0.0f;
            this.f13122m = 0L;
            this.f13111b = i2;
            this.f13121l = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(SensorEvent sensorEvent) {
            if (this.f13119j) {
                c();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f13122m > bi.this.o()) {
                this.f13122m = jCurrentTimeMillis;
                a(sensorEvent);
            }
        }

        private void c() {
            if (this.f13120k) {
                return;
            }
            this.f13120k = true;
            long j2 = this.f13116g;
            if (j2 > 0) {
                new a(10, 1, j2).c();
            } else {
                a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2) {
            this.f13121l = (int) (this.f13111b + ((this.f13118i - r0) * d2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f13121l = this.f13111b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i2) {
            this.f13119j = true;
            this.f13118i = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f13112c = 0.0f;
            bi.this.f13081o = new float[2];
            bi.this.f13082p = new float[2];
            bi.this.f13083q = new float[2];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j2, int i2) {
            this.f13116g = j2;
            this.f13117h = i2;
        }

        private void a(SensorEvent sensorEvent) {
            if (bi.this.a(sensorEvent, 4).booleanValue()) {
                float f2 = this.f13112c;
                if (f2 != 0.0f) {
                    float[] fArr = sensorEvent.values;
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float f6 = (sensorEvent.timestamp - f2) * 1.0E-9f;
                    this.f13113d += (float) Math.toDegrees(f3 * f6);
                    this.f13114e += (float) Math.toDegrees(f4 * f6);
                    this.f13115f += (float) Math.toDegrees(f5 * f6);
                    a(this.f13113d, bi.this.f13081o);
                    a(this.f13114e, bi.this.f13082p);
                    a(this.f13115f, bi.this.f13083q);
                    if (a(bi.this.f13081o) || a(bi.this.f13082p) || a(bi.this.f13083q)) {
                        bi.this.f13080n = true;
                        bi.this.j();
                    }
                }
                this.f13112c = sensorEvent.timestamp;
            }
        }

        private void a(float f2, float[] fArr) {
            if (f2 > 0.0f) {
                if (f2 > fArr[1]) {
                    fArr[1] = f2;
                }
            } else if (f2 < fArr[0]) {
                fArr[0] = f2;
            }
        }

        private boolean a(float[] fArr) {
            return Math.abs(fArr[0]) >= ((float) this.f13121l) && Math.abs(fArr[1]) >= ((float) this.f13121l);
        }
    }

    public class d implements pn.b {

        /* renamed from: a, reason: collision with root package name */
        private final b f13125a;

        /* renamed from: b, reason: collision with root package name */
        private final c f13126b;

        private d(double d2, double d3, int i2, String str, String str2, int i3) {
            this.f13125a = new b(d2, d3, i2, str, str2);
            this.f13126b = new c(i3);
        }

        @Override // com.beizi.fusion.pn.b
        public void a(SensorEvent sensorEvent) {
            if (bi.this.f13088v == 0) {
                bi.this.f13088v = System.currentTimeMillis();
            }
            if (bi.this.a(sensorEvent, 4).booleanValue()) {
                this.f13126b.b(sensorEvent);
            }
            if (bi.this.a(sensorEvent, 1).booleanValue()) {
                this.f13125a.b(sensorEvent);
            }
        }

        @Override // com.beizi.fusion.pn.b
        public void a() {
            bi.this.f13079m = false;
            bi.this.f13080n = false;
            bi.this.f13088v = 0L;
            this.f13125a.b();
            this.f13126b.b();
        }
    }

    public enum e {
        SHAKE_STATUS_START,
        SHAKE_STATUS_STANDBY
    }

    public bi(Context context) {
        super(context);
        this.f13078l = new HashMap();
        this.f13079m = false;
        this.f13080n = false;
        this.f13081o = new float[2];
        this.f13082p = new float[2];
        this.f13083q = new float[2];
        this.f13084r = new float[2];
        this.f13085s = new float[2];
        this.f13086t = new float[2];
        this.f13087u = new float[2];
        this.f13088v = 0L;
    }

    private void l() {
        d dVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (dVarA = a(interactionModel.getShake(), "Cooling")) == null) {
            return;
        }
        this.f13078l.put("Cooling", dVarA);
    }

    private void m() {
        d dVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (dVarA = a(interactionModel.getShake(), "Normal")) == null) {
            return;
        }
        this.f13078l.put("Normal", dVarA);
    }

    private void n() {
        ShakeModel shake;
        d dVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (dVarA = a((shake = interactionModel.getShake()), "Passive")) == null) {
            return;
        }
        StatusParamModel startAmplitude = shake.getStartAmplitude();
        StatusParamModel endAmplitude = shake.getEndAmplitude();
        StatusParamModel count = shake.getCount();
        StatusParamModel regulatoryAngle = shake.getRegulatoryAngle();
        double dA = startAmplitude != null ? qo.a(startAmplitude.getPassivation(), -1.0d) : -1.0d;
        double dA2 = endAmplitude != null ? qo.a(endAmplitude.getPassivation(), -1.0d) : -1.0d;
        int i2 = count != null ? qo.i(count.getPassivation()) : 0;
        int i3 = regulatoryAngle != null ? qo.i(regulatoryAngle.getPassivation()) : 0;
        dVarA.f13125a.a(this.f15871f.getPassivationTime(), this.f15871f.getPassivationType());
        dVarA.f13125a.a(dA, dA2, i2);
        dVarA.f13126b.a(this.f15871f.getPassivationTime(), this.f15871f.getPassivationType());
        dVarA.f13126b.a(i3);
        this.f13078l.put("Passive", dVarA);
    }

    @Override // com.beizi.fusion.pn
    public pn.b i() {
        if (this.f15871f == null) {
            return null;
        }
        no noVar = (no) wp.a().b(this.f15867b);
        return (noVar.a(this.f15871f.getProtectTime()) || noVar.a(this.f15872g, this.f15871f.getCoolTime())) ? (pn.b) this.f13078l.get("Cooling") : this.f15871f.getPassivationTime() > 0 ? (pn.b) this.f13078l.get("Passive") : (pn.b) this.f13078l.get("Normal");
    }

    @Override // com.beizi.fusion.pn
    public void j() {
        if (this.f13079m && this.f13080n) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f13088v;
            this.f15656k.a(1, a(this.f13084r), a(this.f13085s), a(this.f13086t), this.f13087u[1], jCurrentTimeMillis);
            ze zeVar = this.f15656k;
            float f2 = this.f13081o[1];
            float f3 = this.f13082p[1];
            zeVar.a(4, f2, f3, f3, 0.0f, jCurrentTimeMillis);
            super.j();
        }
    }

    public long o() {
        return 50L;
    }

    @Override // com.beizi.fusion.r3
    public void e() {
        this.f13078l.clear();
        m();
        n();
        l();
    }

    @Override // com.beizi.fusion.pn
    public fd.a f() {
        return fd.a.SHAKE_INTERACTIVE_TRIGGER;
    }

    @Override // com.beizi.fusion.pn
    public Sensor[] g() {
        SensorManager sensorManager = this.f15654i;
        if (sensorManager == null) {
            return null;
        }
        Sensor defaultSensor = sensorManager.getDefaultSensor(4);
        if (defaultSensor != null) {
            return new Sensor[]{defaultSensor};
        }
        this.f13080n = true;
        return null;
    }

    @Override // com.beizi.fusion.pn
    public Sensor h() {
        SensorManager sensorManager = this.f15654i;
        if (sensorManager != null) {
            return sensorManager.getDefaultSensor(1);
        }
        return null;
    }

    private d a(ShakeModel shakeModel, String str) {
        if (shakeModel == null) {
            return null;
        }
        StatusParamModel startAmplitude = shakeModel.getStartAmplitude();
        StatusParamModel endAmplitude = shakeModel.getEndAmplitude();
        StatusParamModel count = shakeModel.getCount();
        StatusParamModel axial = shakeModel.getAxial();
        StatusParamModel regulatoryAngle = shakeModel.getRegulatoryAngle();
        return new d(startAmplitude != null ? qo.g(a(startAmplitude, str)) : -1.0d, endAmplitude != null ? qo.g(a(endAmplitude, str)) : -1.0d, count != null ? qo.i(a(count, str)) : 0, axial != null ? a(axial, str) : "", str, regulatoryAngle != null ? qo.i(a(regulatoryAngle, str)) : 0);
    }

    private String a(StatusParamModel statusParamModel, String str) {
        if ("Cooling".equalsIgnoreCase(str)) {
            return statusParamModel.getCool();
        }
        return statusParamModel.getNormal();
    }

    private float a(float[] fArr) {
        return Math.max(Math.abs(fArr[0]), Math.abs(fArr[1]));
    }
}
