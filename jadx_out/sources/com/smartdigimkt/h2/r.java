package com.smartdigimkt.h2;

import android.widget.TextView;
import com.anythink.core.common.d.i;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.GTCV2InnerCountDownView;

/* loaded from: classes5.dex */
public final class r extends com.smartdigimkt.z3.b {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v f40527f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ GTCV2InnerCountDownView f40528g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(GTCV2InnerCountDownView gTCV2InnerCountDownView, v vVar) {
        super(i.l.f2678c);
        this.f40528g = gTCV2InnerCountDownView;
        this.f40527f = vVar;
    }

    @Override // com.smartdigimkt.z3.b
    public final void a(long j2) {
        long j3 = j2 / 1000;
        int i2 = (int) (j3 / 60);
        int i3 = (int) (j3 % 60);
        TextView textView = this.f40528g.f43876b;
        if (textView != null) {
            textView.setText(String.format("%02d", Integer.valueOf(i2)));
        }
        TextView textView2 = this.f40528g.f43877c;
        if (textView2 != null) {
            textView2.setText(String.format("%02d", Integer.valueOf(i3)));
        }
    }

    @Override // com.smartdigimkt.z3.b
    public final void a() {
        v vVar = this.f40527f;
        if (vVar != null) {
            ((c) vVar).f40462a.a();
        }
    }
}
