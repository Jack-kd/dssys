package com.anythink.core.common.inner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes2.dex */
public class CloseShadeView extends View {

    /* renamed from: a, reason: collision with root package name */
    private final String f4951a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4952b;

    /* renamed from: c, reason: collision with root package name */
    private View.OnClickListener f4953c;

    /* renamed from: d, reason: collision with root package name */
    private View.OnTouchListener f4954d;

    public CloseShadeView(Context context) {
        this(context, null);
    }

    private void a() {
        setClickable(true);
    }

    public boolean isTouch() {
        return this.f4952b;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f4953c = onClickListener;
        super.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.core.common.inner.ui.CloseShadeView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CloseShadeView.a(CloseShadeView.this);
                if (CloseShadeView.this.f4953c != null) {
                    CloseShadeView.this.f4953c.onClick(view);
                }
            }
        });
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f4954d = onTouchListener;
        super.setOnTouchListener(new View.OnTouchListener() { // from class: com.anythink.core.common.inner.ui.CloseShadeView.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                CloseShadeView.a(CloseShadeView.this, motionEvent);
                if (CloseShadeView.this.f4954d != null) {
                    return CloseShadeView.this.f4954d.onTouch(view, motionEvent);
                }
                return false;
            }
        });
    }

    public CloseShadeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(MotionEvent motionEvent) {
        this.f4952b = true;
        if (motionEvent.getAction() != 0) {
            return;
        }
        c();
    }

    private void b() {
        this.f4952b = true;
        c();
    }

    private void c() {
        if (getVisibility() != 8) {
            setVisibility(8);
        }
    }

    public CloseShadeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4951a = CloseShadeView.class.getSimpleName();
        this.f4952b = false;
        setClickable(true);
    }

    public static /* synthetic */ void a(CloseShadeView closeShadeView) {
        closeShadeView.f4952b = true;
        closeShadeView.c();
    }

    public static /* synthetic */ void a(CloseShadeView closeShadeView, MotionEvent motionEvent) {
        closeShadeView.f4952b = true;
        if (motionEvent.getAction() != 0) {
            return;
        }
        closeShadeView.c();
    }
}
