package com.byazt.rm;

import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.go.l;
import com.byazt.kj.hp;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;

@hp(hp = {0, 1, 1342, 2123})
/* loaded from: classes3.dex */
public abstract class AbstractEndCardFrameLayout extends FrameLayout {
    public final TTBaseVideoActivity hp;

    /* renamed from: l, reason: collision with root package name */
    public final mp f25254l;

    public AbstractEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity);
        this.hp = tTBaseVideoActivity;
        this.f25254l = mpVar;
        hp();
    }

    public abstract SSWebView getEndCardWebView();

    public abstract SSWebView getPlayableWebView();

    public abstract FrameLayout getVideoArea();

    public abstract void hp();

    public void l() {
    }

    public abstract void setClickListener(l lVar);
}
