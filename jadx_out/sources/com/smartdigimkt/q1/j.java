package com.smartdigimkt.q1;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes5.dex */
public final class j implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f42685a;

    public j(o oVar) {
        this.f42685a = oVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        com.smartdigimkt.d0.b bVar;
        if (motionEvent.getAction() != 0 || (bVar = this.f42685a.f42695g) == null) {
            return false;
        }
        synchronized (bVar) {
            com.smartdigimkt.d0.a aVar = new com.smartdigimkt.d0.a();
            aVar.f39868a = SystemClock.elapsedRealtime();
            bVar.f39869a = aVar;
        }
        return false;
    }
}
