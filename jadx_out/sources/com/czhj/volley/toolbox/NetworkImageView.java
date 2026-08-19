package com.czhj.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.ImageLoader;

/* loaded from: classes3.dex */
public class NetworkImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private String f29684a;

    /* renamed from: b, reason: collision with root package name */
    private int f29685b;

    /* renamed from: c, reason: collision with root package name */
    private int f29686c;

    /* renamed from: d, reason: collision with root package name */
    private ImageLoader f29687d;

    /* renamed from: e, reason: collision with root package name */
    private ImageLoader.ImageContainer f29688e;

    /* renamed from: com.czhj.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    public class AnonymousClass1 implements ImageLoader.ImageListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f29689a;

        public AnonymousClass1(boolean z2) {
            this.f29689a = z2;
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f29686c != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f29686c);
            }
        }

        @Override // com.czhj.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z2) {
            if (z2 && this.f29689a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.czhj.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
                return;
            }
            if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f29685b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f29685b);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f29688e;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f29688e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        a(true);
    }

    public void setDefaultImageResId(int i2) {
        this.f29685b = i2;
    }

    public void setErrorImageResId(int i2) {
        this.f29686c = i2;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        Threads.a();
        this.f29684a = str;
        this.f29687d = imageLoader;
        a(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        int i2 = this.f29685b;
        if (i2 != 0) {
            setImageResource(i2);
        } else {
            setImageBitmap(null);
        }
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public void a(boolean z2) {
        boolean z3;
        boolean z4;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (getLayoutParams() != null) {
            z3 = getLayoutParams().width == -2;
            z4 = getLayoutParams().height == -2;
        } else {
            z3 = false;
            z4 = false;
        }
        boolean z5 = z3 && z4;
        if (width == 0 && height == 0 && !z5) {
            return;
        }
        if (TextUtils.isEmpty(this.f29684a)) {
            ImageLoader.ImageContainer imageContainer = this.f29688e;
            if (imageContainer != null) {
                imageContainer.cancelRequest();
                this.f29688e = null;
            }
            a();
            return;
        }
        ImageLoader.ImageContainer imageContainer2 = this.f29688e;
        if (imageContainer2 != null && imageContainer2.getRequestUrl() != null) {
            if (this.f29688e.getRequestUrl().equals(this.f29684a)) {
                return;
            }
            this.f29688e.cancelRequest();
            a();
        }
        if (z3) {
            width = 0;
        }
        this.f29688e = this.f29687d.get(this.f29684a, new AnonymousClass1(z2), width, z4 ? 0 : height, scaleType);
    }
}
