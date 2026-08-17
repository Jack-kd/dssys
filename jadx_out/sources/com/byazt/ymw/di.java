package com.byazt.ymw;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 68, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS})
/* loaded from: classes3.dex */
public class di implements SensorEventListener {
    public static o an;
    public float as;

    /* renamed from: b, reason: collision with root package name */
    public int f28079b;
    public volatile long eb;
    public int ec;
    public gu gu;

    /* renamed from: j, reason: collision with root package name */
    public float f28083j;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public Sensor f28084k;

    /* renamed from: l, reason: collision with root package name */
    public volatile long f28085l;
    public float mp;

    /* renamed from: o, reason: collision with root package name */
    public float f28089o;
    public int pc;
    public Context qu;

    /* renamed from: r, reason: collision with root package name */
    public JSONObject f28091r;
    public boolean rv;
    public jx su;

    /* renamed from: u, reason: collision with root package name */
    public Sensor f28093u;

    /* renamed from: v, reason: collision with root package name */
    public Sensor f28094v;
    public float vv;

    /* renamed from: w, reason: collision with root package name */
    public float f28095w;
    public float xh;
    public Sensor xs;
    public final long hp = 2000;

    /* renamed from: a, reason: collision with root package name */
    public boolean f28078a = false;

    /* renamed from: s, reason: collision with root package name */
    public float f28092s = 13.0f;

    /* renamed from: q, reason: collision with root package name */
    public float f28090q = 50.0f;

    /* renamed from: e, reason: collision with root package name */
    public int f28081e = 0;
    public hp jl = null;
    public l zy = null;
    public final long sz = 500;

    /* renamed from: n, reason: collision with root package name */
    public volatile long f28088n = 0;
    public volatile boolean ns = false;
    public volatile boolean cx = false;
    public final float di = 1.0E-9f;

    /* renamed from: d, reason: collision with root package name */
    public float[] f28080d = new float[3];
    public long wv = 0;
    public float hq = 0.0f;
    public float ud = 4.0f;
    public float nu = 0.0f;
    public float[] dy = new float[3];
    public final float lv = 0.0f;
    public boolean pu = false;
    public boolean ky = false;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f28087ms = false;
    public boolean kg = false;

    /* renamed from: m, reason: collision with root package name */
    public int f28086m = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f28082f = 0;
    public int yr = 0;
    public int rz = 0;
    public int nd = 0;
    public int hd = 0;
    public boolean zx = false;

    /* renamed from: y, reason: collision with root package name */
    public int f28096y = 0;
    public int vq = 0;
    public float ea = 0.0f;

    public interface hp {
        void hp(int i2);
    }

    public interface jx {
        void hp();
    }

    public interface l {
        void hp(float f2, float f3, float f4);
    }

    public di(Context context, int i2, boolean z2) {
        this.gu = null;
        this.rv = z2;
        this.f28079b = i2;
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.qu = applicationContext;
        if (applicationContext != null && z2) {
            this.gu = w.hp(context);
        }
    }

    private int a(float f2) {
        return f2 < 0.0f ? 1 : 2;
    }

    private void e() {
        b.hp().jx(this.pc);
    }

    private void eb() {
        this.f28086m = 0;
        this.f28082f = 0;
        this.yr = 0;
    }

    private int getType() {
        return this.f28079b == 2 ? 2 : 1;
    }

    private float hp(double d2) {
        if (d2 <= 0.0d || d2 > 180.0d) {
            d2 = 50.0d;
        }
        return (float) d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        if (this.gu == null || this.zx) {
            return false;
        }
        int i2 = this.f28079b;
        if (i2 == 1) {
            return l();
        }
        if (i2 == 2) {
            return jx();
        }
        return false;
    }

