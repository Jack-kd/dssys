package com.byazt.ps;

import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.byazt.xa.hp;
import com.byazt.xa.s;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1039, 38})
/* loaded from: classes3.dex */
public class j extends hp {

    /* renamed from: k, reason: collision with root package name */
    public static final float f24490k;

    /* renamed from: u, reason: collision with root package name */
    public static final float f24491u;

    /* renamed from: v, reason: collision with root package name */
    public static final float f24492v;
    public static final float xs;

    /* renamed from: a, reason: collision with root package name */
    public hp.C0402hp f24493a;

    /* renamed from: e, reason: collision with root package name */
    public int f24494e;
    public int eb;
    public int gu;

    /* renamed from: j, reason: collision with root package name */
    public Paint f24495j;
    public boolean jl;
    public int jx;

    /* renamed from: q, reason: collision with root package name */
    public float f24496q;

    /* renamed from: s, reason: collision with root package name */
    public int f24497s;
    public float vv;

    /* renamed from: w, reason: collision with root package name */
    public Path f24498w;
    public Path zy;

    static {
        float radians = (float) Math.toRadians(30.0d);
        f24490k = radians;
        f24492v = (float) Math.tan(radians);
        f24491u = (float) Math.cos(radians);
        xs = (float) Math.sin(radians);
    }

    public j(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
        super(jxVar, jSONObject);
        this.jl = true;
        Paint paint = new Paint();
        this.f24495j = paint;
        paint.setAntiAlias(true);
        this.f24498w = new Path();
        this.f24496q = this.f24489l.n();
        this.zy = new Path();
    }

    private void jx(Canvas canvas) {
        LinearGradient linearGradient;
        try {
            if (this.f24489l.yr() > 0.0f) {
                int i2 = this.f24494e;
                float f2 = f24492v;
                float fYr = (i2 + (i2 * f2)) * this.f24489l.yr();
                this.zy.reset();
                this.zy.moveTo(fYr, 0.0f);
                int i3 = this.gu;
                float f3 = fYr - (i3 * f2);
                this.zy.lineTo(f3, i3);
                this.zy.lineTo(f3 + this.jx, this.gu);
                this.zy.lineTo(this.jx + fYr, 0.0f);
                this.zy.close();
                float f4 = this.vv;
                float f5 = f24491u * f4;
                float f6 = f4 * xs;
                if (!this.jl || this.f24493a == null) {
                    int i4 = this.f24497s;
                    linearGradient = new LinearGradient(fYr, 0.0f, fYr + f5, f6, new int[]{i4, this.eb, i4}, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    linearGradient = new LinearGradient(fYr, 0.0f, fYr + f5, f6, this.f24493a.f27164l, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.f24495j.setShader(linearGradient);
                Path path = this.f24498w;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                canvas.drawPath(this.zy, this.f24495j);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ps.hp
    @SuppressLint({"DrawAllocation"})
    public void hp(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public void l() {
        this.jx = (int) s.hp(this.f24489l.q().getContext(), this.hp.optInt("shineWidth", 30));
        String strOptString = this.hp.optString("backgroundColor", "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(strOptString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : strOptString;
        if (str.startsWith("linear")) {
            this.f24493a = com.byazt.xa.hp.l(str);
        } else {
            int iHp = com.byazt.xa.hp.hp(str);
            this.eb = iHp;
            this.f24497s = com.byazt.xa.hp.hp(iHp, 32);
            this.jl = false;
        }
        this.vv = f24491u * this.jx;
    }

    @Override // com.byazt.ps.hp
    public void hp(int i2, int i3) {
        this.f24494e = i2;
        this.gu = i3;
        try {
            RectF rectF = new RectF(0.0f, 0.0f, i2, i3);
            Path path = this.f24498w;
            float f2 = this.f24496q;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ps.hp
    public void l(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public List<PropertyValuesHolder> jx() {
        PropertyValuesHolder propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(j(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(propertyValuesHolderOfFloat);
        return arrayList;
    }
}
