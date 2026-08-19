package com.smartdigimkt.q2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSpecialNoteView f42717a;

    public c(BaseSpecialNoteView baseSpecialNoteView) {
        this.f42717a = baseSpecialNoteView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f42717a.release();
    }
}
