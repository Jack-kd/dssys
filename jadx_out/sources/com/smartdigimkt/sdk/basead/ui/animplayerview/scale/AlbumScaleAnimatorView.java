package com.smartdigimkt.sdk.basead.ui.animplayerview.scale;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.a2.a;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.y1.m;
import java.util.List;

/* loaded from: classes5.dex */
public class AlbumScaleAnimatorView extends FrameLayout implements m {

    /* renamed from: a, reason: collision with root package name */
    public List f43756a;

    /* renamed from: b, reason: collision with root package name */
    public AlbumScaleMainView f43757b;

    /* renamed from: c, reason: collision with root package name */
    public AlbumScaleItemView01 f43758c;

    /* renamed from: d, reason: collision with root package name */
    public AlbumScaleItemView02 f43759d;

    /* renamed from: e, reason: collision with root package name */
    public AlbumScaleItemView03 f43760e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f43761f;

    public AlbumScaleAnimatorView(Context context) {
        this(context, null);
    }

    @Override // com.smartdigimkt.y1.m
    public void addMainView(Bitmap bitmap, WrapRoundImageView... wrapRoundImageViewArr) {
        if (bitmap == null) {
            return;
        }
        AlbumScaleMainView albumScaleMainView = new AlbumScaleMainView(getContext());
        this.f43757b = albumScaleMainView;
        boolean zF = k.f(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(k.a(getContext(), zF ? 90 : 42), k.a(getContext(), zF ? 42 : 90));
        layoutParams.gravity = 17;
        albumScaleMainView.setLayoutParams(layoutParams);
        addView(this.f43757b);
        this.f43757b.initView(bitmap, true);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        AlbumScaleItemView03 albumScaleItemView03 = new AlbumScaleItemView03(getContext());
        albumScaleItemView03.setBitmapResources(this.f43756a);
        albumScaleItemView03.setOrientation(k.f(getContext()));
        addView(albumScaleItemView03, layoutParams2);
        this.f43760e = albumScaleItemView03;
        ViewGroup.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        AlbumScaleItemView02 albumScaleItemView02 = new AlbumScaleItemView02(getContext());
        albumScaleItemView02.setOrientation(k.f(getContext()));
        albumScaleItemView02.setBitmapResources(this.f43756a);
        addView(albumScaleItemView02, layoutParams3);
        this.f43759d = albumScaleItemView02;
        ViewGroup.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -1);
        AlbumScaleItemView01 albumScaleItemView01 = new AlbumScaleItemView01(getContext());
        albumScaleItemView01.setBitmapResources(this.f43756a);
        albumScaleItemView01.setOrientation(k.f(getContext()));
        addView(albumScaleItemView01, layoutParams4);
        this.f43758c = albumScaleItemView01;
    }

    @Override // com.smartdigimkt.y1.l
    public void pause() {
        AlbumScaleMainView albumScaleMainView = this.f43757b;
        if (albumScaleMainView != null) {
            albumScaleMainView.pause();
        }
        AlbumScaleItemView01 albumScaleItemView01 = this.f43758c;
        if (albumScaleItemView01 != null) {
            albumScaleItemView01.pause();
        }
        AlbumScaleItemView02 albumScaleItemView02 = this.f43759d;
        if (albumScaleItemView02 != null) {
            albumScaleItemView02.pause();
        }
        AlbumScaleItemView03 albumScaleItemView03 = this.f43760e;
        if (albumScaleItemView03 != null) {
            albumScaleItemView03.pause();
        }
    }

    @Override // com.smartdigimkt.y1.m
    public void release() {
        List<Bitmap> list = this.f43756a;
        if (list != null) {
            for (Bitmap bitmap : list) {
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
            this.f43756a.clear();
        }
        AlbumScaleMainView albumScaleMainView = this.f43757b;
        if (albumScaleMainView != null) {
            albumScaleMainView.release();
        }
        AlbumScaleItemView01 albumScaleItemView01 = this.f43758c;
        if (albumScaleItemView01 != null) {
            albumScaleItemView01.release();
        }
        AlbumScaleItemView02 albumScaleItemView02 = this.f43759d;
        if (albumScaleItemView02 != null) {
            albumScaleItemView02.release();
        }
        AlbumScaleItemView03 albumScaleItemView03 = this.f43760e;
        if (albumScaleItemView03 != null) {
            albumScaleItemView03.release();
        }
        removeAllViews();
    }

    public void resume() {
        AlbumScaleMainView albumScaleMainView = this.f43757b;
        if (albumScaleMainView != null) {
            albumScaleMainView.resume();
        }
        AlbumScaleItemView01 albumScaleItemView01 = this.f43758c;
        if (albumScaleItemView01 != null) {
            albumScaleItemView01.resume();
        }
        AlbumScaleItemView02 albumScaleItemView02 = this.f43759d;
        if (albumScaleItemView02 != null) {
            albumScaleItemView02.resume();
        }
        AlbumScaleItemView03 albumScaleItemView03 = this.f43760e;
        if (albumScaleItemView03 != null) {
            albumScaleItemView03.resume();
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void setBitmapResources(List<Bitmap> list) {
        this.f43756a = list;
    }

    @Override // com.smartdigimkt.y1.l
    public void start() {
        if (this.f43757b == null || this.f43758c == null || this.f43759d == null || this.f43760e == null) {
            return;
        }
        if (this.f43761f) {
            resume();
        } else {
            post(new a(this));
        }
    }

    @Override // com.smartdigimkt.y1.l
    public void stop() {
        AlbumScaleMainView albumScaleMainView = this.f43757b;
        if (albumScaleMainView != null) {
            albumScaleMainView.stop();
        }
        AlbumScaleItemView01 albumScaleItemView01 = this.f43758c;
        if (albumScaleItemView01 != null) {
            albumScaleItemView01.stop();
        }
        AlbumScaleItemView02 albumScaleItemView02 = this.f43759d;
        if (albumScaleItemView02 != null) {
            albumScaleItemView02.stop();
        }
        AlbumScaleItemView03 albumScaleItemView03 = this.f43760e;
        if (albumScaleItemView03 != null) {
            albumScaleItemView03.stop();
        }
        this.f43761f = false;
    }

    public AlbumScaleAnimatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlbumScaleAnimatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43761f = false;
    }
}
