package com.sigmob.sdk.mraid;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.Preconditions;

/* renamed from: com.sigmob.sdk.mraid.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1310b extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    static final float f37862a = 30.0f;

    /* renamed from: b, reason: collision with root package name */
    static final float f37863b = 50.0f;

    /* renamed from: c, reason: collision with root package name */
    static final float f37864c = 8.0f;

    /* renamed from: d, reason: collision with root package name */
    private final int f37865d;

    /* renamed from: e, reason: collision with root package name */
    private InterfaceC0775b f37866e;

    /* renamed from: f, reason: collision with root package name */
    private final StateListDrawable f37867f;

    /* renamed from: g, reason: collision with root package name */
    private a f37868g;

    /* renamed from: h, reason: collision with root package name */
    private final int f37869h;

    /* renamed from: i, reason: collision with root package name */
    private final int f37870i;

    /* renamed from: j, reason: collision with root package name */
    private final int f37871j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f37872k;

    /* renamed from: l, reason: collision with root package name */
    private final Rect f37873l;

    /* renamed from: m, reason: collision with root package name */
    private final Rect f37874m;

    /* renamed from: n, reason: collision with root package name */
    private final Rect f37875n;

    /* renamed from: o, reason: collision with root package name */
    private final Rect f37876o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f37877p;

    /* renamed from: q, reason: collision with root package name */
    private c f37878q;

    /* renamed from: com.sigmob.sdk.mraid.b$a */
    public enum a {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);


        /* renamed from: h, reason: collision with root package name */
        private final int f37887h;

        a(int i2) {
            this.f37887h = i2;
        }

        public int a() {
            return this.f37887h;
        }
    }

    /* renamed from: com.sigmob.sdk.mraid.b$b, reason: collision with other inner class name */
    public interface InterfaceC0775b {
        void a();
    }

    /* renamed from: com.sigmob.sdk.mraid.b$c */
    public final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1310b.this.setClosePressed(false);
        }
    }

    public C1310b(Context context) {
        this(context, null, 0);
    }

    private void a(a aVar, int i2, Rect rect, Rect rect2) {
        Gravity.apply(aVar.a(), i2, i2, rect, rect2);
    }

    private void b(a aVar, Rect rect, Rect rect2) {
        a(aVar, this.f37870i, rect, rect2);
    }

    private void c() {
        playSoundEffect(0);
        InterfaceC0775b interfaceC0775b = this.f37866e;
        if (interfaceC0775b != null) {
            interfaceC0775b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePressed(boolean z2) {
        if (z2 == b()) {
            return;
        }
        this.f37867f.setState(z2 ? FrameLayout.SELECTED_STATE_SET : FrameLayout.EMPTY_STATE_SET);
        invalidate(this.f37874m);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f37872k) {
            this.f37872k = false;
            this.f37873l.set(0, 0, getWidth(), getHeight());
            a(this.f37868g, this.f37873l, this.f37874m);
            this.f37876o.set(this.f37874m);
            Rect rect = this.f37876o;
            int i2 = this.f37871j;
            rect.inset(i2, i2);
            b(this.f37868g, this.f37876o, this.f37875n);
            this.f37867f.setBounds(this.f37875n);
        }
        if (this.f37867f.isVisible()) {
            this.f37867f.draw(canvas);
        }
    }

    public Rect getCloseBounds() {
        return this.f37874m;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.f37872k = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f37865d) || !a()) {
            setClosePressed(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setClosePressed(true);
        } else if (action != 1) {
            if (action == 3) {
                setClosePressed(false);
            }
        } else if (b()) {
            if (this.f37878q == null) {
                this.f37878q = new c();
            }
            postDelayed(this.f37878q, ViewConfiguration.getPressedStateDuration());
            c();
        }
        return true;
    }

    public void setCloseAlwaysInteractable(boolean z2) {
        this.f37877p = z2;
    }

    public void setCloseBoundChanged(boolean z2) {
        this.f37872k = z2;
    }

    public void setCloseBounds(Rect rect) {
        this.f37874m.set(rect);
    }

    public void setClosePosition(a aVar) {
        Preconditions.checkNotNull(aVar);
        this.f37868g = aVar;
        this.f37872k = true;
        invalidate();
    }

    public void setCloseVisible(boolean z2) {
        if (this.f37867f.setVisible(z2, false)) {
            invalidate(this.f37874m);
        }
    }

    public void setOnCloseListener(InterfaceC0775b interfaceC0775b) {
        this.f37866e = interfaceC0775b;
    }

    public C1310b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void a(a aVar, Rect rect, Rect rect2) {
        a(aVar, this.f37869h, rect, rect2);
    }

    public boolean b() {
        return this.f37867f.getState() == FrameLayout.SELECTED_STATE_SET;
    }

    public C1310b(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f37873l = new Rect();
        this.f37874m = new Rect();
        this.f37875n = new Rect();
        this.f37876o = new Rect();
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f37867f = stateListDrawable;
        this.f37868g = a.TOP_RIGHT;
        stateListDrawable.setState(FrameLayout.EMPTY_STATE_SET);
        stateListDrawable.setCallback(this);
        this.f37865d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f37869h = Dips.asIntPixels(50.0f, context);
        this.f37870i = Dips.asIntPixels(f37862a, context);
        this.f37871j = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f37877p = true;
    }

    public boolean a() {
        return this.f37877p || this.f37867f.isVisible();
    }

    public boolean a(int i2, int i3, int i4) {
        Rect rect = this.f37874m;
        return i2 >= rect.left - i4 && i3 >= rect.top - i4 && i2 < rect.right + i4 && i3 < rect.bottom + i4;
    }
}
