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
public final class c1 extends pn {

    /* renamed from: l, reason: collision with root package name */
    private final Map f13176l;

    public class b implements pn.b {

        /* renamed from: a, reason: collision with root package name */
        private final int f13177a;

        /* renamed from: b, reason: collision with root package name */
        private final String f13178b;

        /* renamed from: c, reason: collision with root package name */
        private final double f13179c;

        /* renamed from: d, reason: collision with root package name */
        private final double f13180d;

        /* renamed from: e, reason: collision with root package name */
        private final String f13181e;

        /* renamed from: f, reason: collision with root package name */
        private double f13182f;

        /* renamed from: g, reason: collision with root package name */
        private double f13183g;

        /* renamed from: h, reason: collision with root package name */
        private int f13184h;

        /* renamed from: i, reason: collision with root package name */
        private double f13185i;

        /* renamed from: j, reason: collision with root package name */
        private double f13186j;

        /* renamed from: k, reason: collision with root package name */
        private int f13187k;

        /* renamed from: l, reason: collision with root package name */
        private boolean f13188l;

        /* renamed from: m, reason: collision with root package name */
        private boolean f13189m;

        /* renamed from: n, reason: collision with root package name */
        private long f13190n;

        /* renamed from: o, reason: collision with root package name */
        private int f13191o;

        /* renamed from: p, reason: collision with root package name */
        private int f13192p;

        /* renamed from: q, reason: collision with root package name */
        private double f13193q;

        /* renamed from: r, reason: collision with root package name */
        private c f13194r;

        /* renamed from: s, reason: collision with root package name */
        private long f13195s;

        /* renamed from: t, reason: collision with root package name */
        private float[] f13196t;

        /* renamed from: u, reason: collision with root package name */
        private float[] f13197u;

        /* renamed from: v, reason: collision with root package name */
        private float[] f13198v;

        /* renamed from: w, reason: collision with root package name */
        private float[] f13199w;

        /* renamed from: x, reason: collision with root package name */
        private long f13200x;

        public class a extends hn {
            public a(int i2, int i3, long j2) {
                super(i2, i3, j2);
            }

            @Override // com.beizi.fusion.hn
            public void a(ValueAnimator valueAnimator) {
                if (b.this.f13191o == 1) {
                    b.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue() / 10.0d);
                }
            }

            @Override // com.beizi.fusion.hn
            public void b(Animator animator) {
                b.this.f13192p = 0;
                b.this.b();
            }

            @Override // com.beizi.fusion.hn
            public void d(Animator animator) {
                b.this.f13192p = 0;
                b.this.a(1.0d);
                b bVar = b.this;
                bVar.a(bVar.f13181e);
            }
        }

        private void d() {
            View view = c1.this.f15869d;
            if (view == null || !(view instanceof ScopeShakeView)) {
                return;
            }
            ((ScopeShakeView) view).setMaxProgress(this.f13187k);
            ((ScopeShakeView) c1.this.f15869d).setProgress(this.f13192p);
        }

        private b(double d2, double d3, int i2, String str, String str2) {
            this.f13188l = false;
            this.f13189m = false;
            this.f13192p = 0;
            this.f13193q = 0.0d;
            this.f13194r = c.SHAKE_STATUS_STANDBY;
            this.f13195s = 0L;
            this.f13196t = new float[2];
            this.f13197u = new float[2];
            this.f13198v = new float[2];
            this.f13199w = new float[2];
            this.f13200x = 0L;
            this.f13181e = str2;
            this.f13180d = d2;
            this.f13179c = d3;
            this.f13177a = i2;
            this.f13178b = str;
            this.f13187k = i2;
            this.f13185i = d2;
            this.f13186j = d3;
        }

        private void b(SensorEvent sensorEvent) {
            if (c1.this.a(sensorEvent, 1).booleanValue()) {
                float[] fArr = sensorEvent.values;
                float f2 = fArr[0];
                float f3 = fArr[1];
                float f4 = fArr[2];
                double dA = a(f2, f3, f4, "XYZ");
                a(f2, this.f13196t);
                a(f3, this.f13197u);
                a(f4, this.f13198v);
                a((float) dA, this.f13199w);
                double dA2 = a(f2, f3, f4, this.f13178b);
                if (dA < 1.1d || this.f13193q == 0.0d) {
                    this.f13193q = Math.min(dA2, 1.0d);
                }
                double d2 = dA2 - this.f13193q;
                double d3 = this.f13185i - 1.0d;
                double d4 = this.f13186j - 1.0d;
                if (d2 >= d3) {
                    this.f13194r = c.SHAKE_STATUS_START;
                    return;
                }
                if (d2 > d4 || this.f13194r != c.SHAKE_STATUS_START) {
                    return;
                }
                this.f13192p++;
                d();
                this.f13194r = c.SHAKE_STATUS_STANDBY;
                int i2 = this.f13187k;
                if (i2 <= 0 || this.f13192p < i2) {
                    return;
                }
                c1.this.f15656k.a(1, a(this.f13196t), a(this.f13197u), a(this.f13198v), this.f13199w[1], System.currentTimeMillis() - this.f13200x);
                c1.this.j();
            }
        }

