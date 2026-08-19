package com.smartdigimkt.sdk.basead.ui.improveclick.ambience;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.smartdigimkt.k2.e;
import com.smartdigimkt.l3.a;

/* loaded from: classes5.dex */
public abstract class BaseAmbienceView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public e f43971a;

    public BaseAmbienceView(Context context) {
        super(context);
        initView();
    }

    public abstract void initSetting(a aVar, e eVar);

    public abstract void initView();

    public abstract void onPause();

    public abstract void onResume();

    public abstract void release();

    public BaseAmbienceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView();
    }

    public BaseAmbienceView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        initView();
    }
}
