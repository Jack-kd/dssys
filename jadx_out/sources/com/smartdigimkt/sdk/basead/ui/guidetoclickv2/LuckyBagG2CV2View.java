package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.anythink.core.common.a.b;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.j0;
import com.smartdigimkt.h2.k0;
import com.smartdigimkt.h2.l0;
import com.smartdigimkt.h2.m0;
import com.smartdigimkt.h2.n0;
import com.smartdigimkt.sdk.basead.ui.SimpleGuideToClickView;
import com.smartdigimkt.t1.d;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.z.a0;

/* loaded from: classes5.dex */
public class LuckyBagG2CV2View extends BaseLifecycleG2CV2View {

    /* renamed from: i, reason: collision with root package name */
    public SimpleGuideToClickView f43905i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43906j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43907k;

    /* renamed from: l, reason: collision with root package name */
    public View f43908l;

    public LuckyBagG2CV2View(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseLifecycleG2CV2View
    public int getClickArea() {
        return 43;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_lucky_bag", "layout"), this);
        setBackgroundColor(Color.parseColor("#80000000"));
        this.f43907k = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_close_iv", "id"));
        this.f43908l = findViewById(k.a(getContext(), "myoffer_g2c_item_container", "id"));
        this.f43905i = (SimpleGuideToClickView) findViewById(k.a(getContext(), "myoffer_g2c_item_g2c_fingerview", "id"));
        ImageView imageView = (ImageView) findViewById(k.a(getContext(), "myoffer_g2c_item_lucky_bag_icon", "id"));
        this.f43906j = imageView;
        if (imageView != null) {
            String strB = d.a().b(b.d.f2199m);
            if (!TextUtils.isEmpty(strB)) {
                a0.a().a(new o(3, strB), -1, -1, new j0(this));
            }
        }
        SimpleGuideToClickView simpleGuideToClickView = this.f43905i;
        if (simpleGuideToClickView != null) {
            simpleGuideToClickView.init(k.a(getContext(), "myoffer_simple_guide_to_click", "layout"), k.a(getContext(), 4.0f), k.a(getContext(), 6.0f), k.a(getContext(), 8.0f), k.a(getContext(), 12.0f));
            ImageView imageView2 = (ImageView) this.f43905i.findViewById(k.a(getContext(), "myoffer_guide_to_click_finger", "id"));
            if (imageView2 != null) {
                String strB2 = d.a().b(b.d.f2197k);
                if (!TextUtils.isEmpty(strB2)) {
                    a0.a().a(new o(3, strB2), -1, -1, new k0(imageView2));
                }
            }
        }
        this.f43908l.setOnClickListener(new l0(this));
        setOnClickListener(new m0());
        ImageView imageView3 = this.f43907k;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new n0(this));
        }
    }
}
