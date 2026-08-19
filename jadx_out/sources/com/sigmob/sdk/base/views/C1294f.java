package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.utils.Dips;

/* renamed from: com.sigmob.sdk.base.views.f, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1294f extends View {

    /* renamed from: a, reason: collision with root package name */
    private Path f36967a;

    /* renamed from: b, reason: collision with root package name */
    private Path f36968b;

    /* renamed from: c, reason: collision with root package name */
    private Paint f36969c;

    public C1294f(Context context) {
        super(context);
        this.f36967a = new Path();
        this.f36968b = new Path();
        Paint paint = new Paint();
        this.f36969c = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f36969c.setColor(-1);
        this.f36969c.setAntiAlias(true);
        this.f36969c.setAlpha(MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT);
        a();
    }

    private void a() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.f.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C1294f.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                C1294f.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int width = getWidth();
        int width2 = getWidth();
        if (width <= 0 || width2 <= 0) {
            return;
        }
        int iMin = Math.min(width, width2);
        this.f36969c.reset();
        this.f36967a.reset();
        this.f36968b.reset();
        this.f36969c.setStrokeWidth(Dips.dipsToIntPixels(1.0f, getContext()));
        float f2 = iMin;
        float f3 = width / 2.0f;
        float f4 = width2 / 2.0f;
        Path path = this.f36967a;
        Path.Direction direction = Path.Direction.CCW;
        path.addCircle(f3, f4, 0.45f * f2, direction);
        this.f36968b.addCircle(f3, f4, f2 * 0.35f, direction);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f36969c.setColor(-16777216);
        this.f36969c.setAlpha(102);
        this.f36969c.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.f36967a, this.f36969c);
        this.f36969c.setColor(-1);
        this.f36969c.setAlpha(76);
        this.f36969c.setStyle(Paint.Style.STROKE);
        canvas.drawPath(this.f36967a, this.f36969c);
        this.f36969c.setAlpha(127);
        canvas.drawPath(this.f36968b, this.f36969c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        b();
    }

    public C1294f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public C1294f(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
