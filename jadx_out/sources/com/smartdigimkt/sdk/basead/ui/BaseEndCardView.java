package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.widget.RelativeLayout;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.v1.d0;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public abstract class BaseEndCardView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final c f43246a;

    /* renamed from: b, reason: collision with root package name */
    public final a f43247b;

    /* renamed from: c, reason: collision with root package name */
    public final e f43248c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f43249d;
    public d0 mListener;

    public BaseEndCardView(Context context, c cVar, a aVar) {
        super(context);
        super.setWillNotDraw(false);
        this.f43246a = cVar;
        this.f43247b = aVar;
        this.f43248c = aVar.f41644r;
    }

    public abstract void a();

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Canvas canvas2;
        if (this.f43249d) {
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
                d.a(canvas2, width, height, rectF);
                canvas2.restoreToCount(iSaveLayer);
                return;
            } catch (Exception unused) {
            }
        } else {
            canvas2 = canvas;
        }
        super.draw(canvas2);
    }

    public Drawable getBgDrawable() {
        return null;
    }

    public void setNeedArc(boolean z2) {
        this.f43249d = z2;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }
}
