package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.smartdigimkt.sdk.basead.ui.EndCardView;

/* loaded from: classes5.dex */
public final class j2 implements com.smartdigimkt.d5.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k2 f44508a;

    public j2(k2 k2Var) {
        this.f44508a = k2Var;
    }

    @Override // com.smartdigimkt.d5.c
    public final void a(Bitmap bitmap) {
        EndCardView endCardView = this.f44508a.f44520b;
        endCardView.f43400j = bitmap;
        endCardView.setBackgroundDrawable(new BitmapDrawable(this.f44508a.f44520b.f43400j));
        d0 d0Var = this.f44508a.f44520b.mListener;
    }

    @Override // com.smartdigimkt.d5.c
    public final void a() {
        d0 d0Var = this.f44508a.f44520b.mListener;
    }
}
