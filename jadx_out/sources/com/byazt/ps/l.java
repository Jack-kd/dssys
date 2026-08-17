package com.byazt.ps;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1039, 34})
/* loaded from: classes3.dex */
public class l extends hp {

    /* renamed from: a, reason: collision with root package name */
    public Paint f24505a;

    /* renamed from: j, reason: collision with root package name */
    public int f24506j;
    public int jx;

    /* renamed from: w, reason: collision with root package name */
    public int f24507w;

    public l(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
        super(jxVar, jSONObject);
        Paint paint = new Paint();
        this.f24505a = paint;
        paint.setAntiAlias(true);
    }

    private void jx(Canvas canvas) {
        try {
            if (this.f24489l.f() > 0.0f) {
                this.f24505a.setColor(this.jx);
                this.f24505a.setAlpha((int) ((1.0f - this.f24489l.f()) * 255.0f));
                ((ViewGroup) this.f24489l.q().getParent()).setClipChildren(true);
                canvas.drawCircle(this.f24506j, this.f24507w, Math.min(r0, r2) * 2 * this.f24489l.f(), this.f24505a);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.byazt.ps.hp
    public void hp(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public void l() {
        this.jx = com.byazt.xa.hp.hp(this.hp.optString("backgroundColor"), -1);
    }

    @Override // com.byazt.ps.hp
    public void hp(int i2, int i3) {
        this.f24506j = i2 / 2;
        this.f24507w = i3 / 2;
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
