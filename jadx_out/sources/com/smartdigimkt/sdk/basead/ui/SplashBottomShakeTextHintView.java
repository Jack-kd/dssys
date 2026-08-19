package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class SplashBottomShakeTextHintView extends ShakeTextHintView {
    public SplashBottomShakeTextHintView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView, com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void a() {
        super.a();
        setOrientation(1);
        setGravity(1);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView
    public int getLayoutId() {
        return k.a(getContext(), "myoffer_shake_text_hint_splash_bottom", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.ShakeTextHintView, com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        super.setShakeSetting(eVar, i2);
        if (this.f43585m != null) {
            if (TextUtils.isEmpty(this.f43324i)) {
                this.f43585m.setText(z.a(getContext(), i2));
            } else {
                this.f43585m.setText(this.f43324i);
            }
        }
    }

    public SplashBottomShakeTextHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SplashBottomShakeTextHintView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public SplashBottomShakeTextHintView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
