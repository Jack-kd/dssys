package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.beizi.fusion.rf;
import com.beizi.fusion.tf;
import com.beizi.fusion.x3;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BZCarouselView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private List f16973a;

    /* renamed from: b, reason: collision with root package name */
    private final List f16974b;

    /* renamed from: c, reason: collision with root package name */
    private int f16975c;

    /* renamed from: d, reason: collision with root package name */
    private long f16976d;

    /* renamed from: e, reason: collision with root package name */
    private e f16977e;

    /* renamed from: f, reason: collision with root package name */
    private final AccelerateDecelerateInterpolator f16978f;

    /* renamed from: g, reason: collision with root package name */
    private final Handler f16979g;

    /* renamed from: h, reason: collision with root package name */
    private final Runnable f16980h;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                BZCarouselView.this.performCarousel();
                BZCarouselView.this.f16979g.postDelayed(this, BZCarouselView.this.f16976d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements rf.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f16982a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f16983b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f16984c;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ Bitmap f16986a;

            /* renamed from: com.beizi.fusion.widget.BZCarouselView$b$a$a, reason: collision with other inner class name */
            public class RunnableC0175a implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ BitmapDrawable f16988a;

                public RunnableC0175a(BitmapDrawable bitmapDrawable) {
                    this.f16988a = bitmapDrawable;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView;
                    try {
                        BitmapDrawable bitmapDrawable = this.f16988a;
                        if (bitmapDrawable == null || (imageView = b.this.f16984c) == null) {
                            return;
                        }
                        imageView.setBackground(bitmapDrawable);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            public a(Bitmap bitmap) {
                this.f16986a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (this.f16986a != null) {
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(tf.a(BZCarouselView.this.getContext(), this.f16986a, 20.0f));
                        if (BZCarouselView.this.f16979g != null) {
                            BZCarouselView.this.f16979g.post(new RunnableC0175a(bitmapDrawable));
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public b(int i2, int i3, ImageView imageView) {
            this.f16982a = i2;
            this.f16983b = i3;
            this.f16984c = imageView;
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                float fAbs = Math.abs(((float) ((this.f16982a * 1.0d) / this.f16983b)) - ((float) ((bitmap.getWidth() * 1.0d) / bitmap.getHeight())));
                if (fAbs > 0.1f) {
                    this.f16984c.setScaleType(ImageView.ScaleType.CENTER);
                    x3.c().e().execute(new a(bitmap));
                } else if (fAbs > 0.07d) {
                    this.f16984c.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    this.f16984c.setScaleType(ImageView.ScaleType.FIT_XY);
                }
                this.f16984c.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f16990a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f16991b;

        public c(ImageView imageView, int i2) {
            this.f16990a = imageView;
            this.f16991b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = this.f16990a;
            if (imageView != null) {
                imageView.setTranslationX(this.f16991b);
            }
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f16993a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f16994b;

        public d(ImageView imageView, int i2) {
            this.f16993a = imageView;
            this.f16994b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = this.f16993a;
            if (imageView != null) {
                imageView.setTranslationX(-this.f16994b);
            }
        }
    }

    public interface e {
        void a(int i2);
    }

    public BZCarouselView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            stopCarousel();
            this.f16979g.removeCallbacksAndMessages(null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void performCarousel() {
        try {
            if (this.f16974b.size() <= 1) {
                return;
            }
            int i2 = getResources().getDisplayMetrics().widthPixels;
            ImageView imageView = (ImageView) this.f16974b.get(this.f16975c);
            int size = (this.f16975c + 1) % this.f16974b.size();
            ImageView imageView2 = (ImageView) this.f16974b.get(size);
            float f2 = i2;
            imageView.animate().translationX(-f2).setDuration(500L).setInterpolator(this.f16978f).start();
            imageView2.setTranslationX(f2);
            imageView2.animate().translationX(0.0f).setDuration(500L).setInterpolator(this.f16978f).start();
            this.f16975c = size;
            this.f16979g.postDelayed(new c(imageView, i2), 500L);
            e eVar = this.f16977e;
            if (eVar != null) {
                eVar.a(this.f16975c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void performLastCarousel() {
        try {
            if (this.f16974b.size() <= 1) {
                return;
            }
            stopCarousel();
            int i2 = getResources().getDisplayMetrics().widthPixels;
            ImageView imageView = (ImageView) this.f16974b.get(this.f16975c);
            int size = ((this.f16975c - 1) + this.f16974b.size()) % this.f16974b.size();
            ImageView imageView2 = (ImageView) this.f16974b.get(size);
            float f2 = i2;
            imageView.animate().translationX(f2).setDuration(500L).setInterpolator(this.f16978f).start();
            imageView2.setTranslationX(-f2);
            imageView2.animate().translationX(0.0f).setDuration(500L).setInterpolator(this.f16978f).start();
            this.f16975c = size;
            this.f16979g.postDelayed(new d(imageView, i2), 500L);
            e eVar = this.f16977e;
            if (eVar != null) {
                eVar.a(this.f16975c);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void performNextCarousel() {
        try {
            if (this.f16974b.size() > 1) {
                stopCarousel();
                performCarousel();
            } else {
                e eVar = this.f16977e;
                if (eVar != null) {
                    eVar.a(this.f16975c);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setImageUrls(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f16973a = list;
        a(0, 0);
    }

    public void setOnContentChangeListener(e eVar) {
        this.f16977e = eVar;
    }

    public void setScrollInterval(int i2) {
        if (i2 > 0) {
            this.f16976d = i2 * 1000;
        }
    }

    public void startCarousel() {
        try {
            List list = this.f16973a;
            if (list != null && !list.isEmpty()) {
                stopCarousel();
                Handler handler = this.f16979g;
                if (handler != null) {
                    handler.postDelayed(this.f16980h, this.f16976d);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void stopCarousel() {
        try {
            Handler handler = this.f16979g;
            if (handler != null) {
                handler.removeCallbacks(this.f16980h);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public BZCarouselView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(int i2, int i3) {
        try {
            this.f16974b.clear();
            removeAllViews();
            if (i2 <= 0) {
                i2 = getResources().getDisplayMetrics().widthPixels;
            }
            if (i3 <= 0) {
                i3 = getResources().getDisplayMetrics().heightPixels;
            }
            for (String str : this.f16973a) {
                ImageView imageView = new ImageView(getContext());
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setLayoutParams(new FrameLayout.LayoutParams(i2, i3));
                imageView.setTranslationX(this.f16974b.isEmpty() ? 0.0f : i2);
                this.f16974b.add(imageView);
                addView(imageView, new ViewGroup.LayoutParams(i2, i3));
                a(str, imageView, i2, i3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public BZCarouselView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f16974b = new ArrayList();
        this.f16975c = 0;
        this.f16976d = 5000L;
        this.f16978f = new AccelerateDecelerateInterpolator();
        this.f16979g = new Handler(Looper.getMainLooper());
        this.f16980h = new a();
    }

    public void setImageUrls(List<String> list, int i2, int i3) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f16973a = list;
        a(i2, i3);
    }

    private void a(String str, ImageView imageView, int i2, int i3) {
        rf.a(getContext()).a(str, new b(i2, i3, imageView));
    }
}
