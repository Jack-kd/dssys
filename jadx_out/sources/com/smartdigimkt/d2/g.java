package com.smartdigimkt.d2;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.ScanningAnimButton;

/* loaded from: classes5.dex */
public class g extends a {
    @Override // com.smartdigimkt.d2.h
    public final void a(ViewGroup viewGroup) {
        ScanningAnimButton scanningAnimButton = this.f39882b;
        if (scanningAnimButton != null) {
            scanningAnimButton.setTextColor(Color.parseColor("#FFFFFF"));
            this.f39882b.setBackgroundResource(k.a(viewGroup.getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem_minor_white", "drawable"));
        }
    }

    @Override // com.smartdigimkt.d2.h
    public void b(ViewGroup viewGroup) {
        LayoutInflater.from(viewGroup.getContext()).inflate(k.a(viewGroup.getContext(), "myoffer_cta_button_layout", "layout"), viewGroup);
        this.f39881a = (ScanningAnimButton) viewGroup.findViewById(k.a(viewGroup.getContext(), "myoffer_cta_button_major", "id"));
        this.f39882b = (ScanningAnimButton) viewGroup.findViewById(k.a(viewGroup.getContext(), "myoffer_cta_button_minor", "id"));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0018  */
    @Override // com.smartdigimkt.d2.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.view.ViewGroup r7, com.smartdigimkt.m3.c r8, com.smartdigimkt.l3.a r9, boolean r10, com.smartdigimkt.r2.m r11) {
        /*
            r6 = this;
            r0 = 0
            if (r8 == 0) goto L18
            com.smartdigimkt.m3.e r1 = r8.f41832w
            int r1 = r1.f41872L0
            r2 = 2
            if (r1 == r2) goto L16
            r2 = 3
            if (r1 == r2) goto L13
            r2 = 4
            if (r1 == r2) goto L11
            goto L18
        L11:
            r1 = 1
            goto L19
        L13:
            r1 = r10 ^ 1
            goto L19
        L16:
            r1 = r10
            goto L19
        L18:
            r1 = r0
        L19:
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r2 = r6.f39882b
            if (r2 == 0) goto L6c
            if (r1 == 0) goto L67
            android.view.ViewGroup$LayoutParams r2 = r7.getLayoutParams()
            int r3 = r2.width
            if (r3 <= 0) goto L42
            android.content.Context r4 = r7.getContext()
            r5 = 1131413504(0x43700000, float:240.0)
            int r4 = com.smartdigimkt.c5.k.a(r4, r5)
            if (r3 >= r4) goto L42
            android.content.Context r3 = r7.getContext()
            r4 = 1133772800(0x43940000, float:296.0)
            int r3 = com.smartdigimkt.c5.k.a(r3, r4)
            r2.width = r3
            r7.setLayoutParams(r2)
        L42:
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r2 = r6.f39882b
            r2.setVisibility(r0)
            com.smartdigimkt.m3.e r2 = r9.f41644r
            java.lang.String r2 = r2.f41875M0
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L5a
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r2 = r6.f39882b
            com.smartdigimkt.m3.e r9 = r9.f41644r
            java.lang.String r9 = r9.f41875M0
            r2.setText(r9)
        L5a:
            if (r11 == 0) goto L6c
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r9 = r6.f39882b
            com.smartdigimkt.d2.e r2 = new com.smartdigimkt.d2.e
            r2.<init>(r10, r11)
            r9.setOnClickListener(r2)
            goto L6c
        L67:
            r9 = 8
            r2.setVisibility(r9)
        L6c:
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r9 = r6.f39881a
            if (r9 == 0) goto Lbd
            java.lang.String r9 = r8.f41817h
            boolean r9 = android.text.TextUtils.isEmpty(r9)
            if (r9 != 0) goto L80
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r9 = r6.f39881a
            java.lang.String r2 = r8.f41817h
            r9.setText(r2)
            goto L8d
        L80:
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r9 = r6.f39881a
            android.content.Context r2 = r7.getContext()
            int r2 = com.smartdigimkt.z.z.a(r2, r8)
            r9.setText(r2)
        L8d:
            android.view.ViewParent r9 = r7.getParent()
            if (r9 == 0) goto La4
            android.view.ViewParent r9 = r7.getParent()
            boolean r9 = r9 instanceof android.view.ViewGroup
            if (r9 == 0) goto La4
            android.view.ViewParent r7 = r7.getParent()
            android.view.ViewGroup r7 = (android.view.ViewGroup) r7
            r7.setClipChildren(r0)
        La4:
            com.smartdigimkt.m3.e r7 = r8.f41832w
            if (r7 == 0) goto Laf
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r8 = r6.f39881a
            int r7 = r7.f41845C0
            r8.startAnimation(r7)
        Laf:
            if (r11 == 0) goto Lbd
            if (r1 == 0) goto Lbd
            com.smartdigimkt.sdk.basead.ui.ScanningAnimButton r7 = r6.f39881a
            com.smartdigimkt.d2.f r8 = new com.smartdigimkt.d2.f
            r8.<init>(r10, r11)
            r7.setOnClickListener(r8)
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.d2.g.a(android.view.ViewGroup, com.smartdigimkt.m3.c, com.smartdigimkt.l3.a, boolean, com.smartdigimkt.r2.m):void");
    }
}
