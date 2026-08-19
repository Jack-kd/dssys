package com.kwad.components.ad.splashscreen.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public class KsSplashSlidePathView extends ImageView {
    private Path ML;
    private Paint MM;
    private float MN;
    private float MO;
    private float MP;
    private float MQ;
    private int MR;
    private a MS;
    private GestureDetector MT;

    public interface a {
        void a(float f2, float f3, float f4, float f5);

        void c(MotionEvent motionEvent);
    }

    public KsSplashSlidePathView(Context context) {
        super(context);
        this.MR = Color.parseColor("#66ffffff");
        init();
    }

    private void b(float f2, float f3) {
        float fAbs = Math.abs(f2 - this.MP);
        float fAbs2 = Math.abs(f3 - this.MQ);
        if (fAbs >= 3.0f || fAbs2 >= 3.0f) {
            Path path = this.ML;
            float f4 = this.MP;
            float f5 = this.MQ;
            path.quadTo(f4, f5, (f2 + f4) / 2.0f, (f3 + f5) / 2.0f);
            this.MP = f2;
            this.MQ = f3;
        }
    }

    private void f(MotionEvent motionEvent) {
        if (this.MT.onTouchEvent(motionEvent)) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.ML.reset();
            this.MN = motionEvent.getX();
            float y2 = motionEvent.getY();
            this.MO = y2;
            float f2 = this.MN;
            this.MP = f2;
            this.MQ = y2;
            this.ML.moveTo(f2, y2);
            invalidate();
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                return;
            }
            b(motionEvent.getX(), motionEvent.getY());
            invalidate();
            return;
        }
        this.ML.reset();
        invalidate();
        a aVar = this.MS;
        if (aVar != null) {
            aVar.a(this.MN, this.MO, motionEvent.getX(), motionEvent.getY());
        }
    }

    private void init() {
        this.ML = new Path();
        Paint paint = new Paint();
        this.MM = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.MM.setStrokeWidth(com.kwad.sdk.c.a.a.a(getContext(), 15.0f));
        this.MM.setStyle(Paint.Style.STROKE);
        this.MM.setColor(this.MR);
        this.MM.setDither(true);
        this.MT = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.kwad.components.ad.splashscreen.widget.KsSplashSlidePathView.1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                if (KsSplashSlidePathView.this.MS == null) {
                    return false;
                }
                KsSplashSlidePathView.this.MS.c(motionEvent);
                return true;
            }
        });
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.ML, this.MM);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        f(motionEvent);
        return true;
    }

    public void setOnSlideTouchListener(a aVar) {
        this.MS = aVar;
    }

    public KsSplashSlidePathView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.MR = Color.parseColor("#66ffffff");
        init();
    }
}
