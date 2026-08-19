package com.meishu.sdk.core.ad;

import android.view.View;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.s2s.ISBidding;
import com.meishu.sdk.core.utils.ResultBean;

/* loaded from: classes4.dex */
public interface IAd<T extends InteractionListener> extends ISBidding {
    View getAdView();

    ResultBean getData();

    T getInteractionListener();

    TouchData getTouchData();

    boolean isAdValid();

    void setAdView(View view);

    void setInteractionListener(T t2);
}
