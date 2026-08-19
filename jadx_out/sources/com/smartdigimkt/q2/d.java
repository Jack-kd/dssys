package com.smartdigimkt.q2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class d extends com.smartdigimkt.a4.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSpecialNoteView f42718a;

    public d(BaseSpecialNoteView baseSpecialNoteView) {
        this.f42718a = baseSpecialNoteView;
    }

    @Override // com.smartdigimkt.a4.a
    public final int getImpressionMinPercentageViewed() {
        return 50;
    }

    @Override // com.smartdigimkt.a4.a
    public final void recordImpression(View view) {
        BaseSpecialNoteView baseSpecialNoteView = this.f42718a;
        int i2 = BaseSpecialNoteView.f44013o;
        if (baseSpecialNoteView.f44019f == null) {
            return;
        }
        baseSpecialNoteView.postDelayed(baseSpecialNoteView.f44020g, 500L);
    }
}
