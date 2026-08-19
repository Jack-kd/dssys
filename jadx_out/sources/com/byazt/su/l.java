package com.byazt.su;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public interface l<T> extends com.byazt.wn.hp {

    public enum hp {
        hideCloseBtn,
        alwayShowBackBtn,
        alwayShowMediaView,
        fixedSize,
        hideBackBtn,
        hideTopMoreBtn
    }

    void hp();

    void hp(int i2);

    void hp(Drawable drawable);

    void hp(T t2, WeakReference<Context> weakReference, boolean z2);

    void hp(boolean z2);

    View jx();

    void l();
}
