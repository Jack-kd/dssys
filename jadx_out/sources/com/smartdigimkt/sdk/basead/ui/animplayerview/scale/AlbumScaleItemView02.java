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
import java.util.List;

/* loaded from: classes5.dex */
public class AlbumScaleItemView02 extends BaseAlbumScaleItemView {

    /* renamed from: e, reason: collision with root package name */
    public ImageView f43766e;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f43767f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f43768g;

    public AlbumScaleItemView02(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView
    public final int a(Context context) {
        return k.a(context, "myoffer_scale_second", "layout");
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView
    public void initView(View view) {
        super.initView(view);
        Context context = getContext();
        this.f43766e = (ImageView) view.findViewById(k.a(context, "iv_left", "id"));
        this.f43767f = (ImageView) view.findViewById(k.a(context, "iv_right_top", "id"));
        this.f43768g = (ImageView) view.findViewById(k.a(context, "iv_right_bottom", "id"));
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView, com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
        if (list == null || list.size() < 4) {
            return;
        }
        ImageView imageView = this.f43767f;
        if (imageView != null) {
            imageView.setImageBitmap(list.get(0));
        }
        ImageView imageView2 = this.f43766e;
        if (imageView2 != null) {
            imageView2.setImageBitmap(list.get(1));
        }
        ImageView imageView3 = this.f43768g;
        if (imageView3 != null) {
            imageView3.setImageBitmap(list.get(3));
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.scale.BaseAlbumScaleItemView, com.smartdigimkt.y1.l
    public void start() {
        if (this.f43783a == null) {
            this.f43783a = new AnimatorSet();
            ImageView imageView = this.f43766e;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "translationX", 0.0f, -(imageView.getX() + this.f43766e.getWidth()));
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f43766e, "translationY", 0.0f, (float) (-Math.cos(r3.getY())));
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f43767f, "translationX", 0.0f, getScreenWidth() - this.f43767f.getX());
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f43767f, "translationY", 0.0f, (float) (-Math.cos(r9.getY())));
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f43768g, "translationX", 0.0f, getScreenWidth() - this.f43768g.getX());
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f43768g, "translationY", 0.0f, (float) Math.cos(getScreenHeight() - this.f43768g.getY()));
            ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, 5.0f);
            ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, 5.0f);
            this.f43783a.setDuration(2000L);
            this.f43783a.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f43783a.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat6, objectAnimatorOfFloat5, objectAnimatorOfFloat7, objectAnimatorOfFloat8);
            long j2 = this.f43786d;
            if (j2 > 0) {
                this.f43783a.setStartDelay(j2);
            }
        }
        this.f43783a.start();
    }

    public AlbumScaleItemView02(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleItemView02(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
