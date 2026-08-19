package com.meishu.sdk.core.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.meishu.sdk.core.safe.i;
import com.meishu.sdk.core.safe.j;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.t1;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class FeedAdOverlayView extends View {
    public static final float EXTEND_DOWN_RATIO = 0.1f;
    public static final float EXTEND_LEFT_RATIO = 0.55f;
    public static final float EXTEND_RIGHT_RATIO = 0.5f;
    public static final float EXTEND_UP_RATIO = 0.15f;
    private static final String TAG = "FeedAdOverlayView";
    private WeakReference<View> adContainerRef;
    private OnOverlayAttachListener attachListener;
    private OnOverlayClickListener clickListener;
    private WeakReference<ViewGroup> contentViewRef;
    private long downEventTime;
    private boolean downInAdArea;
    private float downRawX;
    private float downRawY;
    private float downX;
    private float downY;
    private float extendDownRatio;
    private float extendLeftRatio;
    private float extendRightRatio;
    private float extendUpRatio;
    private boolean interceptAllEvents;
    private InvalidityCheckerListener invalidityChecker;
    private boolean isSliding;
    private i layoutChangeListener;
    private int minSlideDistanceDp;
    private String overlayUniqueId;
    private j scrollChangedListener;
    private boolean slideClickEnabled;
    private int slideScrollDistance;
    private WeakReference<View> slidingTargetRef;
    private float upRawX;
    private float upRawY;

    public interface InvalidityCheckerListener {
        void onInvalid(String str);
    }

    public interface OnOverlayAttachListener {
        void onOverlayAttached();

        void onOverlayDetached();
    }

    public interface OnOverlayClickListener {
        void onOverlayClick(boolean z2, boolean z3, TouchPoint touchPoint, TouchPoint touchPoint2, int i2, String str);
    }

    public FeedAdOverlayView(Context context, View view, OnOverlayClickListener onOverlayClickListener) {
        super(context);
        this.extendUpRatio = 0.15f;
        this.extendDownRatio = 0.1f;
        this.extendLeftRatio = 0.55f;
        this.extendRightRatio = 0.5f;
        this.interceptAllEvents = false;
        this.slideClickEnabled = false;
        this.minSlideDistanceDp = 250;
        this.downInAdArea = false;
        this.isSliding = false;
        this.slideScrollDistance = 0;
        this.adContainerRef = new WeakReference<>(view);
        this.clickListener = onOverlayClickListener;
        setBackgroundColor(0);
    }

    private void dispatchToView(View view, MotionEvent motionEvent, int i2) {
        view.getLocationOnScreen(new int[2]);
        getLocationOnScreen(new int[2]);
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(i2);
        motionEventObtain.offsetLocation(r0[0] - r1[0], r0[1] - r1[1]);
        view.dispatchTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private View findUnderlyingView(ViewGroup viewGroup, float f2, float f3) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt != this) {
                int[] iArr = new int[2];
                childAt.getLocationOnScreen(iArr);
                int i2 = iArr[0];
                if (new Rect(i2, iArr[1], childAt.getWidth() + i2, childAt.getHeight() + iArr[1]).contains((int) f2, (int) f3) && !(childAt instanceof FeedAdOverlayView)) {
                    return childAt;
                }
            }
        }
        return null;
    }

    private void forwardEventToUnderlying(MotionEvent motionEvent, int i2) {
        View viewFindUnderlyingView;
        try {
            WeakReference<ViewGroup> weakReference = this.contentViewRef;
            ViewGroup viewGroup = weakReference != null ? weakReference.get() : null;
            if (viewGroup == null) {
                return;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (i2 == 0) {
                viewFindUnderlyingView = findUnderlyingView(viewGroup, rawX, rawY);
                if (viewFindUnderlyingView == null) {
                    LogUtil.d(TAG, "forwardEventToUnderlying: no underlying view at (" + rawX + "," + rawY + ")");
                    return;
                }
                this.slidingTargetRef = new WeakReference<>(viewFindUnderlyingView);
            } else {
                WeakReference<View> weakReference2 = this.slidingTargetRef;
                View view = weakReference2 != null ? weakReference2.get() : null;
                if (view == null) {
                    return;
                } else {
                    viewFindUnderlyingView = view;
                }
            }
            dispatchToView(viewFindUnderlyingView, motionEvent, i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private float[] toAdContainerCoords(float f2, float f3) {
        return (this.adContainerRef.get() == null || getWidth() == 0 || getHeight() == 0) ? new float[]{f2, f3} : new float[]{(f2 * r0.getWidth()) / getWidth(), (f3 * r0.getHeight()) / getHeight()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition(ViewGroup viewGroup) {
        View view = this.adContainerRef.get();
        if (view == null || viewGroup == null || view.getWidth() == 0 || view.getHeight() == 0) {
            return;
        }
        if (view.getWindowToken() == null) {
            if (getVisibility() != 4) {
                setVisibility(4);
                return;
            }
            return;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (view.getHeight() + iArr[1] > 0 && iArr[1] < i3) {
            if (view.getWidth() + iArr[0] > 0 && iArr[0] < i2) {
                if (getVisibility() != 0) {
                    setVisibility(0);
                }
                int i4 = iArr[0];
                float f2 = i2;
                int i5 = i4 - ((int) (this.extendLeftRatio * f2));
                float f3 = i3;
                int i6 = iArr[1] - ((int) (this.extendUpRatio * f3));
                int measuredWidth = view.getMeasuredWidth() + i4 + ((int) (f2 * this.extendRightRatio));
                int measuredHeight = view.getMeasuredHeight() + iArr[1] + ((int) (f3 * this.extendDownRatio));
                int[] iArr2 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                int i7 = i5 - iArr2[0];
                int i8 = i6 - iArr2[1];
                int i9 = measuredWidth - i5;
                int i10 = measuredHeight - i6;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                if (marginLayoutParams == null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(i9, i10);
                    marginLayoutParams2.leftMargin = i7;
                    marginLayoutParams2.topMargin = i8;
                    setLayoutParams(marginLayoutParams2);
                    return;
                }
                if (marginLayoutParams.width == i9 && marginLayoutParams.height == i10 && marginLayoutParams.leftMargin == i7 && marginLayoutParams.topMargin == i8) {
                    return;
                }
                marginLayoutParams.width = i9;
                marginLayoutParams.height = i10;
                marginLayoutParams.leftMargin = i7;
                marginLayoutParams.topMargin = i8;
                setLayoutParams(marginLayoutParams);
                return;
            }
        }
        if (getVisibility() != 4) {
            setVisibility(4);
        }
    }

    public void attachToContent(final ViewGroup viewGroup) {
        try {
            this.contentViewRef = new WeakReference<>(viewGroup);
            viewGroup.addView(this, new ViewGroup.LayoutParams(0, 0));
            this.scrollChangedListener = new j() { // from class: com.meishu.sdk.core.view.FeedAdOverlayView.1
                @Override // com.meishu.sdk.core.safe.j
                public void safeOnScrollChanged() {
                    FeedAdOverlayView.this.updatePosition(viewGroup);
                }
            };
            this.layoutChangeListener = new i() { // from class: com.meishu.sdk.core.view.FeedAdOverlayView.2
                @Override // com.meishu.sdk.core.safe.i
                public void safeOnLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    FeedAdOverlayView.this.updatePosition(viewGroup);
                }
            };
            View view = this.adContainerRef.get();
            if (view != null) {
                view.getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
                view.addOnLayoutChangeListener(this.layoutChangeListener);
            }
            viewGroup.post(new l() { // from class: com.meishu.sdk.core.view.FeedAdOverlayView.3
                @Override // com.meishu.sdk.core.safe.l
                public void safeRun() {
                    FeedAdOverlayView.this.updatePosition(viewGroup);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void detach() {
        try {
            View view = this.adContainerRef.get();
            if (view != null) {
                if (this.scrollChangedListener != null) {
                    view.getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
                }
                i iVar = this.layoutChangeListener;
                if (iVar != null) {
                    view.removeOnLayoutChangeListener(iVar);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.scrollChangedListener = null;
        this.layoutChangeListener = null;
        this.clickListener = null;
        this.attachListener = null;
        this.invalidityChecker = null;
        try {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        OnOverlayAttachListener onOverlayAttachListener = this.attachListener;
        if (onOverlayAttachListener != null) {
            onOverlayAttachListener.onOverlayAttached();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        OnOverlayAttachListener onOverlayAttachListener = this.attachListener;
        if (onOverlayAttachListener != null) {
            onOverlayAttachListener.onOverlayDetached();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action;
        boolean z2;
        char c2;
        try {
            action = motionEvent.getAction();
            z2 = false;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (action == 0) {
            this.downRawX = motionEvent.getRawX();
            this.downRawY = motionEvent.getRawY();
            this.downX = motionEvent.getX();
            this.downY = motionEvent.getY();
            this.upRawX = this.downRawX;
            this.upRawY = this.downRawY;
            this.downEventTime = System.currentTimeMillis();
            this.isSliding = false;
            this.slideScrollDistance = 0;
            this.slidingTargetRef = null;
            this.downInAdArea = t1.a(this.adContainerRef.get(), this.downRawX, this.downRawY);
            forwardEventToUnderlying(motionEvent, 0);
            return true;
        }
        if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    return this.interceptAllEvents;
                }
                forwardEventToUnderlying(motionEvent, 3);
                this.isSliding = false;
                InvalidityCheckerListener invalidityCheckerListener = this.invalidityChecker;
                if (invalidityCheckerListener != null) {
                    invalidityCheckerListener.onInvalid(this.overlayUniqueId);
                }
                return this.interceptAllEvents;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            this.slideScrollDistance = (int) Math.max(Math.abs(rawX - this.downRawX), Math.abs(rawY - this.downRawY));
            if (!this.isSliding) {
                if (this.slideScrollDistance > ViewConfiguration.get(getContext()).getScaledTouchSlop()) {
                    this.isSliding = true;
                }
            }
            forwardEventToUnderlying(motionEvent, 2);
            this.upRawX = rawX;
            this.upRawY = rawY;
            return true;
        }
        this.upRawX = motionEvent.getRawX();
        this.upRawY = motionEvent.getRawY();
        float f2 = getContext().getResources().getDisplayMetrics().density;
        boolean z3 = this.isSliding;
        if (this.slideClickEnabled && z3 && this.slideScrollDistance / f2 >= this.minSlideDistanceDp) {
            c2 = 0;
            z2 = true;
        } else {
            c2 = 0;
        }
        if (z3) {
            forwardEventToUnderlying(motionEvent, 1);
        } else {
            forwardEventToUnderlying(motionEvent, 3);
        }
        if ((!z3 || z2) && this.clickListener != null) {
            float[] adContainerCoords = toAdContainerCoords(this.downX, this.downY);
            float[] adContainerCoords2 = toAdContainerCoords(motionEvent.getX(), motionEvent.getY());
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.clickListener.onOverlayClick(z2, this.downInAdArea, new TouchPoint(this.downRawX, this.downRawY, this.downEventTime, this.upRawX, this.upRawY, jCurrentTimeMillis), new TouchPoint(adContainerCoords[c2], adContainerCoords[1], this.downEventTime, adContainerCoords2[c2], adContainerCoords2[1], jCurrentTimeMillis), this.slideScrollDistance, this.overlayUniqueId);
        } else {
            InvalidityCheckerListener invalidityCheckerListener2 = this.invalidityChecker;
            if (invalidityCheckerListener2 != null) {
                invalidityCheckerListener2.onInvalid(this.overlayUniqueId);
            }
        }
        return this.interceptAllEvents;
    }

    public void releaseAdContainerRef() {
        View view = this.adContainerRef.get();
        if (view != null) {
            try {
                if (this.scrollChangedListener != null) {
                    view.getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
                }
                i iVar = this.layoutChangeListener;
                if (iVar != null) {
                    view.removeOnLayoutChangeListener(iVar);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.adContainerRef = new WeakReference<>(null);
        if (getVisibility() != 4) {
            setVisibility(4);
        }
    }

    public void requestPositionUpdate() {
        try {
            WeakReference<ViewGroup> weakReference = this.contentViewRef;
            ViewGroup viewGroup = weakReference != null ? weakReference.get() : null;
            if (viewGroup != null) {
                updatePosition(viewGroup);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setAttachListener(OnOverlayAttachListener onOverlayAttachListener) {
        this.attachListener = onOverlayAttachListener;
    }

    public void setExtendRatios(int i2, int i3, int i4, int i5) {
        this.extendUpRatio = i2 / 100.0f;
        this.extendDownRatio = i3 / 100.0f;
        this.extendLeftRatio = i4 / 100.0f;
        this.extendRightRatio = i5 / 100.0f;
    }

    public void setInvalidityChecker(InvalidityCheckerListener invalidityCheckerListener) {
        this.invalidityChecker = invalidityCheckerListener;
    }

    public void setMinSlideDistanceDp(int i2) {
        this.minSlideDistanceDp = i2;
    }

    public void setOverlayUniqueId(String str) {
        this.overlayUniqueId = str;
    }

    public void setSlideClickEnabled(boolean z2) {
        this.slideClickEnabled = z2;
    }

    public void updateAdContainer(View view) {
        if (view == null) {
            return;
        }
        View view2 = this.adContainerRef.get();
        if (view2 != null) {
            if (this.scrollChangedListener != null) {
                try {
                    view2.getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            i iVar = this.layoutChangeListener;
            if (iVar != null) {
                try {
                    view2.removeOnLayoutChangeListener(iVar);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
        this.adContainerRef = new WeakReference<>(view);
        if (this.scrollChangedListener != null) {
            try {
                view.getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        i iVar2 = this.layoutChangeListener;
        if (iVar2 != null) {
            try {
                view.addOnLayoutChangeListener(iVar2);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }
}
