package com.smartdigimkt.v1;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.basead.ui.EndCardView;

/* loaded from: classes5.dex */
public final class k2 implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.c f44519a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EndCardView f44520b;

    public k2(EndCardView endCardView, com.smartdigimkt.m3.c cVar) {
        this.f44520b = endCardView;
        this.f44519a = cVar;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (TextUtils.equals(str, this.f44519a.f41815f)) {
            this.f44520b.f43397g.setImageBitmap(bitmap);
            com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.d5.b(this.f44520b.getContext(), bitmap, new j2(this)));
        }
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        d0 d0Var = this.f44520b.mListener;
    }
}
