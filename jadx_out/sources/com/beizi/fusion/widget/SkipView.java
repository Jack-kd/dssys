package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.beizi.fusion.vo;

/* loaded from: classes2.dex */
public class SkipView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private int f17174a;

    /* renamed from: b, reason: collision with root package name */
    private TextPaint f17175b;

    /* renamed from: c, reason: collision with root package name */
    private float f17176c;

    /* renamed from: d, reason: collision with root package name */
    private float f17177d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f17178e;

    /* renamed from: f, reason: collision with root package name */
    private RectF f17179f;

    /* renamed from: g, reason: collision with root package name */
    private RectF f17180g;

    /* renamed from: h, reason: collision with root package name */
    private int f17181h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f17182i;

    /* renamed from: j, reason: collision with root package name */
    private SparseIntArray f17183j;

    /* renamed from: k, reason: collision with root package name */
    private final b f17184k;

    public class a implements b {
        public a() {
        }

        @Override // com.beizi.fusion.widget.SkipView.b
        public int a(int i2, RectF rectF) {
            SkipView.this.f17175b.setTextSize(i2);
            String string = SkipView.this.getText().toString();
            SkipView.this.f17179f.bottom = SkipView.this.f17175b.getFontSpacing();
            SkipView.this.f17179f.right = SkipView.this.f17175b.measureText(string);
            SkipView.this.f17179f.offsetTo(0.0f, 0.0f);
            return rectF.contains(SkipView.this.f17179f) ? -1 : 1;
        }
    }

    public interface b {
        int a(int i2, RectF rectF);
    }

    public SkipView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17177d = 20.0f;
        this.f17179f = new RectF();
        this.f17182i = true;
        this.f17184k = new a();
        init(context);
    }

    public void init(Context context) {
        setGravity(17);
        setLines(1);
        setMaxLines(1);
        setTextColor(-1);
        a(context, 0);
        TextPaint textPaint = new TextPaint();
        this.f17175b = textPaint;
        textPaint.set(getPaint());
        this.f17176c = getTextSize();
        this.f17180g = new RectF();
        this.f17183j = new SparseIntArray();
        this.f17178e = true;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 53));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        SparseIntArray sparseIntArray = this.f17183j;
        if (sparseIntArray != null) {
            sparseIntArray.clear();
        }
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        a();
    }

    public void setData(int i2, int i3) {
        a(getContext(), i2);
        this.f17174a = i3;
    }

    private void a(Context context, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        if (i2 == 1) {
            gradientDrawable.setStroke(1, Color.parseColor("#C0C0C0"));
        }
        gradientDrawable.setCornerRadius(vo.a(context, 45.0f));
        setBackgroundDrawable(gradientDrawable);
    }

    private int b(int i2, int i3, b bVar, RectF rectF) {
        if (!this.f17182i) {
            return a(i2, i3, bVar, rectF);
        }
        String string = getText().toString();
        int length = string == null ? 0 : string.length();
        int i4 = this.f17183j.get(length);
        if (i4 != 0) {
            return i4;
        }
        int iA = a(i2, i3, bVar, rectF);
        this.f17183j.put(length, iA);
        return iA;
    }

    public SkipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17177d = 20.0f;
        this.f17179f = new RectF();
        this.f17182i = true;
        this.f17184k = new a();
        init(context);
    }

    private void a() {
        a(getText().toString());
    }

    private void a(String str) {
        if (this.f17178e) {
            int i2 = (int) this.f17177d;
            int measuredHeight = ((getMeasuredHeight() - getCompoundPaddingBottom()) - getCompoundPaddingTop()) - this.f17174a;
            int measuredWidth = ((getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight()) - vo.a(getContext(), 8.0f);
            this.f17181h = measuredWidth;
            RectF rectF = this.f17180g;
            rectF.right = measuredWidth;
            rectF.bottom = measuredHeight;
            super.setTextSize(0, b(i2, (int) this.f17176c, this.f17184k, rectF));
        }
    }

    public SkipView(Context context) {
        super(context);
        this.f17177d = 20.0f;
        this.f17179f = new RectF();
        this.f17182i = true;
        this.f17184k = new a();
        init(context);
    }

    private static int a(int i2, int i3, b bVar, RectF rectF) {
        int i4 = i3 - 1;
        int i5 = i2;
        while (i2 <= i4) {
            i5 = (i2 + i4) >>> 1;
            int iA = bVar.a(i5, rectF);
            if (iA >= 0) {
                if (iA <= 0) {
                    break;
                }
                i5--;
                i4 = i5;
            } else {
                int i6 = i5 + 1;
                i5 = i2;
                i2 = i6;
            }
        }
        return i5;
    }
}
