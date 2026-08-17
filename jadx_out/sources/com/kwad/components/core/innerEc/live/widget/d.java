package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.kwad.sdk.utils.az;
import com.kwad.sdk.utils.cc;

/* loaded from: classes4.dex */
public class d extends GestureDetector implements cc.a {
    private static final int Ym = ViewConfiguration.getLongPressTimeout();
    private static final int Yn = ViewConfiguration.getTapTimeout();
    public static final int Yo = ViewConfiguration.getDoubleTapTimeout();
    private boolean YA;
    private float YB;
    private float YC;
    private float YD;
    private float YE;
    private boolean YF;
    private long YG;
    private int Yh;
    private int Yi;
    private int Yj;
    private int Yk;
    private int Yl;
    private final GestureDetector.OnGestureListener Yp;
    private GestureDetector.OnDoubleTapListener Yq;
    private boolean Yr;
    private boolean Ys;
    private boolean Yt;
    private boolean Yu;
    private boolean Yv;
    private boolean Yw;
    private boolean Yx;
    private MotionEvent Yy;
    private MotionEvent Yz;
    private final Handler jk;
    private VelocityTracker mVelocityTracker;

    public d(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
        if (!this.Yw) {
            return false;
        }
        long eventTime = motionEvent3.getEventTime() - motionEvent2.getEventTime();
        if (eventTime <= this.YG && eventTime >= 10) {
            int x2 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y2 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            if ((x2 * x2) + (y2 * y2) < ((motionEvent.getFlags() & 8) != 0 ? 0 : this.Yj)) {
                return true;
            }
        }
        return false;
    }

    private void cancel() {
        this.jk.removeMessages(1);
        this.jk.removeMessages(2);
        this.jk.removeMessages(3);
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
        this.YA = false;
        this.Yr = false;
        this.Yv = false;
        this.Yw = false;
        this.Ys = false;
        this.Yt = false;
        this.Yu = false;
        this.Yx = false;
    }

    private void init(Context context) {
        int scaledDoubleTapSlop;
        int touchSlop;
        az.checkNotNull(this.Yp);
        this.YF = true;
        int i2 = 300;
        if (context == null) {
            touchSlop = ViewConfiguration.getTouchSlop();
            this.Yk = ViewConfiguration.getMinimumFlingVelocity();
            this.Yl = ViewConfiguration.getMaximumFlingVelocity();
            scaledDoubleTapSlop = 300;
            i2 = touchSlop;
        } else {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.Yk = viewConfiguration.getScaledMinimumFlingVelocity();
            this.Yl = viewConfiguration.getScaledMaximumFlingVelocity();
            touchSlop = scaledTouchSlop;
        }
        this.Yh = touchSlop * touchSlop;
        this.Yi = i2 * i2;
        this.Yj = scaledDoubleTapSlop * scaledDoubleTapSlop;
    }

    private void sP() {
        this.jk.removeMessages(1);
        this.jk.removeMessages(2);
        this.jk.removeMessages(3);
        this.YA = false;
        this.Yv = false;
        this.Yw = false;
        this.Ys = false;
        this.Yt = false;
        this.Yu = false;
        this.Yx = false;
    }

    private void sQ() {
        this.jk.removeMessages(3);
        this.Ys = false;
        this.Yt = true;
        this.Yp.onLongPress(this.Yy);
    }

    public final void J(long j2) {
        this.YG = j2;
    }

