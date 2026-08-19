package com.byazt.wnd;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1640})
/* loaded from: classes3.dex */
public class CircleRippleView extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f26957a;

    /* renamed from: e, reason: collision with root package name */
    public Paint f26958e;
    public boolean eb;
    public Paint gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f26959j;
    public float jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public int f26960k;

    /* renamed from: l, reason: collision with root package name */
    public int f26961l;

    /* renamed from: q, reason: collision with root package name */
    public List<Integer> f26962q;

    /* renamed from: s, reason: collision with root package name */
    public List<Integer> f26963s;

    /* renamed from: w, reason: collision with root package name */
    public float f26964w;
    public float zy;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    private void jx() {
        Paint paint = new Paint();
        this.f26958e = paint;
        paint.setAntiAlias(true);
        this.f26958e.setStrokeWidth(this.f26960k);
        this.f26963s.add(255);
        this.f26962q.add(0);
        Paint paint2 = new Paint();
        this.gu = paint2;
        paint2.setAntiAlias(true);
        this.gu.setColor(Color.parseColor("#0FFFFFFF"));
        this.gu.setStyle(Paint.Style.FILL);
    }

    public void hp() {
        this.eb = true;
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    public void l() {
        this.eb = false;
        this.f26962q.clear();
        this.f26963s.clear();
        this.f26963s.add(255);
        this.f26962q.add(0);
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f26958e.setShader(new LinearGradient(this.jl, 0.0f, this.zy, getMeasuredHeight(), -1, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        int i2 = 0;
        while (true) {
            if (i2 >= this.f26963s.size()) {
                break;
            }
            Integer num = this.f26963s.get(i2);
            this.f26958e.setAlpha(num.intValue());
            Integer num2 = this.f26962q.get(i2);
            if (this.jx + num2.intValue() < this.f26964w) {
                canvas.drawCircle(this.jl, this.zy, this.jx + num2.intValue(), this.f26958e);
            }
            if (num.intValue() > 0 && num2.intValue() < this.f26964w) {
                this.f26963s.set(i2, Integer.valueOf(num.intValue() - this.f26957a > 0 ? num.intValue() - (this.f26957a * 3) : 1));
                this.f26962q.set(i2, Integer.valueOf(num2.intValue() + this.f26957a));
            }
            i2++;
        }
        List<Integer> list = this.f26962q;
        if (list.get(list.size() - 1).intValue() >= this.f26964w / this.f26959j) {
            this.f26963s.add(255);
            this.f26962q.add(0);
        }
        if (this.f26962q.size() >= 3) {
            this.f26962q.remove(0);
            this.f26963s.remove(0);
        }
        this.f26958e.setAlpha(255);
        this.f26958e.setColor(this.f26961l);
        canvas.drawCircle(this.jl, this.zy, this.jx, this.gu);
        if (this.eb) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        float f2 = i2 / 2.0f;
        this.jl = f2;
        this.zy = i3 / 2.0f;
        float f3 = f2 - (this.f26960k / 2.0f);
        this.f26964w = f3;
        this.jx = f3 / 4.0f;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            invalidate();
        }
    }

    public void setColor(int i2) {
        this.hp = i2;
    }

    public void setCoreColor(int i2) {
        this.f26961l = i2;
    }

    public void setCoreRadius(int i2) {
        this.jx = i2;
    }

    public void setDiffuseSpeed(int i2) {
        this.f26957a = i2;
    }

    public void setDiffuseWidth(int i2) {
        this.f26959j = i2;
    }

    public void setMaxWidth(int i2) {
        this.f26964w = i2;
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.hp = -1;
        this.f26961l = SupportMenu.CATEGORY_MASK;
        this.jx = 18.0f;
        this.f26959j = 3;
        this.f26964w = 50.0f;
        this.f26957a = 2;
        this.eb = false;
        this.f26963s = new ArrayList();
        this.f26962q = new ArrayList();
        this.f26960k = 24;
        jx();
    }
}
