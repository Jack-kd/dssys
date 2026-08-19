package com.smartdigimkt.f0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.t3.l;

/* loaded from: classes5.dex */
public final class a implements l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f40178a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f40179b;

    public a(g gVar, Context context) {
        this.f40179b = gVar;
        this.f40178a = context;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        Context context;
        View viewFindViewById;
        View view = this.f40179b.f40189c;
        if (view == null || (context = this.f40178a) == null || (viewFindViewById = view.findViewById(k.a(context, "myoffer_letter_top", "id"))) == null) {
            return;
        }
        viewFindViewById.setBackground(new BitmapDrawable(this.f40178a.getResources(), bitmap));
    }
}
