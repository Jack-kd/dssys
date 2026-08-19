package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.p;
import com.smartdigimkt.h2.q;
import com.smartdigimkt.h2.r;
import com.smartdigimkt.h2.s;
import com.smartdigimkt.h2.t;
import com.smartdigimkt.h2.u;
import com.smartdigimkt.h2.v;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class GTCV2InnerCountDownView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public r f43875a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f43876b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f43877c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f43878d;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f43879e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f43880f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f43881g;

    public GTCV2InnerCountDownView(Context context) {
        super(context);
        a();
    }

    public final void a() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_inner_count_down_view", "layout"), this);
        this.f43879e = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_close_iv", "id"));
        this.f43880f = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_gift_icon", "id"));
        this.f43881g = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_ribbon", "id"));
        this.f43876b = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_ct_min", "id"));
        this.f43877c = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_ct_sec", "id"));
        this.f43878d = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_ct_cta", "id"));
        String strB = d.a().b(b.d.f2193g);
        if (!TextUtils.isEmpty(strB)) {
            a0.a().a(new o(3, strB), -1, -1, new p(this));
        }
        String strB2 = d.a().b(b.d.f2194h);
        if (TextUtils.isEmpty(strB2)) {
            return;
        }
        a0.a().a(new o(3, strB2), -1, -1, new q(this));
    }

    public void initSetting(v vVar) throws Throwable {
        r rVar = new r(this, vVar);
        this.f43875a = rVar;
        rVar.a(rVar.f45443e, rVar.f45440b);
        setOnClickListener(new s());
        this.f43878d.setOnClickListener(new t(vVar));
        this.f43879e.setOnClickListener(new u(vVar));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    public final void onPause() {
        r rVar = this.f43875a;
        if (rVar != null) {
            rVar.b();
        }
    }

    public final void onResume() {
        r rVar = this.f43875a;
        if (rVar == null || !rVar.f45441c) {
            return;
        }
        rVar.a(rVar.f45443e, rVar.f45440b);
    }

    public final void release() {
        r rVar = this.f43875a;
        if (rVar != null) {
            rVar.c();
        }
    }

    public GTCV2InnerCountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public GTCV2InnerCountDownView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
