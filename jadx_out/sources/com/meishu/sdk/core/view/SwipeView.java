package com.meishu.sdk.core.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* loaded from: classes4.dex */
public class SwipeView extends RelativeLayout {
    private static final String TAG = "SwipeView";
    private int clkType;
    private int distance;
    private float downloadX;
    private float downloadY;
    private float endMoveX;
    private float endMoveY;
    private boolean isMoved;
    private OnSwipeListener mListener;
    private Paint mPaint;
    private Path mPath;
    private float maxMoveX;
    private float maxMoveY;

    public interface OnSwipeListener {
        void onSwipe();
    }

    public SwipeView(Context context) {
        this(context, null);
    }

    private void init() {
        this.mPaint = new Paint();
        this.mPath = new Path();
        this.mPaint.setColor(-1);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downloadX = motionEvent.getRawX();
            this.downloadY = motionEvent.getRawY();
            motionEvent.getX();
            motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                motionEvent.getX();
                motionEvent.getY();
                float f2 = rawY - this.downloadY;
                if (f2 < 0.0f && this.maxMoveY < Math.abs(f2)) {
                    this.maxMoveY = Math.abs(rawY - this.downloadY);
                }
                float f3 = this.maxMoveX;
                float f4 = rawX - this.downloadX;
                if (f3 < f4) {
                    this.maxMoveX = f4;
                }
                this.endMoveX = f4;
                this.endMoveY = rawY - this.downloadY;
            }
        } else {
            if ((this.clkType & 2) == 2 && this.maxMoveX < 10.0f && this.maxMoveY < 10.0f && Math.abs(this.endMoveX) < 10.0f && Math.abs(this.endMoveY) < 10.0f) {
                return false;
            }
            if ((this.clkType & 32) == 32 && this.maxMoveY > this.distance && this.endMoveY < 0.0f && Math.abs(this.endMoveX) / Math.abs(this.endMoveY) < 1.0f) {
                this.mListener.onSwipe();
                this.maxMoveX = 0.0f;
                this.maxMoveY = 0.0f;
                this.isMoved = true;
                return true;
            }
            if ((this.clkType & 128) == 128) {
                Math.abs(this.endMoveX);
                Math.abs(this.endMoveY);
                if (Math.abs(this.endMoveX) > this.distance || Math.abs(this.endMoveY) > this.distance) {
                    this.mListener.onSwipe();
                    this.maxMoveX = 0.0f;
                    this.maxMoveY = 0.0f;
                    this.isMoved = true;
                    return true;
                }
            }
        }
        return true;
    }

    public void setMoveDistance(int i2, int i3) {
        this.clkType = i2;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i4 = displayMetrics.widthPixels;
        float f2 = i4;
        float f3 = displayMetrics.density * 360.0f;
        if (f2 > f3) {
            i4 = (int) f3;
        }
        this.distance = (i4 * i3) / 100;
    }

    public void setOnSwipeListener(OnSwipeListener onSwipeListener) {
        this.mListener = onSwipeListener;
    }

    public SwipeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
