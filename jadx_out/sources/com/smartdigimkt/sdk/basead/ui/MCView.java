package com.smartdigimkt.sdk.basead.ui;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.smartdigimkt.b4.e;
import com.smartdigimkt.z.k;
import com.smartdigimkt.z.m;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class MCView extends View {

    /* renamed from: b, reason: collision with root package name */
    public static final m f43463b = new m();

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f43464a;

    public MCView(Context context) {
        super(context);
        setClickable(false);
        setBackgroundColor(0);
    }

    public void handleMC(boolean z2) {
        this.f43464a = z2;
    }

    public boolean isMC() {
        return this.f43464a;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f43464a) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            handleMC(false);
        }
        return true;
    }

    public void runMC(Activity activity, View view, View view2, Runnable runnable) {
        m mVar = f43463b;
        mVar.getClass();
        if (runnable == null) {
            return;
        }
        if (activity == null) {
            e.a().a(runnable);
            return;
        }
        k kVar = new k(mVar, new WeakReference(this), new WeakReference(activity), runnable, new WeakReference(view), new WeakReference(view2));
        e.a().getClass();
        if (e.b()) {
            kVar.run();
        } else {
            e.a().a(kVar);
        }
    }
}
