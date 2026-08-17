package com.smartdigimkt.d2;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class d extends a {
    @Override // com.smartdigimkt.d2.h
    public final void a(ViewGroup viewGroup) {
    }

    @Override // com.smartdigimkt.d2.h
    public final void b(ViewGroup viewGroup) {
        LayoutInflater.from(viewGroup.getContext()).inflate(k.a(viewGroup.getContext(), "myoffer_close_cta_button_layout", "layout"), viewGroup);
        this.f39881a = (ScanningAnimButton) viewGroup.findViewById(k.a(viewGroup.getContext(), "myoffer_cta_button_major", "id"));
        this.f39882b = (ScanningAnimButton) viewGroup.findViewById(k.a(viewGroup.getContext(), "myoffer_cta_button_minor", "id"));
    }

    @Override // com.smartdigimkt.d2.a, com.smartdigimkt.d2.h
    public final void c(ViewGroup viewGroup) {
        ScanningAnimButton scanningAnimButton = this.f39882b;
        if (scanningAnimButton != null) {
            scanningAnimButton.setEnabled(true);
            Context context = viewGroup.getContext();
            this.f39882b.setBackgroundResource(k.a(context, "myoffer_splash_bg_rectangle_btn_cta_close_minor_active", "drawable"));
            this.f39882b.setTextColor(context.getResources().getColor(k.a(context, "color_cta_text", "color")));
        }
    }

    @Override // com.smartdigimkt.d2.h
    public final void a(ViewGroup viewGroup, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, boolean z2, m mVar) {
        if (this.f39882b != null) {
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            int i2 = layoutParams.width;
            if (i2 > 0 && i2 < k.a(viewGroup.getContext(), 240.0f)) {
                layoutParams.width = k.a(viewGroup.getContext(), 296.0f);
                viewGroup.setLayoutParams(layoutParams);
            }
            this.f39882b.setVisibility(0);
            if (!TextUtils.isEmpty(aVar.f41644r.f41935g1)) {
                this.f39882b.setText(aVar.f41644r.f41935g1);
            }
            this.f39882b.setOnClickListener(new b(mVar));
            this.f39882b.setEnabled(false);
        }
        if (this.f39881a != null) {
            if (TextUtils.isEmpty(cVar.f41817h)) {
                this.f39881a.setText(z.a(viewGroup.getContext(), cVar));
            } else {
                this.f39881a.setText(cVar.f41817h);
            }
            if (viewGroup.getParent() != null && (viewGroup.getParent() instanceof ViewGroup)) {
                ((ViewGroup) viewGroup.getParent()).setClipChildren(false);
            }
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            if (eVar != null) {
                this.f39881a.startAnimation(eVar.f41845C0);
            }
            if (mVar != null) {
                this.f39881a.setOnClickListener(new c(mVar));
            }
        }
    }
}
