package com.smartdigimkt.k2;

import android.view.ViewGroup;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b0 f41279a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f41280b;

    public a(c cVar, b0 b0Var) {
        this.f41280b = cVar;
        this.f41279a = b0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseSpecialNoteView baseSpecialNoteView;
        ViewGroup.LayoutParams layoutParamsB = this.f41280b.b();
        if (this.f41279a == null || this.f41280b.b() == null || (baseSpecialNoteView = this.f41279a.f41287i) == null) {
            return;
        }
        baseSpecialNoteView.setLayoutParams(layoutParamsB);
    }
}
