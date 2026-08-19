package com.smartdigimkt.v1;

import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;

/* loaded from: classes5.dex */
public final class j3 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f44509a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f44510b;

    /* renamed from: c, reason: collision with root package name */
    public int f44511c;

    public j3(ViewGroup viewGroup) {
        this.f44509a = viewGroup;
        ImageView imageView = new ImageView(viewGroup.getContext());
        this.f44510b = imageView;
        imageView.setId(com.smartdigimkt.c5.k.a(viewGroup.getContext(), "myoffer_loading_id", "id"));
        imageView.setImageResource(com.smartdigimkt.c5.k.a(viewGroup.getContext(), "myoffer_loading", "drawable"));
        this.f44511c = (int) TypedValue.applyDimension(1, 50.0f, viewGroup.getResources().getDisplayMetrics());
    }

    public final void a() {
        ImageView imageView = this.f44510b;
        if (imageView != null) {
            this.f44509a.removeView(imageView);
        }
        this.f44509a.post(new g3(this));
        this.f44510b.post(new h3(this));
    }
}