    private boolean jx() {
        int i2;
        gu guVar = this.gu;
        boolean zHp = false;
        if (guVar == null) {
            return false;
        }
        try {
            if (this.ec == 0) {
                if (this.f28094v == null) {
                    this.f28094v = guVar.hp(15);
                }
                this.f28078a = false;
                zHp = this.gu.hp(this, this.f28094v, 1);
            }
            int i3 = this.ec;
            if (i3 == 3 || i3 == 2 || i3 == 4 || i3 == 7) {
                if (this.f28093u == null) {
                    this.f28093u = this.gu.hp(4);
                }
                float f2 = this.ud;
                if (f2 != 0.0f && ((i2 = this.ec) == 2 || i2 == 4)) {
                    this.ea = (float) Math.pow(f2, 2.0d);
                    if (this.xs == null) {
                        this.xs = this.gu.hp(10);
                    }
                    this.gu.hp(this, this.xs, 1);
                }
                zHp = this.gu.hp(this, this.f28093u, 1);
            }
            eb();
        } catch (Throwable unused) {
        }
        return zHp;
    }

    private boolean l() {
        gu guVar = this.gu;
        if (guVar == null) {
            return false;
        }
        try {
            if (this.f28081e == 4) {
                return jx();
            }
            if (this.f28084k == null) {
                this.f28084k = guVar.hp(1);
            }
            boolean zHp = this.gu.hp(this, this.f28084k, 3);
            a();
            return zHp;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void q() throws JSONException {
        eb(1);
        this.f28088n = 0L;
        this.cx = false;
    }

    private boolean s() {
        return this.vv > this.f28092s;
    }

    private void w() {
        gu guVar = this.gu;
        if (guVar == null) {
            return;
        }
        guVar.hp(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) throws JSONException {
        jx jxVar = this.su;
        if (jxVar != null) {
            jxVar.hp();
        }
        int type = sensorEvent.sensor.getType();
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length < 3) {
            return;
        }
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[1]);
        float fAbs3 = Math.abs(fArr[2]);
        if (type == 1) {
            if (this.jl == null || System.currentTimeMillis() - this.f28085l <= 2000) {
                return;
            }
            int i2 = this.f28081e;
            if (i2 == 1) {
                double dSqrt = Math.sqrt(Math.pow(fAbs, 2.0d) + Math.pow(fAbs2, 2.0d) + Math.pow(fAbs3, 2.0d));
                hp(dSqrt > ((double) this.f28092s), dSqrt, sensorEvent);
                return;
            } else if (i2 == 2) {
                l(Math.sqrt((Math.pow((double) fAbs, 2.0d) + Math.pow((double) fAbs2, 2.0d)) + Math.pow((double) fAbs3, 2.0d)) > ((double) this.f28092s), sensorEvent);
                return;
            } else if (i2 == 3) {
                hp(Math.sqrt((Math.pow((double) fAbs, 2.0d) + Math.pow((double) fAbs2, 2.0d)) + Math.pow((double) fAbs3, 2.0d)) > ((double) this.f28092s), sensorEvent);
                return;
            } else {
                double dHp = hp(fAbs, fAbs2, fAbs3);
                hp(dHp > ((double) this.f28092s), dHp, sensorEvent);
                return;
            }
        }
        if (type == 4) {
            int i3 = this.ec;
            if (i3 == 3) {
                l(sensorEvent);
                return;
            } else {
                if (i3 == 2 || i3 == 4 || i3 == 7) {
                    hp(sensorEvent);
                    return;
                }
                return;
            }
        }
        if (type == 10) {
            float[] fArr2 = sensorEvent.values;
            this.nu = (float) (Math.pow(fArr2[0], 2.0d) + Math.pow(fArr2[1], 2.0d) + Math.pow(fArr2[2], 2.0d));
            return;
        }
        if (type != 15) {
            return;
        }
        float fAbs4 = Math.abs(fArr[0]);
        float fAbs5 = Math.abs(fArr[1]);
        float fAbs6 = Math.abs(fArr[2]);
        l lVar = this.zy;
        if (lVar != null) {
            lVar.hp(fArr[0], fArr[1], fArr[2]);
        }
        if (fAbs4 == 0.0f && fAbs5 == 0.0f && fAbs6 == 0.0f) {
            return;
        }
        if (!this.f28078a) {
            this.f28078a = true;
            this.jx = fAbs4;
            this.f28083j = fAbs5;
            this.f28095w = fAbs6;
            return;
        }
        float fAbs7 = Math.abs(fAbs4 - this.jx) * 180.0f;
        float fAbs8 = Math.abs(fAbs5 - this.f28083j) * 180.0f;
        float fAbs9 = Math.abs(fAbs6 - this.f28095w) * 180.0f;
        float[] fArr3 = {fAbs7, fAbs8, fAbs9};
        if (!this.pu) {
            float f2 = this.f28090q;
            if ((fAbs7 > f2 || fAbs8 > f2 || fAbs9 > f2) && this.jl != null && System.currentTimeMillis() - this.eb > 2000) {
                hp(2, fArr3);
                s(11);
                this.jl.hp(getType());
                this.eb = System.currentTimeMillis();
                this.f28078a = false;
                return;
            }
            return;
        }
        boolean z2 = this.ky && fAbs7 > this.xh;
        boolean z3 = this.f28087ms && fAbs8 > this.as;
        boolean z4 = this.kg && fAbs9 > this.mp;
        if ((z2 || z3 || z4) && this.jl != null && System.currentTimeMillis() - this.eb > 2000) {
            hp(2, fArr3);
            s(11);
            this.jl.hp(getType());
            this.eb = System.currentTimeMillis();
            this.f28078a = false;
        }
    }

    private void a() {
        this.f28088n = 0L;
        this.ns = false;
        this.cx = false;
        this.f28086m = 0;
        this.f28082f = 0;
        this.yr = 0;
        this.rz = 0;
        this.nd = 0;
        this.hd = 0;
    }

    private boolean hp(float f2, float f3) {
        return f3 > 0.0f && f2 > f3;
    }

    private void s(int i2) throws JSONException {
        b.hp().hp(this.pc, i2);
    }

    private boolean hp(int i2, int i3) {
        return (i2 | i3) == 3;
    }

    public void w(int i2) {
        this.f28081e = i2;
    }

    private void eb(int i2) throws JSONException {
        if (this.jl != null) {
            s(i2);
            this.jl.hp(getType());
        }
        this.f28085l = System.currentTimeMillis();
    }

    private boolean hp(int i2, int i3, int i4) {
        return i3 == 3 && (i2 | i4) == 3;
    }

    private void q(int i2) {
        try {
            this.pc = i2;
            b.hp().hp(this.pc, "calculation_method", Integer.valueOf(this.f28081e));
            b.hp().hp(this.pc, "calculation_method_twist", Integer.valueOf(this.ec));
            b.hp().hp(this.pc, "shake_threshold", Float.valueOf(this.f28092s));
            b.hp().hp(this.pc, "twist_threshold", Float.valueOf(this.f28090q));
            b.hp().hp(this.pc, "twist_single_threshold", Boolean.valueOf(this.pu));
            b.hp().hp(this.pc, "twist_x_threshold", Float.valueOf(this.xh));
            b.hp().hp(this.pc, "twist_y_threshold", Float.valueOf(this.as));
            b.hp().hp(this.pc, "twist_z_threshold", Float.valueOf(this.mp));
        } catch (Throwable unused) {
        }
    }

    private void w(float f2) throws JSONException {
        if (System.currentTimeMillis() - this.f28088n >= 500) {
            this.ns = false;
            q();
        } else if (f2 >= this.vv) {
            this.ns = true;
            q();
        }
    }

    public void hp(boolean z2) {
        Context context;
        if (!z2) {
            gu guVar = this.gu;
            if (guVar != null) {
                guVar.hp(this);
                this.gu = null;
                return;
            }
            return;
        }
        if (this.rv || this.gu != null || (context = this.qu) == null) {
            return;
        }
        this.gu = w.hp(context);
    }

    public void j(int i2) {
        this.zx = true;
        l(i2);
    }

    private void eb(float f2) throws JSONException {
        if (!hp(this.ec == 7, f2) || System.currentTimeMillis() - this.eb <= 2000) {
            return;
        }
        l(false);
        if (this.jl != null) {
            s(13);
            this.jl.hp(getType());
        }
        this.eb = System.currentTimeMillis();
    }

    private void j(float f2) throws JSONException {
        boolean z2 = this.ec == 4;
        if (!hp(z2, f2) || System.currentTimeMillis() - this.eb <= 2000) {
            return;
        }
        if (this.jl != null) {
            s(z2 ? 12 : 11);
            this.jl.hp(getType());
        }
        this.eb = System.currentTimeMillis();
    }

    public void l(int i2) {
        w();
        this.pc = i2;
        o oVar = an;
        if (oVar != null) {
            oVar.hp(i2, hashCode());
        }
        e();
    }

    public void a(int i2) {
        gu guVar = this.gu;
        if (guVar == null) {
            return;
        }
        if (i2 == 3 || i2 == 2 || i2 == 4 || i2 == 7) {
            if (this.f28093u == null && guVar != null) {
                this.f28093u = guVar.hp(4);
            }
            if (this.f28093u != null) {
                this.ec = i2;
                return;
            }
        }
        this.ec = 0;
    }

    public void hp(hp hpVar) {
        this.jl = hpVar;
    }

    public void hp(l lVar) {
        this.zy = lVar;
    }

    public static void hp(o oVar) {
        an = oVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l(android.hardware.SensorEvent r10) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ymw.di.l(android.hardware.SensorEvent):void");
    }

    public boolean hp(int i2) {
        o oVar;
        q(i2);
        if (i2 > 0 && (oVar = an) != null && !oVar.hp(i2)) {
            an.hp(i2, hashCode(), new Runnable() { // from class: com.byazt.ymw.di.1
                @Override // java.lang.Runnable
                public void run() {
                    di.this.j();
                }
            });
            return true;
        }
        return j();
    }

    public void jx(int i2) {
        this.zx = false;
        hp(i2);
    }

    private void hp(SensorEvent sensorEvent) throws JSONException {
        if (this.wv != 0) {
            float[] fArr = sensorEvent.values;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            float f5 = (sensorEvent.timestamp - r0) * 1.0E-9f;
            float f6 = this.hq;
            if (f6 != 0.0f) {
                if (l(f6, f2) && l(this.hq, f3) && l(this.hq, f4)) {
                    hp(f2, f3, f4, f5);
                } else {
                    l(true);
                }
            } else {
                float f7 = this.ea;
                if (f7 != 0.0f && this.nu >= f7) {
                    l(true);
                } else {
                    hp(f2, f3, f4, f5);
                }
            }
            if (this.ec == 7) {
                eb(this.f28090q);
            } else {
                j(this.f28090q);
            }
            l lVar = this.zy;
            if (lVar != null) {
                float[] fArr2 = this.dy;
                lVar.hp(fArr2[0], fArr2[1], fArr2[2]);
            }
        }
        this.wv = sensorEvent.timestamp;
    }

    public void jx(JSONObject jSONObject) {
        if (this.f28079b != 1) {
            return;
        }
        if (jSONObject == null) {
            this.f28096y = 0;
            this.vq = 0;
        } else {
            this.f28096y = jSONObject.optInt("double_direct_conf", 0);
            this.vq = jSONObject.optInt("double_direct_match", 0);
        }
    }

    public void jx(float f2) {
        this.vv = f2;
    }

    private boolean hp(boolean z2, float f2) {
        float fAbs = Math.abs((float) Math.toDegrees(this.dy[0]));
        float fAbs2 = Math.abs((float) Math.toDegrees(this.dy[1]));
        float fAbs3 = Math.abs((float) Math.toDegrees(this.dy[2]));
        if (this.pu) {
            boolean z3 = this.ky && hp(fAbs, this.xh);
            boolean z4 = this.f28087ms && hp(fAbs2, this.as);
            boolean z5 = this.kg && hp(fAbs3, this.mp);
            if (z3 || z4 || z5) {
                hp(2, this.dy);
                return hp(z2, z3, z4, z5);
            }
        } else {
            boolean zHp = hp(fAbs, f2);
            boolean zHp2 = hp(fAbs2, f2);
            boolean zHp3 = hp(fAbs3, f2);
            if (zHp || zHp2 || zHp3) {
                hp(2, this.dy);
                return hp(z2, zHp, zHp2, zHp3);
            }
        }
        return false;
    }

    private boolean l(float f2, float f3) {
        return Math.abs(f3) < f2;
    }

    private void l(boolean z2) {
        float[] fArr = this.dy;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
    }

    public void l(float f2) {
        this.f28090q = f2;
    }

    public void l(JSONObject jSONObject) {
        if (this.f28079b != 2) {
            return;
        }
        if (jSONObject == null) {
            this.vq = 0;
        } else {
            this.vq = jSONObject.optInt("double_direct_match", 0);
        }
    }

    private void l(boolean z2, SensorEvent sensorEvent) throws JSONException {
        if (z2) {
            float[] fArr = sensorEvent.values;
            int iHp = hp(fArr[0], this.f28086m);
            int iHp2 = hp(fArr[1], this.f28082f);
            int iHp3 = hp(fArr[2], this.yr);
            if (l(iHp, iHp2, iHp3, true)) {
                hp(iHp, iHp2, iHp3, true);
                eb(2);
            } else if (this.vq == 1) {
                this.f28086m = iHp;
                this.f28082f = iHp2;
                this.yr = iHp3;
            } else {
                this.f28086m = iHp | this.f28086m;
                this.f28082f |= iHp2;
                this.yr = iHp3 | this.yr;
            }
            hp(1, sensorEvent.values);
        }
    }

    private void hp(float f2, float f3, float f4, float f5) {
        float[] fArr = this.dy;
        fArr[0] = fArr[0] + (f2 * f5);
        fArr[1] = fArr[1] + (f3 * f5);
        fArr[2] = fArr[2] + (f4 * f5);
    }

    public void hp(float f2) {
        this.f28092s = f2;
    }

    public void hp(jx jxVar) {
        this.su = jxVar;
    }

    public void hp(JSONObject jSONObject) {
        if (this.f28079b != 2) {
            return;
        }
        this.f28091r = jSONObject;
        if (jSONObject == null) {
            this.ky = false;
            this.f28087ms = false;
            this.kg = false;
        } else {
            this.ky = jSONObject.has("x_threshold");
            this.xh = hp(this.f28091r.optDouble("x_threshold", 50.0d));
            this.f28087ms = this.f28091r.has("y_threshold");
            this.as = hp(this.f28091r.optDouble("y_threshold", 50.0d));
            this.kg = this.f28091r.has("z_threshold");
            this.mp = hp(this.f28091r.optDouble("z_threshold", 50.0d));
        }
        this.pu = this.ky || this.f28087ms || this.kg;
    }

    private boolean l(int i2, int i3, int i4, boolean z2) {
        boolean zHp;
        boolean zHp2;
        boolean zHp3;
        int i5 = this.f28096y;
        if (i5 == 1) {
            int i6 = this.yr;
            return z2 ? hp(i4, i6) : hp(i4, i6, this.hd);
        }
        if (i5 == 2) {
            int i7 = this.f28082f;
            return z2 ? hp(i3, i7) : hp(i3, i7, this.nd);
        }
        if (i5 == 4) {
            int i8 = this.f28086m;
            return z2 ? hp(i2, i8) : hp(i2, i8, this.rz);
        }
        if (i5 == 7) {
            return z2 ? hp(i2, this.f28086m) && hp(i3, this.f28082f) && hp(i4, this.yr) : hp(i2, this.f28086m, this.rz) && hp(i3, this.f28082f, this.nd) && hp(i4, this.yr, this.hd);
        }
        if (z2) {
            zHp = hp(i2, this.f28086m);
            zHp2 = hp(i3, this.f28082f);
            zHp3 = hp(i4, this.yr);
        } else {
            zHp = hp(i2, this.f28086m, this.rz);
            zHp2 = hp(i3, this.f28082f, this.nd);
            zHp3 = hp(i4, this.yr, this.hd);
        }
        return zHp || zHp2 || zHp3;
    }

    public boolean hp() {
        return this.ns;
    }

    private float hp(float f2, float f3, float f4) {
        return Math.max(Math.max(f3, f2), f4);
    }

    private void hp(boolean z2, double d2, SensorEvent sensorEvent) throws JSONException {
        if (!s() && z2) {
            eb(1);
        } else if (z2) {
            this.f28088n = System.currentTimeMillis();
            this.cx = true;
            w((float) d2);
        } else if (this.cx && System.currentTimeMillis() - this.f28088n >= 500) {
            this.ns = false;
            q();
        }
        if (z2) {
            hp(1, sensorEvent.values);
        }
    }

    private void hp(boolean z2, SensorEvent sensorEvent) throws JSONException {
        if (z2) {
            float[] fArr = sensorEvent.values;
            int iHp = hp(fArr[0], this.f28086m);
            int iHp2 = hp(fArr[1], this.f28082f);
            int iHp3 = hp(fArr[2], this.yr);
            if (l(iHp, iHp2, iHp3, false)) {
                hp(iHp, iHp2, iHp3, true);
                eb(3);
            } else {
                this.f28086m |= iHp;
                if (iHp <= 0) {
                    iHp = this.rz;
                }
                this.rz = iHp;
                this.f28082f |= iHp2;
                if (iHp2 <= 0) {
                    iHp2 = this.nd;
                }
                this.nd = iHp2;
                this.yr |= iHp3;
                if (iHp3 <= 0) {
                    iHp3 = this.hd;
                }
                this.hd = iHp3;
            }
            hp(1, sensorEvent.values);
        }
    }

    private boolean hp(boolean z2, boolean z3, boolean z4, boolean z5) {
        if (!z2) {
            l(false);
            return true;
        }
        int iA = z3 ? a(this.dy[0]) : 0;
        int iA2 = z4 ? a(this.dy[1]) : 0;
        int iA3 = z5 ? a(this.dy[2]) : 0;
        if (this.ec != 7) {
            l(false);
        }
        if (!hp(iA, this.f28086m) && !hp(iA2, this.f28082f) && !hp(iA3, this.yr)) {
            if (this.vq != 1) {
                hp(iA, iA2, iA3, false);
            } else if (z3 || z4 || z5) {
                this.f28086m = iA;
                this.f28082f = iA2;
                this.yr = iA3;
            }
            return false;
        }
        hp(iA, iA2, iA3, true);
        return true;
    }

    private void hp(int i2, int i3, int i4, boolean z2) {
        if (z2) {
            this.f28086m = 0;
            this.f28082f = 0;
            this.yr = 0;
            this.rz = 0;
            this.nd = 0;
            this.hd = 0;
            return;
        }
        if (i2 == 0) {
            i2 = this.f28086m;
        }
        this.f28086m = i2;
        if (i3 == 0) {
            i3 = this.f28082f;
        }
        this.f28082f = i3;
        if (i4 == 0) {
            i4 = this.yr;
        }
        this.yr = i4;
    }

    private int hp(float f2, int i2) {
        if (f2 != 0.0f) {
            return a(f2);
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 == 2 ? 1 : 2;
    }

    private void hp(int i2, float[] fArr) {
        b.hp().hp(this.pc, i2, fArr);
    }
}