    @Override // android.view.GestureDetector
    public boolean isLongpressEnabled() {
        return this.YF;
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnDoubleTap;
        MotionEvent motionEvent2;
        boolean zOnFling;
        GestureDetector.OnDoubleTapListener onDoubleTapListener;
        boolean zOnScroll;
        int action = motionEvent.getAction();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i2 = action & 255;
        boolean z2 = i2 == 6;
        int actionIndex = z2 ? motionEvent.getActionIndex() : -1;
        boolean z3 = (motionEvent.getFlags() & 8) != 0;
        int pointerCount = motionEvent.getPointerCount();
        float x2 = 0.0f;
        float y2 = 0.0f;
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (actionIndex != i3) {
                x2 += motionEvent.getX(i3);
                y2 += motionEvent.getY(i3);
            }
        }
        float f2 = z2 ? pointerCount - 1 : pointerCount;
        float f3 = x2 / f2;
        float f4 = y2 / f2;
        if (i2 == 0) {
            if (this.Yq == null) {
                zOnDoubleTap = false;
            } else {
                boolean zHasMessages = this.jk.hasMessages(3);
                if (zHasMessages) {
                    this.jk.removeMessages(3);
                }
                MotionEvent motionEvent3 = this.Yy;
                if (motionEvent3 == null || (motionEvent2 = this.Yz) == null || !zHasMessages || !a(motionEvent3, motionEvent2, motionEvent)) {
                    this.jk.sendEmptyMessageDelayed(3, this.YG);
                    zOnDoubleTap = false;
                } else {
                    this.YA = true;
                    zOnDoubleTap = this.Yq.onDoubleTap(this.Yy) | this.Yq.onDoubleTapEvent(motionEvent);
                }
            }
            this.YB = f3;
            this.YD = f3;
            this.YC = f4;
            this.YE = f4;
            MotionEvent motionEvent4 = this.Yy;
            if (motionEvent4 != null) {
                motionEvent4.recycle();
            }
            this.Yy = MotionEvent.obtain(motionEvent);
            this.Yv = true;
            this.Yw = true;
            this.Yr = true;
            this.Yt = false;
            this.Ys = false;
            if (this.YF) {
                this.jk.removeMessages(2);
                this.jk.sendEmptyMessageAtTime(2, this.Yy.getDownTime() + Ym);
            }
            this.jk.sendEmptyMessageAtTime(1, this.Yy.getDownTime() + Yn);
            return this.Yp.onDown(motionEvent) | zOnDoubleTap;
        }
        if (i2 == 1) {
            this.Yr = false;
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            if (this.YA) {
                zOnFling = this.Yq.onDoubleTapEvent(motionEvent);
            } else {
                if (this.Yt) {
                    this.jk.removeMessages(3);
                    this.Yt = false;
                } else if (this.Yv && !this.Yx) {
                    boolean zOnSingleTapUp = this.Yp.onSingleTapUp(motionEvent);
                    if (this.Ys && (onDoubleTapListener = this.Yq) != null) {
                        onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                    }
                    zOnFling = zOnSingleTapUp;
                } else if (!this.Yx) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    int pointerId = motionEvent.getPointerId(0);
                    velocityTracker.computeCurrentVelocity(1000, this.Yl);
                    float yVelocity = velocityTracker.getYVelocity(pointerId);
                    float xVelocity = velocityTracker.getXVelocity(pointerId);
                    if (Math.abs(yVelocity) > this.Yk || Math.abs(xVelocity) > this.Yk) {
                        zOnFling = this.Yp.onFling(this.Yy, motionEvent, xVelocity, yVelocity);
                    }
                }
                zOnFling = false;
            }
            MotionEvent motionEvent5 = this.Yz;
            if (motionEvent5 != null) {
                motionEvent5.recycle();
            }
            this.Yz = motionEventObtain;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
            this.YA = false;
            this.Ys = false;
            this.Yx = false;
            this.jk.removeMessages(1);
            this.jk.removeMessages(2);
            return zOnFling;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                cancel();
                return false;
            }
            if (i2 == 5) {
                this.YB = f3;
                this.YD = f3;
                this.YC = f4;
                this.YE = f4;
                sP();
                return false;
            }
            if (i2 == 6) {
                this.YB = f3;
                this.YD = f3;
                this.YC = f4;
                this.YE = f4;
                this.mVelocityTracker.computeCurrentVelocity(1000, this.Yl);
                int actionIndex2 = motionEvent.getActionIndex();
                int pointerId2 = motionEvent.getPointerId(actionIndex2);
                float xVelocity2 = this.mVelocityTracker.getXVelocity(pointerId2);
                float yVelocity2 = this.mVelocityTracker.getYVelocity(pointerId2);
                for (int i4 = 0; i4 < pointerCount; i4++) {
                    if (i4 != actionIndex2) {
                        int pointerId3 = motionEvent.getPointerId(i4);
                        if ((this.mVelocityTracker.getXVelocity(pointerId3) * xVelocity2) + (this.mVelocityTracker.getYVelocity(pointerId3) * yVelocity2) < 0.0f) {
                            this.mVelocityTracker.clear();
                            return false;
                        }
                    }
                }
            }
        } else if (!this.Yt && !this.Yu) {
            float f5 = this.YB - f3;
            float f6 = this.YC - f4;
            if (this.YA) {
                return this.Yq.onDoubleTapEvent(motionEvent);
            }
            if (this.Yv) {
                int i5 = (int) (f3 - this.YD);
                int i6 = (int) (f4 - this.YE);
                int i7 = (i5 * i5) + (i6 * i6);
                if (i7 > (z3 ? 0 : this.Yh)) {
                    zOnScroll = this.Yp.onScroll(this.Yy, motionEvent, f5, f6);
                    this.YB = f3;
                    this.YC = f4;
                    this.Yv = false;
                    this.jk.removeMessages(3);
                    this.jk.removeMessages(1);
                    this.jk.removeMessages(2);
                } else {
                    zOnScroll = false;
                }
                if (i7 > (z3 ? 0 : this.Yi)) {
                    this.Yw = false;
                }
                return zOnScroll;
            }
            if (Math.abs(f5) >= 1.0f || Math.abs(f6) >= 1.0f) {
                boolean zOnScroll2 = this.Yp.onScroll(this.Yy, motionEvent, f5, f6);
                this.YB = f3;
                this.YC = f4;
                return zOnScroll2;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector
    public void setIsLongpressEnabled(boolean z2) {
        this.YF = z2;
    }

    @Override // android.view.GestureDetector
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.Yq = onDoubleTapListener;
    }

    private d(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        super(context, onGestureListener, null);
        this.YG = Yo;
        this.jk = new cc(this);
        this.Yp = onGestureListener;
        if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
            setOnDoubleTapListener((GestureDetector.OnDoubleTapListener) onGestureListener);
        }
        init(context);
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        GestureDetector.OnDoubleTapListener onDoubleTapListener;
        int i2 = message.what;
        if (i2 == 1) {
            this.Yp.onShowPress(this.Yy);
            return;
        }
        if (i2 == 2) {
            sQ();
            return;
        }
        if (i2 == 3 && (onDoubleTapListener = this.Yq) != null) {
            if (!this.Yr) {
                onDoubleTapListener.onSingleTapConfirmed(this.Yy);
            } else {
                this.Ys = true;
            }
        }
    }
}
