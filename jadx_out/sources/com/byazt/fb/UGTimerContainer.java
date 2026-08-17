package com.byazt.fb;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 528, 1628})
/* loaded from: classes2.dex */
public class UGTimerContainer extends FrameLayout {
    public com.byazt.xn.hp hp;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.tg.eb f19590l;

    public UGTimerContainer(@NonNull Context context, com.byazt.tg.eb ebVar) {
        super(context);
        this.f19590l = ebVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) throws JSONException {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        com.byazt.tg.eb ebVar = this.f19590l;
        if (ebVar != null) {
            ebVar.hp(this, motionEvent, zDispatchTouchEvent);
        }
        return zDispatchTouchEvent;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        com.byazt.xn.hp hpVar = this.hp;
        if (hpVar != null) {
            if (i2 == 0) {
                hpVar.hp();
            } else {
                hpVar.l();
            }
        }
    }

    public void setTimerHolder(com.byazt.xn.hp hpVar) {
        this.hp = hpVar;
    }
}
