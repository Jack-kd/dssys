package com.smartdigimkt.sdk.basead.ui.improveclick.ambience;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.smartdigimkt.l2.g;
import com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket.RedPacketView;
import com.smartdigimkt.z1.c;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class BubbleDropChildView extends RedPacketView {

    /* renamed from: p, reason: collision with root package name */
    public g f43978p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f43979q;

    public BubbleDropChildView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.redpacket.RedPacketView
    public int getRedPacketScaleBaseWidth() {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        return (measuredWidth <= 0 || measuredHeight <= 0) ? measuredWidth : Math.min(measuredWidth, measuredHeight);
    }

    public void initSetting(g gVar) {
        this.f43741a = 0.25d;
        this.f43742b = 0.33000001311302185d;
        this.f43979q = false;
        this.f43978p = gVar;
    }

    public boolean isTouchOnAnyBubble(float f2, float f3) {
        ArrayList arrayList = this.f43744d;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            c cVar = (c) obj;
            float f4 = cVar.f45436e;
            if (f4 <= f2 && f2 <= f4 + cVar.f45433b) {
                float f5 = cVar.f45437f;
                if (f5 <= f3 && f3 <= f5 + cVar.f45434c) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        g gVar;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (this.f43979q && (gVar = this.f43978p) != null) {
                    gVar.a();
                }
                this.f43979q = false;
            }
        } else if (isTouchOnAnyBubble(motionEvent.getX(), motionEvent.getY())) {
            this.f43979q = true;
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public BubbleDropChildView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BubbleDropChildView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
