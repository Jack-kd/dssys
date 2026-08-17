package com.smartdigimkt.sdk.basead.ui.improveclick.incentivetask;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.smartdigimkt.m2.a;
import com.smartdigimkt.m2.b;
import com.smartdigimkt.m2.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.x3.d;

/* loaded from: classes5.dex */
public abstract class BaseIncentiveTaskView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public d f43980a;

    /* renamed from: b, reason: collision with root package name */
    public c f43981b;

    public BaseIncentiveTaskView(Context context) {
        this(context, null);
    }

    public abstract void a();

    public final void b() {
        d dVar = this.f43980a;
        if (dVar != null) {
            dVar.c();
        }
    }

    public void initSetting(com.smartdigimkt.m3.c cVar, e eVar, long j2, c cVar2) {
        this.f43981b = cVar2;
        d dVar = new d(eVar.f41950l1, new a(this));
        this.f43980a = dVar;
        dVar.b();
        setOnClickListener(new b());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public void onPause() {
        d dVar = this.f43980a;
        if (dVar != null) {
            dVar.a();
        }
    }

    public void onResume() {
        d dVar = this.f43980a;
        if (dVar != null) {
            dVar.b();
        }
    }

    public void release() {
        b();
    }

    public BaseIncentiveTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseIncentiveTaskView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
