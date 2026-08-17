package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class ScopeRoundImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private final RectF f12838a;

    /* renamed from: b, reason: collision with root package name */
    private float f12839b;

    /* renamed from: c, reason: collision with root package name */
    private String f12840c;

    /* renamed from: d, reason: collision with root package name */
    private int f12841d;

    /* renamed from: e, reason: collision with root package name */
    private final Paint f12842e;

    /* renamed from: f, reason: collision with root package name */
    private final Paint f12843f;

    public ScopeRoundImageView(@NonNull Context context) {
        super(context);
        this.f12838a = new RectF();
        this.f12839b = 0.0f;
        this.f12840c = null;
        this.f12841d = 0;
        this.f12842e = new Paint();
        this.f12843f = new Paint();
        a();
    }

    private void a() {
        this.f12842e.setAntiAlias(true);
        this.f12842e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f12843f.setAntiAlias(true);
        this.f12843f.setColor(-1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f12838a, this.f12843f, 31);
        RectF rectF = this.f12838a;
        float f2 = this.f12839b;
        canvas.drawRoundRect(rectF, f2, f2, this.f12843f);
        canvas.saveLayer(this.f12838a, this.f12842e, 31);
        super.draw(canvas);
        if (this.f12841d > 0 && !TextUtils.isEmpty(this.f12840c) && this.f12840c.startsWith("#")) {
            Paint paint = new Paint();
            paint.setColor(Color.parseColor(this.f12840c));
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.f12841d);
            paint.setAntiAlias(true);
            RectF rectF2 = this.f12838a;
            float f3 = this.f12839b;
            canvas.drawRoundRect(rectF2, f3, f3, paint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.f12838a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setBorderColor(String str) {
        this.f12840c = str;
    }

    public void setBorderWidth(int i2) {
        this.f12841d = i2;
    }

    public void setRectRadius(float f2) {
        this.f12839b = f2;
    }

    public ScopeRoundImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12838a = new RectF();
        this.f12839b = 0.0f;
        this.f12840c = null;
        this.f12841d = 0;
        this.f12842e = new Paint();
        this.f12843f = new Paint();
        a();
    }

    public ScopeRoundImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12838a = new RectF();
        this.f12839b = 0.0f;
        this.f12840c = null;
        this.f12841d = 0;
        this.f12842e = new Paint();
        this.f12843f = new Paint();
        a();
    }
}
