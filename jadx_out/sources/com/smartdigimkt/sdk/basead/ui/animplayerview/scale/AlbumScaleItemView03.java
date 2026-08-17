package com.smartdigimkt.sdk.basead.ui.animplayerview.scale;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import com.smartdigimkt.c5.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class AlbumScaleItemView03 extends BaseAlbumScaleItemView {

    /* renamed from: e, reason: collision with root package name */
    public ImageView f43769e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f43770f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f43771g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f43772h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43773i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43774j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43775k;

    public AlbumScaleItemView03(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView
    public final int a(Context context) {
        return k.a(context, "myoffer_scale_third", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView
    public void initView(View view) {
        super.initView(view);
        Context context = getContext();
        this.f43769e = (ImageView) view.findViewById(k.a(context, "iv_left_01", "id"));
        this.f43770f = (ImageView) view.findViewById(k.a(context, "iv_left_02", "id"));
        this.f43771g = (ImageView) view.findViewById(k.a(context, "iv_left_03", "id"));
        this.f43772h = (ImageView) view.findViewById(k.a(context, "iv_left_04", "id"));
        this.f43773i = (ImageView) view.findViewById(k.a(context, "iv_right_01", "id"));
        this.f43774j = (ImageView) view.findViewById(k.a(context, "iv_right_02", "id"));
        this.f43775k = (ImageView) view.findViewById(k.a(context, "iv_right_03", "id"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView, com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
        if (list == null || list.size() < 4) {
            return;
        }
        ImageView imageView = this.f43769e;
        if (imageView != null) {
            imageView.setImageBitmap(list.get(2));
        }
        ImageView imageView2 = this.f43770f;
        if (imageView2 != null) {
            imageView2.setImageBitmap(list.get(0));
        }
        ImageView imageView3 = this.f43771g;
        if (imageView3 != null) {
            imageView3.setImageBitmap(list.get(3));
        }
        ImageView imageView4 = this.f43772h;
        if (imageView4 != null) {
            imageView4.setImageBitmap(list.get(0));
        }
        ImageView imageView5 = this.f43773i;
        if (imageView5 != null) {
            imageView5.setImageBitmap(list.get(1));
        }
        ImageView imageView6 = this.f43774j;
        if (imageView6 != null) {
            imageView6.setImageBitmap(list.get(2));
        }
        ImageView imageView7 = this.f43775k;
        if (imageView7 != null) {
            imageView7.setImageBitmap(list.get(3));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView, com.smartdigimkt.y1.l
    public void start() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        if (this.f43783a == null) {
            this.f43783a = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            if (this.f43785c) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43771g, "translationX", 0.0f, -dip2px(20.0f));
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43771g, "translationY", 0.0f, dip2px(15.0f));
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f43773i, "translationX", 0.0f, dip2px(15.0f));
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43773i, "translationY", 0.0f, dip2px(15.0f));
            }
            arrayList.add(objectAnimatorOfFloat);
            arrayList.add(objectAnimatorOfFloat2);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, this.f43784b);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, this.f43784b);
            arrayList.add(objectAnimatorOfFloat3);
            arrayList.add(objectAnimatorOfFloat4);
            this.f43783a.setDuration(4000L);
            this.f43783a.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f43783a.playTogether(arrayList);
            long j2 = this.f43786d;
            if (j2 > 0) {
                this.f43783a.setStartDelay(j2);
            }
        }
        this.f43783a.start();
    }

    public AlbumScaleItemView03(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleItemView03(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
