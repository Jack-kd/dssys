package com.byazt.ps;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.View;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1039, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: a, reason: collision with root package name */
    public View f24499a;

    /* renamed from: e, reason: collision with root package name */
    public LinearGradient f24500e;
    public Paint eb;
    public Matrix gu;

    /* renamed from: j, reason: collision with root package name */
    public float f24501j;
    public String jx;

    /* renamed from: q, reason: collision with root package name */
    public PorterDuffXfermode f24502q;

    /* renamed from: s, reason: collision with root package name */
    public Paint f24503s;

    /* renamed from: w, reason: collision with root package name */
    public float f24504w;

    public jx(com.byazt.xs.jx jxVar, JSONObject jSONObject) {
        super(jxVar, jSONObject);
        this.f24499a = this.f24489l.q();
        Paint paint = new Paint();
        this.eb = paint;
        paint.setAntiAlias(true);
        this.f24499a.setLayerType(2, null);
        this.f24502q = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.f24503s = new Paint();
        this.gu = new Matrix();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void jx(android.graphics.Canvas r23) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ps.jx.jx(android.graphics.Canvas):void");
    }

    @Override // com.byazt.ps.hp
    public void hp(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public void l() {
        this.jx = this.hp.optString("direction", ScrollClickView.DIR_LEFT);
    }

    @Override // com.byazt.ps.hp
    public void hp(int i2, int i3) {
        this.f24501j = i2;
        this.f24504w = i3;
        String str = this.jx;
        str.getClass();
        switch (str) {
            case "bottom":
                this.f24500e = new LinearGradient(0.0f, -this.f24504w, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "top":
                this.f24500e = new LinearGradient(0.0f, this.f24504w, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "left":
                this.f24500e = new LinearGradient(this.f24501j, 0.0f, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                break;
            case "right":
                this.f24500e = new LinearGradient(-this.f24501j, 0.0f, 0.0f, this.f24504w, 0, -1, Shader.TileMode.CLAMP);
                break;
        }
    }

    @Override // com.byazt.ps.hp
    public void l(Canvas canvas) {
        jx(canvas);
    }

    @Override // com.byazt.ps.hp
    public List<PropertyValuesHolder> jx() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", 0.0f, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(com.byazt.mw.w.ALPHA.l(), 0.0f, 1.0f));
        return arrayList;
    }
}
