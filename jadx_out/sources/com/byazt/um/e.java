package com.byazt.um;

import android.content.Context;

/* loaded from: classes3.dex */
public interface e {

    public interface hp {
        void cancel(zy zyVar, int i2);

        void onVideoPreloadFail(zy zyVar, int i2, String str);

        void onVideoPreloadSuccess(zy zyVar, int i2);
    }

    void execVideoPreload(Context context, zy zyVar, hp hpVar);
}
