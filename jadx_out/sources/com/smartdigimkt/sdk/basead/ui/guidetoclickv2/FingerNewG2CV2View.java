package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import com.smartdigimkt.h2.j;
import com.smartdigimkt.sdk.basead.ui.GuideToClickV2View;

/* loaded from: classes5.dex */
public class FingerNewG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public GuideToClickV2View f43851h;

    public FingerNewG2CV2View(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        setGravity(17);
        GuideToClickV2View guideToClickV2View = new GuideToClickV2View(getContext());
        this.f43851h = guideToClickV2View;
        guideToClickV2View.setFingerViewType(i2);
        addView(this.f43851h, -1, -1);
        setClipChildren(false);
        if (this.f43840e != null) {
            setOnClickListener(new j(this));
        }
    }
}