        private void c() {
            if (this.f13189m) {
                return;
            }
            this.f13189m = true;
            long j2 = this.f13190n;
            if (j2 > 0) {
                new a(10, 1, j2).c();
            } else {
                b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2, double d3, int i2) {
            this.f13182f = d2;
            this.f13183g = d3;
            this.f13184h = i2;
            if (i2 <= 0) {
                i2 = this.f13177a;
            }
            this.f13187k = i2;
            if (d2 <= 0.0d) {
                d2 = this.f13180d;
            }
            this.f13185i = d2;
            if (d3 <= 0.0d) {
                d3 = this.f13179c;
            }
            this.f13186j = d3;
            this.f13188l = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j2, int i2) {
            this.f13190n = j2;
            this.f13191o = i2;
        }

        @Override // com.beizi.fusion.pn.b
        public void a(SensorEvent sensorEvent) {
            if (this.f13200x == 0) {
                this.f13200x = System.currentTimeMillis();
            }
            if (this.f13188l) {
                c();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f13195s > c1.this.o()) {
                this.f13195s = jCurrentTimeMillis;
                b(sensorEvent);
            }
        }

        @Override // com.beizi.fusion.pn.b
        public void a() {
            this.f13200x = 0L;
        }

        private float a(float[] fArr) {
            return Math.max(Math.abs(fArr[0]), Math.abs(fArr[1]));
        }

        private void a(float f2, float[] fArr) {
            if (f2 > fArr[1]) {
                fArr[1] = f2;
            }
            if (f2 < fArr[0]) {
                fArr[0] = f2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f13185i = this.f13180d;
            this.f13186j = this.f13179c;
            this.f13187k = this.f13177a;
            a("Normal");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            KeyEvent.Callback callback = c1.this.f15869d;
            if (callback == null || !(callback instanceof le)) {
                return;
            }
            ((le) callback).updateByInteractiveStatus(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2) {
            double d3 = this.f13180d;
            this.f13185i = d3 + ((this.f13182f - d3) * d2);
            double d4 = this.f13179c;
            this.f13186j = d4 + ((this.f13183g - d4) * d2);
            this.f13187k = this.f13184h;
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

    public enum c {
        SHAKE_STATUS_START,
        SHAKE_STATUS_STANDBY
    }

    public c1(Context context) {
        super(context);
        this.f13176l = new HashMap();
    }

    private b a(ShakeModel shakeModel, String str) {
        if (shakeModel == null) {
            return null;
        }
        StatusParamModel startAmplitude = shakeModel.getStartAmplitude();
        StatusParamModel endAmplitude = shakeModel.getEndAmplitude();
        StatusParamModel count = shakeModel.getCount();
        StatusParamModel axial = shakeModel.getAxial();
        return new b(startAmplitude != null ? qo.g(a(startAmplitude, str)) : -1.0d, endAmplitude != null ? qo.g(a(endAmplitude, str)) : -1.0d, count != null ? qo.i(a(count, str)) : 0, axial != null ? a(axial, str) : "", str);
    }

    private void l() {
        b bVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (bVarA = a(interactionModel.getShake(), "Cooling")) == null) {
            return;
        }
        this.f13176l.put("Cooling", bVarA);
    }

    private void m() {
        b bVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (bVarA = a(interactionModel.getShake(), "Normal")) == null) {
            return;
        }
        this.f13176l.put("Normal", bVarA);
    }

    private void n() {
        ShakeModel shake;
        b bVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (bVarA = a((shake = interactionModel.getShake()), "Passive")) == null) {
            return;
        }
        StatusParamModel startAmplitude = shake.getStartAmplitude();
        StatusParamModel endAmplitude = shake.getEndAmplitude();
        StatusParamModel count = shake.getCount();
        bVarA.a(startAmplitude != null ? qo.a(startAmplitude.getPassivation(), -1.0d) : -1.0d, endAmplitude != null ? qo.a(endAmplitude.getPassivation(), -1.0d) : -1.0d, count != null ? qo.i(count.getPassivation()) : 0);
        bVarA.a(this.f15871f.getPassivationTime(), this.f15871f.getPassivationType());
        this.f13176l.put("Passive", bVarA);
    }

    @Override // com.beizi.fusion.r3
    public void e() {
        this.f13176l.clear();
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
        return new Sensor[0];
    }

    @Override // com.beizi.fusion.pn
    public Sensor h() {
        SensorManager sensorManager = this.f15654i;
        if (sensorManager != null) {
            return sensorManager.getDefaultSensor(1);
        }
        return null;
    }

    @Override // com.beizi.fusion.pn
    public pn.b i() {
        if (this.f15871f == null) {
            return null;
        }
        no noVar = (no) wp.a().b(this.f15867b);
        return (noVar.a(this.f15871f.getProtectTime()) || noVar.a(this.f15872g, this.f15871f.getCoolTime())) ? (pn.b) this.f13176l.get("Cooling") : this.f15871f.getPassivationTime() > 0 ? (pn.b) this.f13176l.get("Passive") : (pn.b) this.f13176l.get("Normal");
    }

    @Override // com.beizi.fusion.pn
    public void j() {
        super.j();
    }

    public long o() {
        return 50L;
    }

    private String a(StatusParamModel statusParamModel, String str) {
        if ("Cooling".equalsIgnoreCase(str)) {
            return statusParamModel.getCool();
        }
        return statusParamModel.getNormal();
    }
}
