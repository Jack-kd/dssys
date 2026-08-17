package com.sigmob.sdk.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/* loaded from: classes4.dex */
public class LongClickLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private Runnable f38286a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f38287b;

    public LongClickLayout(Context context) {
        super(context);
        this.f38287b = false;
        a(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f38287b = false;
            postDelayed(this.f38286a, 2000);
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            removeCallbacks(this.f38286a);
            if (this.f38287b) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public LongClickLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38287b = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.f38287b = true;
        performLongClick();
    }

    public LongClickLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f38287b = false;
        a(context);
    }

    private void a(Context context) {
        this.f38286a = new Runnable() { // from class: com.sigmob.sdk.nativead.A
            @Override // java.lang.Runnable
            public final void run() {
                this.f38267b.a();
            }
        };
    }
}
