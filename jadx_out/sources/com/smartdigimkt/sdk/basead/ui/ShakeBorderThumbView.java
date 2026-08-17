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
public class ShakeBorderThumbView extends BaseShakeView {

    /* renamed from: m, reason: collision with root package name */
    public TextView f43579m;

    public ShakeBorderThumbView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void a() {
        setOrientation(0);
        setGravity(17);
        setClipToPadding(false);
        setBackgroundResource(k.a(SDKContext.getInstance().d(), "myoffer_bg_shake_border_thumb", "drawable"));
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        int iA = k.a(getContext(), 10.0f);
        int iA2 = k.a(getContext(), 10.0f);
        int iA3 = k.a(getContext(), 6.0f);
        setPadding(iA, iA3, iA2, iA3);
        this.f43316a = (ImageView) findViewById(k.a(SDKContext.getInstance().d(), "myoffer_splash_shake_border_img", "id"));
        this.f43579m = (TextView) findViewById(k.a(SDKContext.getInstance().d(), "myoffer_splash_shake_hint_text", "id"));
    }

    public int getLayoutId() {
        return k.a(getContext(), "myoffer_shake_border_thumb", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        super.setShakeSetting(eVar, i2);
        if (this.f43579m != null) {
            if (TextUtils.isEmpty(this.f43324i)) {
                this.f43579m.setText(z.a(getContext(), i2));
            } else {
                this.f43579m.setText(this.f43324i);
            }
        }
    }

    public ShakeBorderThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeBorderThumbView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public ShakeBorderThumbView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
