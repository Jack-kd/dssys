package com.beizi.fusion;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.view.KeyEvent;
import android.view.View;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.interaction.ScopeEulerAngleView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.EulerAngleModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.form.axis.AxisModel;
import com.beizi.fusion.fd;
import com.beizi.fusion.pn;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class t8 extends pn {

    /* renamed from: l, reason: collision with root package name */
    private final Map f16334l;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final double f16335a;

        /* renamed from: b, reason: collision with root package name */
        private final String f16336b;

        /* renamed from: c, reason: collision with root package name */
        private double f16337c;

        private b(String str, String str2) {
            this.f16335a = qo.g(str);
            this.f16336b = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            double dG = qo.g(str);
            if (dG <= 0.0d) {
                dG = this.f16335a;
            }
            this.f16337c = dG;
        }
    }

    public class c implements pn.b {

        /* renamed from: a, reason: collision with root package name */
        private final float f16338a;

        /* renamed from: b, reason: collision with root package name */
        private final b f16339b;

        /* renamed from: c, reason: collision with root package name */
        private final b f16340c;

        /* renamed from: d, reason: collision with root package name */
        private final b f16341d;

        /* renamed from: e, reason: collision with root package name */
        private final String f16342e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f16343f;

        /* renamed from: g, reason: collision with root package name */
        private long f16344g;

        /* renamed from: h, reason: collision with root package name */
        private int f16345h;

        /* renamed from: i, reason: collision with root package name */
        private boolean f16346i;

        /* renamed from: j, reason: collision with root package name */
        private boolean f16347j;

        /* renamed from: k, reason: collision with root package name */
        private long f16348k;

        /* renamed from: l, reason: collision with root package name */
        private double f16349l;

        /* renamed from: m, reason: collision with root package name */
        private double f16350m;

        /* renamed from: n, reason: collision with root package name */
        private double f16351n;

        /* renamed from: o, reason: collision with root package name */
        private float f16352o;

        /* renamed from: p, reason: collision with root package name */
        private float f16353p;

        /* renamed from: q, reason: collision with root package name */
        private float f16354q;

        /* renamed from: r, reason: collision with root package name */
        private float[] f16355r;

        /* renamed from: s, reason: collision with root package name */
        private float[] f16356s;

        /* renamed from: t, reason: collision with root package name */
        private float[] f16357t;

        /* renamed from: u, reason: collision with root package name */
        private long f16358u;

        /* renamed from: v, reason: collision with root package name */
        private long f16359v;

        public class a extends hn {
            public a(int i2, int i3, long j2) {
                super(i2, i3, j2);
            }

            @Override // com.beizi.fusion.hn
            public void a(ValueAnimator valueAnimator) {
                if (c.this.f16345h == 1) {
                    c.this.a(((Integer) valueAnimator.getAnimatedValue()).intValue() / 10.0d);
                }
            }

            @Override // com.beizi.fusion.hn
            public void b(Animator animator) {
                c.this.b();
            }

            @Override // com.beizi.fusion.hn
            public void d(Animator animator) {
                c.this.a(1.0d);
                c cVar = c.this;
                cVar.a(cVar.f16342e);
            }
        }

        private c(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.f16338a = 1.0E-9f;
            this.f16343f = false;
            this.f16346i = false;
            this.f16347j = false;
            this.f16348k = 0L;
            this.f16352o = 0.0f;
            this.f16353p = 0.0f;
            this.f16354q = 0.0f;
            this.f16355r = new float[2];
            this.f16356s = new float[2];
            this.f16357t = new float[2];
            this.f16358u = 0L;
            this.f16359v = 0L;
            b bVar = new b(str, str2);
            this.f16339b = bVar;
            b bVar2 = new b(str3, str4);
            this.f16340c = bVar2;
            b bVar3 = new b(str5, str6);
            this.f16341d = bVar3;
            this.f16342e = str7;
            this.f16349l = bVar.f16335a;
            this.f16350m = bVar2.f16335a;
            this.f16351n = bVar3.f16335a;
        }

        private void b(SensorEvent sensorEvent) {
            if (t8.this.a(sensorEvent, 4).booleanValue()) {
                if (this.f16348k != 0) {
                    float[] fArr = sensorEvent.values;
                    float f2 = fArr[0];
                    float f3 = fArr[1];
                    float f4 = fArr[2];
                    float f5 = (sensorEvent.timestamp - r1) * 1.0E-9f;
                    this.f16352o += (float) Math.toDegrees(f2 * f5);
                    this.f16353p += (float) Math.toDegrees(f3 * f5);
                    this.f16354q += (float) Math.toDegrees(f4 * f5);
                    a(this.f16352o, this.f16355r);
                    a(this.f16353p, this.f16356s);
                    a(this.f16354q, this.f16357t);
                    a(this.f16352o, this.f16353p, this.f16354q);
                    if (a(this.f16349l, this.f16352o, this.f16339b.f16336b, this.f16355r) || a(this.f16350m, this.f16353p, this.f16340c.f16336b, this.f16356s) || a(this.f16351n, this.f16354q, this.f16341d.f16336b, this.f16357t)) {
                        this.f16347j = false;
                        t8.this.f15656k.a(4, this.f16355r[1], this.f16356s[1], this.f16357t[1], 0.0f, System.currentTimeMillis() - this.f16359v);
                        t8.this.j();
                    }
                }
                this.f16348k = sensorEvent.timestamp;
            }
        }

        private void c() {
            if (this.f16343f) {
                return;
            }
            this.f16343f = true;
            long j2 = this.f16344g;
            if (j2 > 0) {
                new a(10, 1, j2).c();
            } else {
                b();
            }
        }

        @Override // com.beizi.fusion.pn.b
        public void a(SensorEvent sensorEvent) {
            if (this.f16359v == 0) {
                this.f16359v = System.currentTimeMillis();
            }
            if (this.f16346i) {
                c();
            }
            if (!this.f16347j) {
                this.f16347j = true;
                a(this.f16339b.f16336b, this.f16340c.f16336b, this.f16341d.f16336b);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f16358u > t8.this.o()) {
                this.f16358u = jCurrentTimeMillis;
                b(sensorEvent);
            }
        }

        @Override // com.beizi.fusion.pn.b
        public void a() {
            this.f16348k = 0L;
            this.f16359v = 0L;
            this.f16355r = new float[2];
            this.f16356s = new float[2];
            this.f16357t = new float[2];
            this.f16352o = 0.0f;
            this.f16353p = 0.0f;
            this.f16354q = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f16349l = this.f16339b.f16335a;
            this.f16350m = this.f16340c.f16335a;
            this.f16351n = this.f16341d.f16335a;
            a("Normal");
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

        private boolean a(double d2, float f2, String str, float[] fArr) {
            if (d2 > 0.0d) {
                if ("2".equals(str)) {
                    return f2 > 0.0f && ((double) Math.abs(f2)) >= d2;
                }
                if ("1".equals(str)) {
                    return f2 < 0.0f && ((double) Math.abs(f2)) >= d2;
                }
                if ("0".equals(str)) {
                    return ((double) Math.abs(f2)) >= d2;
                }
                if ("3".equals(str) && Math.abs(fArr[0]) >= d2 && Math.abs(fArr[1]) >= d2) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j2, int i2) {
            this.f16344g = j2;
            this.f16345h = i2;
            this.f16346i = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2) {
            if ("X".equals(str)) {
                this.f16339b.a(str2);
            }
            if ("Y".equals(str)) {
                this.f16340c.a(str2);
            }
            if ("Z".equals(str)) {
                this.f16341d.a(str2);
            }
        }

        private void a(float f2, float f3, float f4) {
            View view = t8.this.f15869d;
            if (view == null || !(view instanceof ScopeEulerAngleView)) {
                return;
            }
            double[] dArr = {a(this.f16349l, f2, this.f16339b.f16336b, false), a(this.f16350m, f3, this.f16340c.f16336b, true), a(this.f16351n, f4, this.f16341d.f16336b, false)};
            Arrays.sort(dArr);
            ((ScopeEulerAngleView) t8.this.f15869d).setCurrentProgress(dArr[2]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            KeyEvent.Callback callback = t8.this.f15869d;
            if (callback == null || !(callback instanceof le)) {
                return;
            }
            ((le) callback).updateByInteractiveStatus(str);
        }

        private void a(String str, String str2, String str3) {
            View view = t8.this.f15869d;
            if (view == null || !(view instanceof ScopeEulerAngleView)) {
                return;
            }
            ((ScopeEulerAngleView) view).startInteractionAnimation(str, str2, str3);
        }

        private double a(double d2, float f2, String str, boolean z2) {
            if (d2 <= 0.0d || ((!"2".equals(str) || (!z2 ? f2 > 0.0f : f2 < 0.0f)) && ((!"1".equals(str) || (!z2 ? f2 < 0.0f : f2 > 0.0f)) && !"0".equals(str)))) {
                return 0.0d;
            }
            return (Math.abs(f2) * 100.0f) / d2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(double d2) {
            this.f16349l = this.f16339b.f16335a + ((this.f16339b.f16337c - this.f16339b.f16335a) * d2);
            this.f16350m = this.f16340c.f16335a + ((this.f16340c.f16337c - this.f16340c.f16335a) * d2);
            this.f16351n = this.f16341d.f16335a + ((this.f16341d.f16337c - this.f16341d.f16335a) * d2);
        }
    }

    public t8(Context context) {
        super(context);
        this.f16334l = new HashMap();
    }

    private c a(EulerAngleModel eulerAngleModel, String str) {
        if (eulerAngleModel == null) {
            return null;
        }
        AxisModel xAxis = eulerAngleModel.getXAxis();
        AxisModel yAxis = eulerAngleModel.getYAxis();
        AxisModel zAxis = eulerAngleModel.getZAxis();
        return "Cooling".equalsIgnoreCase(str) ? new c(a(xAxis, str), b(xAxis, str), a(yAxis, str), b(yAxis, str), a(zAxis, str), b(zAxis, str), str) : new c(a(xAxis, "Normal"), b(xAxis, "Normal"), a(yAxis, "Normal"), b(yAxis, "Normal"), a(zAxis, "Normal"), b(zAxis, "Normal"), str);
    }

    private String b(AxisModel axisModel, String str) {
        return (axisModel == null || axisModel.getDirection() == null) ? "" : "Cooling".equalsIgnoreCase(str) ? axisModel.getDirection().getCool() : axisModel.getDirection().getNormal();
    }

    private void l() {
        c cVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (cVarA = a(interactionModel.getEulerAngle(), "Cooling")) == null) {
            return;
        }
        this.f16334l.put("Cooling", cVarA);
    }

    private void m() {
        c cVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (cVarA = a(interactionModel.getEulerAngle(), "Normal")) == null) {
            return;
        }
        this.f16334l.put("Normal", cVarA);
    }

    private void n() {
        c cVarA;
        InteractionModel interactionModel = this.f15871f;
        if (interactionModel == null || (cVarA = a(interactionModel.getEulerAngle(), "Passive")) == null) {
            return;
        }
        EulerAngleModel eulerAngle = this.f15871f.getEulerAngle();
        AxisModel xAxis = eulerAngle.getXAxis();
        AxisModel yAxis = eulerAngle.getYAxis();
        AxisModel zAxis = eulerAngle.getZAxis();
        cVarA.a("X", a(xAxis, "Passive"));
        cVarA.a("Y", a(yAxis, "Passive"));
        cVarA.a("Z", a(zAxis, "Passive"));
        cVarA.a(this.f15871f.getPassivationTime(), this.f15871f.getPassivationType());
        this.f16334l.put("Passive", cVarA);
    }

    @Override // com.beizi.fusion.r3
    public void e() {
        this.f16334l.clear();
        m();
        n();
        l();
    }

    @Override // com.beizi.fusion.pn
    public fd.a f() {
        return fd.a.EULER_INTERACTIVE_TRIGGER;
    }

    @Override // com.beizi.fusion.pn
    public Sensor[] g() {
        return new Sensor[0];
    }

    @Override // com.beizi.fusion.pn
    public Sensor h() {
        SensorManager sensorManager = this.f15654i;
        if (sensorManager != null) {
            return sensorManager.getDefaultSensor(4);
        }
        return null;
    }

    @Override // com.beizi.fusion.pn
    public pn.b i() {
        if (this.f15871f == null) {
            return null;
        }
        no noVar = (no) wp.a().b(this.f15867b);
        return (noVar.a(this.f15871f.getProtectTime()) || noVar.a(this.f15872g, this.f15871f.getCoolTime())) ? (pn.b) this.f16334l.get("Cooling") : this.f15871f.getPassivationTime() > 0 ? (pn.b) this.f16334l.get("Passive") : (pn.b) this.f16334l.get("Normal");
    }

    @Override // com.beizi.fusion.pn
    public void j() {
        super.j();
    }

    public long o() {
        return 50L;
    }

    private String a(AxisModel axisModel, String str) {
        if (axisModel != null && axisModel.getAngle() != null) {
            if ("Cooling".equalsIgnoreCase(str)) {
                return axisModel.getAngle().getCool();
            }
            if ("Normal".equalsIgnoreCase(str)) {
                return axisModel.getAngle().getNormal();
            }
            return axisModel.getAngle().getPassivation();
        }
        return "";
    }
}
