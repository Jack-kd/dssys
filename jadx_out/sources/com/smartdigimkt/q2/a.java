package com.smartdigimkt.q2;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSpecialNoteView f42716a;

    public a(BaseSpecialNoteView baseSpecialNoteView) {
        this.f42716a = baseSpecialNoteView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseSpecialNoteView baseSpecialNoteView = this.f42716a;
        int i2 = BaseSpecialNoteView.f44013o;
        if (baseSpecialNoteView.getWindowVisibility() == 0) {
            View view = baseSpecialNoteView.f44018e;
            if (view != null && view.getParent() != null) {
                Object parent = baseSpecialNoteView.f44018e.getParent();
                if ((parent instanceof View) && baseSpecialNoteView.f44022i.a((View) parent, baseSpecialNoteView.f44018e, 50, 0)) {
                    long j2 = baseSpecialNoteView.f44015b;
                    if (j2 > 0) {
                        baseSpecialNoteView.f44015b = j2 - 500;
                    } else {
                        long j3 = baseSpecialNoteView.f44017d;
                        if (j3 > 0) {
                            baseSpecialNoteView.f44017d = j3 - 500;
                        }
                    }
                    baseSpecialNoteView.b();
                    if (baseSpecialNoteView.f44019f == null) {
                        return;
                    }
                    baseSpecialNoteView.postDelayed(baseSpecialNoteView.f44020g, 500L);
                    return;
                }
            }
        } else if (baseSpecialNoteView.e()) {
            baseSpecialNoteView.f44015b = baseSpecialNoteView.f44014a;
            baseSpecialNoteView.f44017d = baseSpecialNoteView.f44016c;
            baseSpecialNoteView.setVisibility(4);
            baseSpecialNoteView.f44027n = false;
        }
        View view2 = baseSpecialNoteView.f44018e;
        if (view2 == null) {
            return;
        }
        baseSpecialNoteView.f44021h.a(view2, new d(baseSpecialNoteView));
    }
}
