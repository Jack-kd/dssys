package com.sigmob.sdk.base.common;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* loaded from: classes4.dex */
public class aq extends GestureDetector {

    /* renamed from: a, reason: collision with root package name */
    private final View f35834a;

    /* renamed from: b, reason: collision with root package name */
    private final C1248c f35835b;

    private aq(Context context, View view, C1248c c1248c) {
        super(context, c1248c);
        this.f35835b = c1248c;
        this.f35834a = view;
        setIsLongpressEnabled(false);
    }

    public void a() {
        this.f35835b.b();
    }

    public void b() {
        this.f35835b.c();
    }

    public boolean c() {
        return this.f35835b.d();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f35835b.a();
            return zOnTouchEvent;
        }
        if (action == 2 && !a(motionEvent, this.f35834a)) {
            a();
        }
        return zOnTouchEvent;
    }

    public aq(Context context, View view, BaseAdUnit baseAdUnit) {
        this(context, view, new C1248c(view, baseAdUnit));
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (motionEvent != null && view != null) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (x2 >= 0.0f && x2 <= view.getWidth() && y2 >= 0.0f && y2 <= view.getHeight()) {
                return true;
            }
        }
        return false;
    }
}
