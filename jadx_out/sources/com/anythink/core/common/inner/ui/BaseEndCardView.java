package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.h.y;
import com.anythink.core.common.v.ak;

/* loaded from: classes2.dex */
public abstract class BaseEndCardView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    protected String f4834a;

    /* renamed from: b, reason: collision with root package name */
    protected w f4835b;

    /* renamed from: c, reason: collision with root package name */
    protected x f4836c;

    /* renamed from: d, reason: collision with root package name */
    protected y f4837d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f4838e;
    public a mListener;

    public interface a {
        void a();

        void b();
    }

    public interface b extends a {
        void c();
    }

    public BaseEndCardView(Context context, w wVar, x xVar) {
        super(context);
        this.f4834a = getClass().getSimpleName();
        super.setWillNotDraw(false);
        this.f4835b = wVar;
        this.f4836c = xVar;
        this.f4837d = xVar.f4500t;
    }

    private static RectF a(int i2, int i3) {
        int i4 = i2 / 2;
        float f2 = i3;
        int i5 = (int) (1.0f * f2);
        RectF rectF = new RectF();
        rectF.left = i4 - i5;
        rectF.top = i3 - (i5 * 2);
        rectF.right = i4 + i5;
        rectF.bottom = f2;
        return rectF;
    }

    public abstract void a();

    public Drawable b() {
        return null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Canvas canvas2;
        if (this.f4838e) {
            canvas2 = canvas;
            try {
                int iSaveLayer = canvas2.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
                super.draw(canvas2);
                int width = getWidth();
                int height = getHeight();
                int width2 = getWidth();
                int i2 = width2 / 2;
                float height2 = getHeight();
                int i3 = (int) (1.0f * height2);
                RectF rectF = new RectF();
                rectF.left = i2 - i3;
                rectF.top = r4 - (i3 * 2);
                rectF.right = i2 + i3;
                rectF.bottom = height2;
                ak.a(canvas2, width, height, rectF);
                canvas2.restoreToCount(iSaveLayer);
                return;
            } catch (Exception unused) {
            }
        } else {
            canvas2 = canvas;
        }
        super.draw(canvas2);
    }

    public void setNeedArc(boolean z2) {
        this.f4838e = z2;
        postInvalidate();
    }
}
