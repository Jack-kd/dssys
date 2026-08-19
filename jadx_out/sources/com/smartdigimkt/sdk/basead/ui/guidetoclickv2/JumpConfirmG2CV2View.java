package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.i0;

/* loaded from: classes5.dex */
public class JumpConfirmG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public LinearLayout f43904h;

    public JumpConfirmG2CV2View(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_jump_confirm", "layout"), this);
        setBackgroundResource(k.a(getContext(), "myoffer_g2c_jump_confirm_bg", "drawable"));
        this.f43904h = (LinearLayout) findViewById(k.a(getContext(), "myoffer_ll_jump_confirm_container", "id"));
        ((TextView) findViewById(k.a(getContext(), "myoffer_g2c_jump_confirm_ignore", "id"))).setOnClickListener(new i0(this));
        if (i2 != 2) {
            this.f43904h.setPadding(k.a(getContext(), 18.0f), 0, 0, 0);
        }
    }
}
