package com.byazt.ikh;

import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public interface jx {

    public interface hp {
        Pair<Boolean, Boolean> hp(View view, MotionEvent motionEvent);
    }

    void setTag(int i2, Object obj);

    void setTouchEventListener(hp hpVar);
}
