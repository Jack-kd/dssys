package com.meishu.sdk.platform.ms.paster;

import android.view.MotionEvent;
import android.view.View;
import com.meishu.sdk.platform.ms.paster.d;

/* loaded from: classes4.dex */
public class b implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d.a f32894a;

    public b(d.a aVar) {
        this.f32894a = aVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            d.this.f32906k = System.currentTimeMillis();
            d.this.f32902g = (int) motionEvent.getX();
            d.this.f32903h = (int) motionEvent.getY();
            return false;
        }
        if (motionEvent.getAction() != 1) {
            return false;
        }
        d dVar = d.this;
        System.currentTimeMillis();
        dVar.getClass();
        d.this.f32904i = (int) motionEvent.getX();
        d.this.f32905j = (int) motionEvent.getY();
        return false;
    }
}
