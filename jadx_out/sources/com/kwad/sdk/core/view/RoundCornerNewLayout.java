package com.kwad.sdk.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes4.dex */
public class RoundCornerNewLayout extends FrameLayout {

    @Nullable
    private Path baS;
    private int baT;
    private int baU;
    private int baV;
    private int baW;
    private boolean baX;

    public RoundCornerNewLayout(@NonNull Context context) {
        this(context, null);
    }

    @RequiresApi(api = 21)
    private void Pt() {
        if (this.baX) {
            int iMax = Math.max(this.baT, this.baU);
            int iMax2 = Math.max(this.baV, this.baW);
            setOutlineProvider(new a(Math.max(iMax, iMax2), 0, iMax == iMax2 ? 0 : -iMax2, getWidth(), iMax == iMax2 ? getHeight() : iMax + getHeight()));
            setClipToOutline(true);
        } else {
            setOutlineProvider(new a(this.baT, 0, 0, getWidth(), getHeight() + this.baT));
        }
        setClipToOutline(true);
    }

    private static Path a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        Path path = new Path();
        path.moveTo(0.0f, i6);
        if (i6 >= 0) {
            float f2 = i6 * 2;
            path.arcTo(new RectF(0.0f, 0.0f, f2, f2), -180.0f, 90.0f);
        }
        path.lineTo(i4 - i7, 0.0f);
        if (i7 >= 0) {
            path.arcTo(new RectF(i4 - r8, 0.0f, i4, i7 * 2), -90.0f, 90.0f);
        }
        float f3 = i4;
        path.lineTo(f3, i5 - i8);
        if (i8 != 0) {
            int i10 = i8 * 2;
            path.arcTo(new RectF(i4 - i10, i5 - i10, f3, i5), 0.0f, 90.0f);
        }
        float f4 = i5;
        path.lineTo(i9, f4);
        if (i9 != 0) {
            path.arcTo(new RectF(0.0f, i5 - r10, i9 * 2, f4), 90.0f, 90.0f);
        }
        path.close();
        path.offset(0.0f, 0.0f);
        return path;
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"ObsoleteSdkInt"})
    public void dispatchDraw(Canvas canvas) {
        Pt();
        Path path = this.baS;
        if (path != null) {
            canvas.clipPath(path);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    @SuppressLint({"ObsoleteSdkInt"})
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Pt();
    }

    public void setCalculateRadius(boolean z2) {
        this.baX = z2;
    }

    public void setTopRadius(int i2) {
        this.baT = i2;
        this.baU = i2;
        invalidate();
    }

    public RoundCornerNewLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundCornerNewLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.baX = false;
    }
}
