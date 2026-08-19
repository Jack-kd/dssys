package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public class ShakeTextHintView extends BaseShakeView {

    /* renamed from: m, reason: collision with root package name */
    public TextView f43585m;

    public ShakeTextHintView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void a() {
        setOrientation(0);
        setGravity(17);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        int iA = k.a(getContext(), 4.0f);
        setPadding(iA, iA, iA, iA);
        int iA2 = k.a(SDKContext.getInstance().d(), "myoffer_shake_text_hint_img", "id");
        int iA3 = k.a(SDKContext.getInstance().d(), "myoffer_shake_text_hint_title", "id");
        this.f43316a = (ImageView) findViewById(iA2);
        this.f43585m = (TextView) findViewById(iA3);
    }

    public int getLayoutId() {
        return k.a(getContext(), "myoffer_shake_text_hint", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        super.setShakeSetting(eVar, i2);
        if (this.f43585m != null) {
            if (TextUtils.isEmpty(this.f43322g)) {
                this.f43585m.setText(z.a(getContext(), i2));
            } else {
                this.f43585m.setText(this.f43322g);
            }
        }
    }

    public ShakeTextHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeTextHintView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public ShakeTextHintView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
