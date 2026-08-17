package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.smartdigimkt.h2.g0;
import com.smartdigimkt.h2.h0;
import com.smartdigimkt.i0.a;
import com.smartdigimkt.m1.k;
import com.smartdigimkt.r2.o;
import com.smartdigimkt.v1.d4;

/* loaded from: classes5.dex */
public class OwnNativeATView extends FrameLayout implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public o f43506a;

    /* renamed from: b, reason: collision with root package name */
    public d4 f43507b;

    /* renamed from: c, reason: collision with root package name */
    public h0 f43508c;

    public OwnNativeATView(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        o oVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            o oVar2 = this.f43506a;
            if (oVar2 != null) {
                oVar2.a((int) motionEvent.getRawX(), (int) motionEvent.getRawY(), (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        } else if ((action == 1 || action == 3) && (oVar = this.f43506a) != null) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            int x2 = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            oVar.f43004c = rawX;
            oVar.f43005d = rawY;
            oVar.f43008g = x2;
            oVar.f43009h = y2;
            oVar.f43011j = System.currentTimeMillis();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public a getAdClickRecord(int i2) {
        o oVar = this.f43506a;
        if (oVar != null) {
            return oVar.a(0, i2);
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        synchronized (this) {
            try {
                try {
                    h0 h0Var = this.f43508c;
                    if (h0Var != null) {
                        if (h0Var.a(motionEvent)) {
                            return true;
                        }
                    }
                } catch (Throwable unused) {
                }
                return super.onTouchEvent(motionEvent);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z2) {
        super.onVisibilityAggregated(z2);
        if (z2) {
            d4 d4Var = this.f43507b;
            if (d4Var != null) {
                ((k) d4Var).f41717a.a(110);
                return;
            }
            return;
        }
        d4 d4Var2 = this.f43507b;
        if (d4Var2 != null) {
            ((k) d4Var2).f41717a.a(111);
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (Build.VERSION.SDK_INT < 28) {
            if (z2) {
                d4 d4Var = this.f43507b;
                if (d4Var != null) {
                    ((k) d4Var).f41717a.a(110);
                    return;
                }
                return;
            }
            d4 d4Var2 = this.f43507b;
            if (d4Var2 != null) {
                ((k) d4Var2).f41717a.a(111);
            }
        }
    }

    public void releaseAllCallback() {
        this.f43508c = null;
        this.f43506a = null;
        this.f43507b = null;
    }

    @Override // com.smartdigimkt.h2.g0
    public void setCallback(h0 h0Var) {
        synchronized (this) {
            this.f43508c = h0Var;
        }
    }

    public void setClickRecordHelper(o oVar) {
        this.f43506a = oVar;
    }

    public void setLifeCallback(d4 d4Var) {
        this.f43507b = d4Var;
    }

    public OwnNativeATView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OwnNativeATView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
