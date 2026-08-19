package com.smartdigimkt.d2;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.r2.m;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;
import com.smartdigimkt.z.z;

/* loaded from: classes5.dex */
public final class i extends g {
    @Override // com.smartdigimkt.d2.g, com.smartdigimkt.d2.h
    public final void a(ViewGroup viewGroup, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, boolean z2, m mVar) {
        super.a(viewGroup, cVar, aVar, z2, mVar);
        if (this.f39881a != null) {
            if (TextUtils.isEmpty(cVar.f41817h)) {
                this.f39881a.setText(z.a(viewGroup.getContext(), cVar));
            } else {
                this.f39881a.setText(cVar.f41817h);
            }
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            if (eVar != null) {
                this.f39881a.startAnimation(eVar.f41845C0);
            }
        }
    }

    @Override // com.smartdigimkt.d2.g, com.smartdigimkt.d2.h
    public final void b(ViewGroup viewGroup) {
        LayoutInflater.from(viewGroup.getContext()).inflate(k.a(viewGroup.getContext(), "myoffer_large_cta_button_layout", "layout"), viewGroup);
        this.f39881a = (ScanningAnimButton) viewGroup.findViewById(k.a(viewGroup.getContext(), "myoffer_cta_button_major", "id"));
    }
}
