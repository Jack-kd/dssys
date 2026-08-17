package com.smartdigimkt.f0;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.smartdigimkt.t3.l;

/* loaded from: classes5.dex */
public final class b implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40180a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f40181b;

    public b(g gVar, Context context) {
        this.f40181b = gVar;
        this.f40180a = context;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        ImageView imageView = this.f40181b.f40188b;
        if (imageView == null || this.f40180a == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }
}
