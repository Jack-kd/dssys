package com.byazt.ig;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import com.byazt.fjm.RecyclerView;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 7, 1670})
/* loaded from: classes.dex */
public class RewardDrawRecyclerView extends RecyclerView {
    public RewardDrawRecyclerView(Context context) {
        super(context);
    }

    @Override // com.byazt.fjm.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.byazt.fjm.RecyclerView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        u.l("lfz", motionEvent.toString());
        return false;
    }
}
