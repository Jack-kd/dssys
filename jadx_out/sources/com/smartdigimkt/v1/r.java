package com.smartdigimkt.v1;

import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.BaseATView;

/* loaded from: classes5.dex */
public final class r extends com.smartdigimkt.k2.c {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BaseATView f44589h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(BaseATView baseATView, ViewGroup viewGroup, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, int i2, com.smartdigimkt.k2.e eVar) {
        super(viewGroup, cVar, aVar, i2, eVar);
        this.f44589h = baseATView;
    }

    @Override // com.smartdigimkt.k2.c
    public final ViewGroup.LayoutParams b() {
        return this.f44589h.getSpecialNoteViewLayoutParams();
    }
}
