package com.kwad.sdk.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.MainThread;
import com.kwad.sdk.utils.al;

/* loaded from: classes4.dex */
public class KsAdContainer extends RelativeLayout {
    protected al.a baL;

    public KsAdContainer(Context context) {
        super(context);
        this.baL = new al.a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            al.a aVar = new al.a(getWidth(), getHeight());
            this.baL = aVar;
            aVar.j(motionEvent.getX(), motionEvent.getY());
        } else if (action == 1) {
            this.baL.k(motionEvent.getX(), motionEvent.getY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @MainThread
    public al.a getTouchCoords() {
        return this.baL;
    }

    public KsAdContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.baL = new al.a();
    }

    public KsAdContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.baL = new al.a();
    }
}
