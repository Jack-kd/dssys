package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.graphics.Color;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;

/* loaded from: classes5.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private int f46335a;

    /* renamed from: b, reason: collision with root package name */
    private int f46336b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46337c;

    /* renamed from: d, reason: collision with root package name */
    private Context f46338d;

    /* renamed from: e, reason: collision with root package name */
    private WindowManager f46339e;

    /* renamed from: f, reason: collision with root package name */
    private View f46340f;

    /* renamed from: g, reason: collision with root package name */
    private b f46341g;

    /* renamed from: h, reason: collision with root package name */
    private a f46342h;

    /* renamed from: i, reason: collision with root package name */
    private int f46343i = Color.parseColor("#A6020202");

    /* renamed from: j, reason: collision with root package name */
    boolean f46344j = false;

    public interface a {
        void a();
    }

    public class b extends FrameLayout {
        public b(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            KeyEvent.DispatcherState keyDispatcherState;
            if (keyEvent.getKeyCode() == 4 && getKeyDispatcherState() != null) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() != 1 || (keyDispatcherState = getKeyDispatcherState()) == null || !keyDispatcherState.isTracking(keyEvent) || keyEvent.isCanceled()) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                l lVar = l.this;
                if (lVar.f46344j) {
                    lVar.a();
                }
                return true;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if ((motionEvent.getAction() != 0 || (x2 >= 0 && x2 < getWidth() && y2 >= 0 && y2 < getHeight())) && motionEvent.getAction() != 4) {
                return super.onTouchEvent(motionEvent);
            }
            return true;
        }
    }

    public l(int i2, int i3) {
        this.f46335a = -2;
        this.f46336b = -2;
        this.f46335a = i2;
        this.f46336b = i3;
    }

    private int a(int i2) {
        return (i2 & (-8815129)) | 1073742368;
    }

    public void b(View view, int i2) {
        synchronized (this) {
            try {
                if (!b() && this.f46340f != null) {
                    this.f46337c = true;
                    WindowManager.LayoutParams layoutParamsA = a(view.getWindowToken());
                    if (i2 != 0) {
                        layoutParamsA.gravity = i2;
                    }
                    b(layoutParamsA);
                    layoutParamsA.x = 0;
                    layoutParamsA.y = 0;
                    a(layoutParamsA);
                }
            } finally {
            }
        }
    }

    public l(View view, int i2, int i3) {
        this.f46335a = -2;
        this.f46336b = -2;
        if (view != null) {
            Context context = view.getContext();
            this.f46338d = context;
            this.f46339e = (WindowManager) context.getSystemService("window");
        }
        a(view);
        this.f46335a = i2;
        this.f46336b = i3;
    }

    private WindowManager.LayoutParams a(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.flags = a(layoutParams.flags);
        layoutParams.type = 1000;
        layoutParams.token = iBinder;
        layoutParams.format = -3;
        layoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    private void b(WindowManager.LayoutParams layoutParams) {
        View view = this.f46340f;
        if (view == null || this.f46338d == null || this.f46339e == null) {
            throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
        }
        this.f46341g = a(view, layoutParams.gravity);
    }

    private b a(View view, int i2) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = r.i(view.getContext());
        layoutParams.gravity = i2;
        b bVar = new b(this.f46338d);
        bVar.addView(view, layoutParams);
        bVar.setClipChildren(false);
        bVar.setClipToPadding(false);
        bVar.invalidate();
        bVar.setBackgroundColor(this.f46343i);
        return bVar;
    }

    public boolean b() {
        return this.f46337c;
    }

    public void a() {
        synchronized (this) {
            try {
                if (b()) {
                    b bVar = this.f46341g;
                    View view = this.f46340f;
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    this.f46337c = false;
                    a(bVar, viewGroup, view);
                    a aVar = this.f46342h;
                    if (aVar != null) {
                        aVar.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(View view) {
        if (b()) {
            return;
        }
        this.f46340f = view;
        if (this.f46338d == null && view != null) {
            this.f46338d = view.getContext();
        }
        if (this.f46339e != null || this.f46340f == null) {
            return;
        }
        this.f46339e = (WindowManager) this.f46338d.getSystemService("window");
    }

    private void a(View view, ViewGroup viewGroup, View view2) {
        if (view.getParent() != null) {
            this.f46339e.removeViewImmediate(view);
        }
        if (viewGroup != null) {
            viewGroup.removeView(view2);
        }
        ((ViewGroup) view2).removeAllViews();
        this.f46341g = null;
        this.f46340f = null;
        this.f46338d = null;
    }

    private void a(WindowManager.LayoutParams layoutParams) {
        Context context = this.f46338d;
        if (context != null) {
            layoutParams.packageName = context.getPackageName();
        }
        this.f46339e.addView(this.f46341g, layoutParams);
    }
}
