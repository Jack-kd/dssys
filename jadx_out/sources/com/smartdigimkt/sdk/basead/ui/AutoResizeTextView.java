package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes5.dex */
public class AutoResizeTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f43180a;

    /* renamed from: b, reason: collision with root package name */
    public float f43181b;

    /* renamed from: c, reason: collision with root package name */
    public float f43182c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43183d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f43184e;

    public AutoResizeTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43181b = 1.0f;
        this.f43182c = 0.0f;
        this.f43183d = false;
        this.f43184e = false;
        this.f43180a = new TextPaint();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f43184e) {
            return;
        }
        if (!this.f43183d) {
            super.onDraw(canvas);
            return;
        }
        CharSequence text = getText();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (width == 0 || height == 0 || TextUtils.isEmpty(text)) {
            return;
        }
        this.f43184e = true;
        int textSize = (int) getTextSize();
        while (textSize >= 5) {
            this.f43180a.setTextSize(textSize);
            int iMeasureText = (int) this.f43180a.measureText(text, 0, text.length());
            int height2 = new StaticLayout(text, this.f43180a, width, Layout.Alignment.ALIGN_NORMAL, this.f43181b, this.f43182c, true).getHeight();
            if (iMeasureText < width && height2 < height) {
                break;
            } else {
                textSize--;
            }
        }
        setTextSize(0, textSize);
        this.f43184e = false;
        this.f43183d = false;
        invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f43183d = true;
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        this.f43183d = true;
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f2, float f3) {
        super.setLineSpacing(f2, f3);
        this.f43181b = f3;
        this.f43182c = f2;
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43181b = 1.0f;
        this.f43182c = 0.0f;
        this.f43183d = false;
        this.f43184e = false;
        this.f43180a = new TextPaint();
    }

    public AutoResizeTextView(Context context) {
        super(context);
        this.f43181b = 1.0f;
        this.f43182c = 0.0f;
        this.f43183d = false;
        this.f43184e = false;
        this.f43180a = new TextPaint();
    }
}
