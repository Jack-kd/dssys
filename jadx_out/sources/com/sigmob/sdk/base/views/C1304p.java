package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;

/* renamed from: com.sigmob.sdk.base.views.p, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1304p extends View {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f37141a;

    /* renamed from: b, reason: collision with root package name */
    private final Path f37142b;

    public C1304p(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f37141a = paint;
        paint.setColor(-12303292);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        paint.setPathEffect(new DashPathEffect(new float[]{10.0f, 5.0f}, 0.0f));
        this.f37142b = new Path();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f37142b.reset();
        getHeight();
        getWidth();
        this.f37142b.moveTo(0.0f, 0.0f);
        this.f37142b.lineTo(0.0f, getHeight());
        canvas.drawPath(this.f37142b, this.f37141a);
    }
}
