package com.meishu.sdk.platform.ms.recycler;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.domain.LayoutBean;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.C1243b;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.ResultBean;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.f0;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.j0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.r0;
import com.meishu.sdk.core.utils.y;
import com.meishu.sdk.core.view.FeedAdOverlayManager;
import com.meishu.sdk.core.view.PositionView;
import com.meishu.sdk.core.view.RoundImageView;
import com.meishu.sdk.core.view.ShakeImageView;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPoint;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.meishu.sdk.platform.gdt.util.PxUtils;
import com.meishu.sdk.platform.ms.recycler.t;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.math.BigInteger;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class i implements RecyclerAdData {

    /* renamed from: C, reason: collision with root package name */
    public static int f32936C = 250;

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.b f32939a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.recycler.c f32940b;

    /* renamed from: c, reason: collision with root package name */
    public RelativeLayout f32941c;

    /* renamed from: d, reason: collision with root package name */
    public RecylcerAdInteractionListener f32942d;

    /* renamed from: e, reason: collision with root package name */
    public int f32943e;

    /* renamed from: h, reason: collision with root package name */
    public ExpressMediaListener f32946h;

    /* renamed from: i, reason: collision with root package name */
    public int f32947i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f32948j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f32949k;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f32950l;

    /* renamed from: m, reason: collision with root package name */
    public int f32951m;

    /* renamed from: n, reason: collision with root package name */
    public FrameLayout f32952n;

    /* renamed from: o, reason: collision with root package name */
    public TouchAdContainer f32953o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f32954p;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f32955q;

    /* renamed from: r, reason: collision with root package name */
    public int f32956r;

    /* renamed from: s, reason: collision with root package name */
    public int f32957s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f32958t;

    /* renamed from: v, reason: collision with root package name */
    public WeakReference<Activity> f32960v;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference<ViewGroup> f32961w;

    /* renamed from: x, reason: collision with root package name */
    public int f32962x;

    /* renamed from: f, reason: collision with root package name */
    public int f32944f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32945g = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f32959u = false;

    /* renamed from: y, reason: collision with root package name */
    public ViewTreeObserver.OnScrollChangedListener f32963y = new j();

    /* renamed from: z, reason: collision with root package name */
    public int f32964z = 0;

    /* renamed from: A, reason: collision with root package name */
    public boolean f32937A = true;

    /* renamed from: B, reason: collision with root package name */
    public ViewTreeObserver.OnScrollChangedListener f32938B = new m();

    public class a implements RecyclerAdMediaListener {
        public a() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onProgressUpdate(long j2, long j3) {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoCompleted() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoCompleted();
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoError() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoError(-1, "视频加载出错");
            }
            i.this.a(-1, "视频加载出错");
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoLoaded() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoLoaded();
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoPause() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoPause();
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoResume() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoResume();
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener
        public void onVideoStart() {
            ExpressMediaListener expressMediaListener = i.this.f32946h;
            if (expressMediaListener != null) {
                expressMediaListener.onVideoStart();
            }
        }
    }

    public class b implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RoundImageView f32966a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f32967b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ float f32968c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ ImageView f32969d;

        public b(RoundImageView roundImageView, Context context, float f2, ImageView imageView) {
            this.f32966a = roundImageView;
            this.f32967b = context;
            this.f32968c = f2;
            this.f32969d = imageView;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            int iDpToPx;
            int i2;
            try {
                if (!httpResponse.isSuccessful()) {
                    i.this.a(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                    return;
                }
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
                    return;
                }
                if (responseBody.length >= j0.a()) {
                    i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
                    return;
                }
                if (i.a(i.this, responseBody)) {
                    RoundImageView roundImageView = this.f32966a;
                    if (roundImageView != null) {
                        roundImageView.setBytes(responseBody);
                        int gifWidth = this.f32966a.getGifWidth();
                        int gifHeight = this.f32966a.getGifHeight();
                        iDpToPx = i.this.f32940b.getAdLoader() instanceof RecyclerMixAdLoader ? PxUtils.dpToPx(this.f32967b, ((RecyclerMixAdLoader) i.this.f32940b.getAdLoader()).getFixedHeight()) : 0;
                        LogUtil.i("i", "fixedHeight=" + iDpToPx);
                        int i3 = (int) (this.f32968c * 75.0f);
                        if (iDpToPx > 0) {
                            i2 = (gifWidth * iDpToPx) / gifHeight;
                        } else {
                            i2 = (gifWidth * i3) / gifHeight;
                            iDpToPx = i3;
                        }
                        ViewGroup.LayoutParams layoutParams = this.f32966a.getLayoutParams();
                        layoutParams.width = i2;
                        layoutParams.height = iDpToPx;
                        this.f32966a.setLayoutParams(layoutParams);
                        this.f32966a.startAnimation();
                        i.this.f32939a.a().f32388D = System.currentTimeMillis();
                    }
                } else {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                    if (bitmapDecodeByteArray == null) {
                        i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
                        return;
                    }
                    i.this.f32939a.a().f32388D = System.currentTimeMillis();
                    iDpToPx = i.this.f32940b.getAdLoader() instanceof RecyclerMixAdLoader ? PxUtils.dpToPx(this.f32967b, ((RecyclerMixAdLoader) i.this.f32940b.getAdLoader()).getFixedHeight()) : 0;
                    LogUtil.i("i", "fixedHeight=" + iDpToPx);
                    int i4 = (int) (this.f32968c * 75.0f);
                    if (iDpToPx <= 0) {
                        int width = (bitmapDecodeByteArray.getWidth() * i4) / bitmapDecodeByteArray.getHeight();
                        iDpToPx = i4;
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.f32966a.getLayoutParams();
                    layoutParams2.height = iDpToPx;
                    this.f32966a.setLayoutParams(layoutParams2);
                    this.f32966a.setImageBitmap(bitmapDecodeByteArray);
                    Bitmap bitmapA = f0.a(bitmapDecodeByteArray, 25);
                    if (bitmapA != null) {
                        this.f32969d.setLayoutParams(layoutParams2);
                        this.f32969d.setImageBitmap(bitmapA);
                    }
                }
                i iVar = i.this;
                if (iVar.f32945g) {
                    return;
                }
                iVar.f32945g = true;
                i.c(i.this);
            } catch (Throwable th) {
                th.printStackTrace();
                i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
            }
        }
    }

    public class c implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RoundImageView f32971a;

        public c(RoundImageView roundImageView) {
            this.f32971a = roundImageView;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            try {
                if (!httpResponse.isSuccessful()) {
                    i.this.a(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                    return;
                }
                try {
                    byte[] responseBody = httpResponse.getResponseBody();
                    if (responseBody == null || responseBody.length <= 0) {
                        i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
                        return;
                    }
                    if (responseBody.length >= j0.a()) {
                        i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
                        return;
                    }
                    if (i.a(i.this, responseBody)) {
                        RoundImageView roundImageView = this.f32971a;
                        if (roundImageView != null) {
                            roundImageView.setBytes(responseBody);
                            this.f32971a.startAnimation();
                            this.f32971a.getGifHeight();
                        }
                    } else {
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                        if (bitmapDecodeByteArray == null) {
                            i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
                            return;
                        } else {
                            bitmapDecodeByteArray.getHeight();
                            this.f32971a.setImageBitmap(bitmapDecodeByteArray);
                        }
                    }
                    i iVar = i.this;
                    if (iVar.f32945g) {
                        return;
                    }
                    iVar.f32945g = true;
                    i.c(i.this);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
            }
        }
    }

    public class d implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ RoundImageView f32973a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f32974b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f32975c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ ImageView f32976d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ RelativeLayout f32977e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ShakeImageView f32978f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ImageView f32979g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ TextView f32980h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ TextView f32981i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f32982j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ boolean f32983k;

        public d(RoundImageView roundImageView, int i2, Context context, ImageView imageView, RelativeLayout relativeLayout, ShakeImageView shakeImageView, ImageView imageView2, TextView textView, TextView textView2, ViewGroup viewGroup, boolean z2) {
            this.f32973a = roundImageView;
            this.f32974b = i2;
            this.f32975c = context;
            this.f32976d = imageView;
            this.f32977e = relativeLayout;
            this.f32978f = shakeImageView;
            this.f32979g = imageView2;
            this.f32980h = textView;
            this.f32981i = textView2;
            this.f32982j = viewGroup;
            this.f32983k = z2;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            String str;
            try {
                if (!httpResponse.isSuccessful()) {
                    i.this.a(httpResponse.getErrorCode(), httpResponse.getErrorDescription());
                    return;
                }
                byte[] responseBody = httpResponse.getResponseBody();
                if (responseBody == null || responseBody.length <= 0) {
                    i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
                    return;
                }
                if (responseBody.length >= j0.a()) {
                    i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
                    return;
                }
                LogUtil.d("i", "showUpDownStyle");
                if (i.a(i.this, responseBody)) {
                    RoundImageView roundImageView = this.f32973a;
                    if (roundImageView != null) {
                        roundImageView.setBytes(responseBody);
                        int gifHeight = (this.f32974b * this.f32973a.getGifHeight()) / this.f32973a.getGifWidth();
                        Integer accept_ad_height = ((RecyclerMixAdLoader) i.this.f32940b.getAdLoader()).getAccept_ad_height();
                        if (accept_ad_height != null && accept_ad_height.intValue() > 0) {
                            gifHeight = accept_ad_height.intValue();
                        }
                        try {
                            if ((this.f32974b * 1.0f) / gifHeight < 1.77d && accept_ad_height != null && accept_ad_height.intValue() == -1) {
                                gifHeight = (int) Math.round(this.f32974b / 1.77d);
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        ViewGroup.LayoutParams layoutParams = this.f32973a.getLayoutParams();
                        layoutParams.width = -1;
                        layoutParams.height = gifHeight;
                        this.f32973a.setLayoutParams(layoutParams);
                        this.f32973a.startAnimation();
                    }
                } else {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(responseBody, 0, responseBody.length);
                    if (bitmapDecodeByteArray == null) {
                        i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载失败");
                        return;
                    }
                    int height = (this.f32974b * bitmapDecodeByteArray.getHeight()) / bitmapDecodeByteArray.getWidth();
                    Integer accept_ad_height2 = ((RecyclerMixAdLoader) i.this.f32940b.getAdLoader()).getAccept_ad_height();
                    if (accept_ad_height2 != null && accept_ad_height2.intValue() > 0) {
                        height = accept_ad_height2.intValue();
                    }
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f32973a.getLayoutParams();
                    try {
                        if ((this.f32974b * 1.0f) / height < 1.77d && accept_ad_height2 != null && accept_ad_height2.intValue() == -1) {
                            height = (int) Math.round(this.f32974b / 1.77d);
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    layoutParams2.width = -1;
                    layoutParams2.height = height;
                    layoutParams2.addRule(14);
                    this.f32973a.setLayoutParams(layoutParams2);
                    this.f32973a.setImageBitmap(bitmapDecodeByteArray);
                    Bitmap bitmapA = f0.a(bitmapDecodeByteArray, 25);
                    if (bitmapA != null) {
                        this.f32976d.setLayoutParams(layoutParams2);
                        this.f32976d.setImageBitmap(bitmapA);
                    }
                }
                i.this.f32939a.a().f32388D = System.currentTimeMillis();
                if ((i.this.f32939a.a().getAct_type() & 4) == 4 || (i.this.f32939a.a().getAct_type() & 64) == 64) {
                    i.this.a(this.f32975c, this.f32977e, this.f32978f);
                    this.f32979g.setVisibility(0);
                    this.f32980h.setVisibility(0);
                    str = "摇动或点击";
                    TextView textView = this.f32981i;
                    if (textView != null) {
                        textView.setText("摇一摇");
                    }
                } else if (com.meishu.sdk.core.utils.h.e(i.this.f32939a.a().getAct_type())) {
                    i.this.a(this.f32975c, this.f32977e, this.f32978f);
                    this.f32979g.setVisibility(0);
                    this.f32980h.setVisibility(0);
                    str = "扭动或点击";
                    TextView textView2 = this.f32981i;
                    if (textView2 != null) {
                        textView2.setText("扭一扭");
                    }
                } else {
                    str = "点击";
                    ViewGroup viewGroup = this.f32982j;
                    if (viewGroup != null && !this.f32983k) {
                        viewGroup.setVisibility(0);
                        this.f32979g.setImageResource(R.drawable.ms_ic_right);
                        this.f32979g.setVisibility(0);
                        this.f32980h.setVisibility(0);
                    }
                }
                this.f32980h.setText(str + (i.this.f32939a.a().getInteractionType() == 1 ? "立即下载" : "查看详情"));
                i iVar = i.this;
                if (iVar.f32945g) {
                    return;
                }
                iVar.f32945g = true;
                i.c(i.this);
            } catch (Throwable th) {
                th.printStackTrace();
                i.this.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
            }
        }
    }

    public class e extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f32985a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ RelativeLayout f32986b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ShakeImageView f32987c;

        public class a extends com.meishu.sdk.core.safe.l {
            public a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                e.this.f32987c.stopAnimation();
                e.this.f32986b.setVisibility(8);
            }
        }

        public e(Context context, RelativeLayout relativeLayout, ShakeImageView shakeImageView) {
            this.f32985a = context;
            this.f32986b = relativeLayout;
            this.f32987c = shakeImageView;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                DisplayMetrics displayMetrics = this.f32985a.getResources().getDisplayMetrics();
                int measuredHeight = i.this.f32941c.getMeasuredHeight();
                if (measuredHeight < displayMetrics.density * 120.0f) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f32986b.getLayoutParams();
                    layoutParams.height = Math.max(measuredHeight - 70, (int) (displayMetrics.density * 70.0f));
                    layoutParams.width = -2;
                    layoutParams.addRule(13);
                    this.f32986b.setLayoutParams(layoutParams);
                }
                this.f32986b.setVisibility(0);
                this.f32987c.startAnimation();
                this.f32986b.postDelayed(new a(), 2000L);
            } catch (Throwable unused) {
            }
        }
    }

    public class f extends com.meishu.sdk.core.safe.o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f32990a;

        public f(View view) {
            this.f32990a = view;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) {
            if (i.this.f32940b.getLoaderListener() != 0) {
                ((com.meishu.sdk.core.ad.recycler.a) i.this.f32940b.getLoaderListener()).onAdClosed();
            }
            RecylcerAdInteractionListener recylcerAdInteractionListener = i.this.f32942d;
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdClosed();
            }
            View view2 = this.f32990a;
            if (view2 != null && view2.getParent() != null && (this.f32990a.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.f32990a.getParent()).removeView(this.f32990a);
            }
            ShakeUtil.getInstance().a(i.this.f32947i);
        }
    }

    public class g implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f32992a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Rect f32993b;

        public g(ViewGroup viewGroup, Rect rect) {
            this.f32992a = viewGroup;
            this.f32993b = rect;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!this.f32992a.getGlobalVisibleRect(this.f32993b)) {
                return true;
            }
            if (this.f32993b.height() * this.f32993b.width() >= this.f32992a.getHeight() * this.f32992a.getWidth() * 0.3d) {
                i.this.f32954p = true;
                i.this.f32939a.a().setMonitorUrl(i0.a(i.this.f32939a.a().getMonitorUrl(), this.f32992a, (View) null));
                i iVar = i.this;
                if (iVar.f32948j && iVar.f32939a.getAdPatternType() == 2) {
                    i.a(i.this);
                    i.b(i.this);
                } else {
                    i.c(i.this);
                }
                this.f32992a.getViewTreeObserver().removeOnPreDrawListener(this);
            }
            return true;
        }
    }

    public class h implements FeedAdOverlayManager.OnOverlayTriggerAction {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f32995a;

        public h(ViewGroup viewGroup) {
            this.f32995a = viewGroup;
        }

        @Override // com.meishu.sdk.core.view.FeedAdOverlayManager.OnOverlayTriggerAction
        public void onOverlayAttached() {
            try {
                p1.a(i.this.f32939a.a().getEventUrl(), 29, 0, null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.view.FeedAdOverlayManager.OnOverlayTriggerAction
        public void onTrigger(boolean z2, boolean z3, float f2, float f3, long j2, float f4, float f5, int i2) {
            RecylcerAdInteractionListener recylcerAdInteractionListener;
            if (i.this.f32939a.a().f32386B) {
                if (!z3) {
                    try {
                        p1.a(i.this.f32939a.a().getEventUrl(), 30, 0, null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                i0.a(i.this.f32939a, this.f32995a);
                if (z2) {
                    i iVar = i.this;
                    iVar.a(iVar.f32953o, f2, f3, j2, f4, f5, i2);
                    return;
                }
                try {
                    if (i.this.f32939a.a().getCbc() == 0 && (recylcerAdInteractionListener = i.this.f32942d) != null) {
                        recylcerAdInteractionListener.onAdClicked();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                s.a(i.this.f32939a, f2, f3, j2, f4, f5);
                i.this.f32939a.a().setClkActType(1);
                com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) i.this.f32939a, true);
            }
        }
    }

    /* renamed from: com.meishu.sdk.platform.ms.recycler.i$i, reason: collision with other inner class name */
    public class C0704i implements TouchAdContainer.OnWindownEventListener {
        public C0704i() {
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onAttachedToWindow() {
            ShakeUtil.getInstance().a(i.this.f32947i, true);
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onDetachedFromWindow() {
            ShakeUtil.getInstance().a(i.this.f32947i, false);
            try {
                i.this.f32955q.getViewTreeObserver().removeOnScrollChangedListener(i.this.f32963y);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.view.TouchAdContainer.OnWindownEventListener
        public void onWindowFocusChanged(boolean z2) {
            if (z2) {
                ShakeUtil.getInstance().a(i.this.f32947i, true);
            } else {
                ShakeUtil.getInstance().a(i.this.f32947i, false);
            }
        }
    }

    public class j implements ViewTreeObserver.OnScrollChangedListener {
        public j() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                FrameLayout frameLayout = i.this.f32955q;
                if (frameLayout != null) {
                    int[] iArr = new int[2];
                    frameLayout.getLocationOnScreen(iArr);
                    int i2 = iArr[0];
                    int i3 = iArr[1];
                    int width = i.this.f32955q.getWidth();
                    int height = i.this.f32955q.getHeight();
                    if (width + i2 > 0) {
                        i iVar = i.this;
                        if (i2 < iVar.f32956r && height + i3 > 0 && i3 < iVar.f32957s) {
                            ShakeUtil.getInstance().a(i.this.f32947i, true);
                            return;
                        }
                    }
                    ShakeUtil.getInstance().a(i.this.f32947i, false);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class k implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ t.a f32999a;

        public k(t.a aVar) {
            this.f32999a = aVar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                t.a(i.this.e(), motionEvent, this.f32999a);
                return false;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class l extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TouchAdContainer f33001a;

        public class a implements q {
            public a() {
            }

            @Override // com.meishu.sdk.platform.ms.recycler.q
            public void a(ViewGroup viewGroup, float f2, float f3, long j2, float f4, float f5, int i2) {
                l lVar = l.this;
                i.this.a(lVar.f33001a, f2, f3, j2, f4, f5, i2);
            }
        }

        public class b extends r {
            public b(View view, int i2) {
                super(view, i2);
            }

            @Override // com.meishu.sdk.platform.ms.recycler.r
            public void a(float f2, float f3, long j2, float f4, float f5, int i2) {
                l lVar = l.this;
                i.this.a(lVar.f33001a, f2, f3, j2, f4, f5, i2);
            }
        }

        public class c implements View.OnTouchListener {
            public c() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                try {
                    if (motionEvent.getAction() == 0) {
                        i.this.d();
                    } else if (motionEvent.getAction() == 1) {
                        i.this.getClass();
                        float f2 = i.this.f32952n.getContext().getResources().getDisplayMetrics().density;
                        float f3 = t.f33083d;
                        float fMax = (f3 <= 0.0f || t.f33084e <= 0.0f) ? 0.0f : Math.max(Math.abs(f3 - motionEvent.getRawX()), Math.abs(t.f33084e - motionEvent.getRawY()));
                        if (fMax > i.this.f32951m) {
                            LogUtil.dev("i", "use rawXY");
                        }
                        i.this.f32951m = (int) Math.max(r3.f32951m, fMax);
                        TouchPoint touchPointA = t.a(i.this.e(), motionEvent, f2, i.this.f32951m);
                        if (touchPointA == null) {
                            return false;
                        }
                        l lVar = l.this;
                        i iVar = i.this;
                        int i2 = iVar.f32951m;
                        if (i2 / f2 > i.f32936C) {
                            float f4 = touchPointA.downX;
                            if (f4 > 0.0f) {
                                float f5 = touchPointA.downY;
                                if (f5 > 0.0f) {
                                    iVar.a(lVar.f33001a, f4, f5, touchPointA.downTime, touchPointA.upX, touchPointA.upY, i2);
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return false;
            }
        }

        public l(TouchAdContainer touchAdContainer) {
            this.f33001a = touchAdContainer;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            View view;
            try {
                TouchAdContainer touchAdContainer = this.f33001a;
                if (touchAdContainer != null) {
                    try {
                        view = (View) touchAdContainer.getParent();
                        for (int i2 = 0; view != null && i2 < 10; i2++) {
                            if ((view instanceof RecyclerView) || (view instanceof ListView) || (view instanceof ScrollView) || (view instanceof NestedScrollView)) {
                                break;
                            }
                            if (!(view.getParent() instanceof View)) {
                                break;
                            }
                            view = (View) view.getParent();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    view = null;
                } else {
                    view = null;
                }
                u uVar = new u(view);
                if (uVar.f33088a && !r0.c()) {
                    new p(i.this.f32952n, uVar.a() ? view : null).a(this.f33001a, i.f32936C, new a());
                    return;
                }
                if (view != null) {
                    view.setOnTouchListener(new c());
                    return;
                }
                try {
                    i.this.f32952n.setOnTouchListener(new b(this.f33001a.getChildAt(0), i.f32936C));
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class m implements ViewTreeObserver.OnScrollChangedListener {
        public m() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (p1.a(((RecyclerMixAdLoader) i.this.f32940b.getAdLoader()).getPosId(), i.this.f32939a.a().getAdp(), i.this.f32939a.a().getAdg())) {
                    int[] iArr = new int[2];
                    i.this.f32952n.getLocationOnScreen(iArr);
                    if (iArr[1] > 0 && t.f33085f == 0 && t.f33081b > 0.0f && t.f33082c > 0.0f) {
                        try {
                            t.a(i.this.e(), iArr[1]);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        i.this.f32964z = iArr[1];
                    }
                    i iVar = i.this;
                    if (iVar.f32937A) {
                        iVar.f32964z = iArr[1];
                        iVar.f32937A = false;
                        return;
                    }
                    int i2 = iArr[1];
                    int iAbs = Math.abs(i2 - iVar.f32964z);
                    if (iAbs > 5) {
                        i iVar2 = i.this;
                        iVar2.f32951m += iAbs;
                        iVar2.f32964z = i2;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public class n implements RecylcerAdInteractionListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f33007a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ List f33008b;

        public n(Context context, List list) {
            this.f33007a = context;
            this.f33008b = list;
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener, com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            i.this.f32948j = true;
            i iVar = i.this;
            if (iVar.f32954p) {
                i.a(iVar);
                i.b(i.this);
            }
            i iVar2 = i.this;
            Context context = this.f33007a;
            List<View> list = this.f33008b;
            iVar2.getClass();
            try {
                com.meishu.sdk.meishu_ad.nativ.b bVar = iVar2.f32939a;
                bVar.a(context, iVar2.f32941c, list, new com.meishu.sdk.platform.ms.recycler.d(bVar, new com.meishu.sdk.platform.ms.recycler.e(iVar2)));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener
        public void onAdRenderFailed() {
        }
    }

    public i(com.meishu.sdk.platform.ms.recycler.c cVar, com.meishu.sdk.meishu_ad.nativ.b bVar, int i2) {
        this.f32940b = cVar;
        this.f32939a = bVar;
        this.f32962x = i2;
        if (this.f32947i == 0) {
            this.f32947i = ShakeUtil.getInstance().b();
        }
        try {
            AdType adType = AdType.FEED_MIX;
            adType.value();
            com.meishu.sdk.core.utils.h.a();
            this.f32939a.a().setAct_type(com.meishu.sdk.core.utils.h.a(this.f32939a.a().getAct_type(), adType.value()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (bVar.a().getPower_index() > 0) {
            f32936C = bVar.a().getPower_index() * 5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) {
        int i2;
        try {
            p1.b(this.f32939a.a().getEventUrl());
            this.f32942d = recylcerAdInteractionListener;
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            if (((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_width() != null && ((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_width().intValue() > 0) {
                this.f32943e = (int) (((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_width().intValue() / displayMetrics.density);
            }
            if (((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_height() != null && ((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_height().intValue() > 0) {
                this.f32944f = (int) (((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getAccept_ad_height().intValue() / displayMetrics.density);
            }
            if ((this.f32943e > 0 && r0 * displayMetrics.density < displayMetrics.widthPixels * 0.3d) || ((i2 = this.f32944f) > 0 && i2 * displayMetrics.density < displayMetrics.widthPixels * 0.3d)) {
                LogUtil.e("i", "container size is too small");
                a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "container size is too small");
                return;
            }
            Rect rect = new Rect();
            Activity activity = context instanceof Activity ? (Activity) context : viewGroup.getContext() instanceof Activity ? (Activity) viewGroup.getContext() : null;
            if (activity != null && !this.f32949k && Build.VERSION.SDK_INT >= 29) {
                this.f32949k = true;
                activity.registerActivityLifecycleCallbacks(new com.meishu.sdk.platform.ms.recycler.k(this));
            }
            this.f32960v = new WeakReference<>(activity);
            this.f32961w = new WeakReference<>(viewGroup);
            FeedAdOverlayManager.getInstance().updateAdContainer(e(), viewGroup);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(new g(viewGroup, rect));
            viewGroup.removeAllViews();
            View adView = getAdView();
            if (adView == null) {
                return;
            }
            if (adView.getParent() != null && (adView.getParent() instanceof ViewGroup)) {
                ((ViewGroup) adView.getParent()).removeView(adView);
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
            TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup.getContext());
            touchAdContainer.setTouchPositionListener(new TouchPositionListener(this.f32939a));
            touchAdContainer.addView(adView, layoutParams);
            PositionView positionView = new PositionView(viewGroup.getContext());
            positionView.setTag(Integer.valueOf(this.f32947i));
            positionView.setOnWindownEventListener(new C0704i());
            for (int i3 = 0; i3 < touchAdContainer.getChildCount(); i3++) {
                try {
                    View childAt = touchAdContainer.getChildAt(i3);
                    if (childAt instanceof PositionView) {
                        touchAdContainer.removeView(childAt);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            touchAdContainer.addView(positionView, 1, 1);
            viewGroup.addView(touchAdContainer);
            a(activity, touchAdContainer);
            try {
                this.f32939a.a().getAppendInfo().getHasClicked().a(new C1243b.a() { // from class: U0.a
                    @Override // com.meishu.sdk.core.utils.C1243b.a
                    public final void a(Object obj, Object obj2) {
                        this.f570a.a((Boolean) obj, (Boolean) obj2);
                    }
                });
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            b(activity, touchAdContainer);
            p1.a(viewGroup, this.f32939a.a().getPosId(), this.f32939a.a().getLoadedTime());
            this.f32939a.setInteractionListener(this.f32942d);
        } catch (Throwable th) {
            RecylcerAdInteractionListener recylcerAdInteractionListener2 = this.f32942d;
            if (recylcerAdInteractionListener2 != null) {
                recylcerAdInteractionListener2.onAdRenderFailed();
            }
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        ShakeUtil.getInstance().a(this.f32947i);
        com.meishu.sdk.meishu_ad.nativ.b bVar = this.f32939a;
        if (bVar != null && bVar.getMediaView() != null) {
            ((NormalMediaView) this.f32939a.getMediaView()).d();
        }
        try {
            FrameLayout frameLayout = this.f32955q;
            if (frameLayout != null) {
                frameLayout.getViewTreeObserver().removeOnScrollChangedListener(this.f32963y);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            FeedAdOverlayManager.getInstance().removeOverlay(e());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String e() {
        try {
            return this.f32939a.a().getReq_id() + "_" + this.f32962x;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        return this.f32939a.getAdPatternType();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public android.view.View getAdView() {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.recycler.i.getAdView():android.view.View");
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppName() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public List<MeishuAdInfo.PermissionBean> getAppPermissionList() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        try {
            resultBean.setCid(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getCid());
            resultBean.setCat(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getCat());
            resultBean.setAderId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getAder_id());
            resultBean.setFromId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getFromId());
            resultBean.setDrawing(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getDrawing());
            resultBean.setPid(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getPosId());
            resultBean.setReqId(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getReq_id());
            resultBean.setPrice(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getEcpm());
            resultBean.setEcpm(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getEcpm() + "");
            resultBean.setS_ext(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getS_ext());
            resultBean.setS_code(((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getS_code());
            resultBean.setAdInfo(C1242a.a((BaseAdSlot) this.f32940b.f32888a));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        resultBean.setSdkName("MS");
        return resultBean;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        return this.f32939a.a().f32413y * 1000;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromId() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getFromLogo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getHeight() {
        return this.f32939a.a().f32390b;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconTitle() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        return C1242a.a(this.f32939a.a().getAder_id()) ? this.f32939a.a().getImageUrls() : new String[0];
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        return this.f32939a.getInteractionType();
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public View getMediaView() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPackageName() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return "MS";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoCover() {
        return "";
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public int getWidth() {
        return this.f32939a.a().f32389a;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isAdValid() {
        try {
            int expire_timestamp = ((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getExpire_timestamp();
            return SystemClock.uptimeMillis() - ((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        return true;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void mute() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void pauseVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void replay() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void resumeVideo() {
    }

    @Override // com.meishu.sdk.core.s2s.ISBidding
    public void sendLossNotification(Map map) {
        a0.a(this.f32940b.getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getLossUrl(), (Map<String, Object>) map);
    }

    @Override // com.meishu.sdk.core.s2s.ISBidding
    public void sendWinNotification(Map map) {
        a0.b(this.f32940b.getContext(), ((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a).getWinUrl(), map);
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setDownloadStatusListener(DownloadStatusListener downloadStatusListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
        this.f32946h = expressMediaListener;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void startVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void stopVideo() {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void unmute() {
    }

    public static void c(i iVar) {
        if (!iVar.f32948j && iVar.f32945g && iVar.f32954p) {
            iVar.f32948j = true;
            if (iVar.f32940b.f32919c != null && iVar.f32939a.getAdPatternType() != 2) {
                com.meishu.sdk.meishu_ad.nativ.f fVarA = iVar.f32939a.a();
                String[] monitorUrl = iVar.f32939a.a().getMonitorUrl();
                StringBuilder sb = new StringBuilder();
                sb.append(iVar.f32939a.a().f32387C);
                sb.append(com.anythink.core.common.d.i.f2495E);
                iVar.f32939a.a().getClass();
                sb.append(0L);
                sb.append(com.anythink.core.common.d.i.f2495E);
                sb.append(iVar.f32939a.a().f32388D);
                fVarA.setMonitorUrl(i0.b(monitorUrl, sb.toString()));
                iVar.f32940b.f32919c.onADExposure();
                RecylcerAdInteractionListener recylcerAdInteractionListener = iVar.f32942d;
                if (recylcerAdInteractionListener != null) {
                    recylcerAdInteractionListener.onAdExposure();
                }
                iVar.f32939a.a().f32386B = true;
                iVar.c();
            }
            if (!com.meishu.sdk.core.utils.h.c(iVar.f32939a.a().getAct_type()) || iVar.f32939a.getAdPatternType() == 2) {
                return;
            }
            int iB = com.meishu.sdk.core.utils.h.b(iVar.f32939a.a().getAct_type());
            long jCurrentTimeMillis = System.currentTimeMillis();
            ShakeUtil.getInstance().a(iVar.f32939a.a().getPosId(), iVar.f32939a.a().getLoadedTime(), iVar.f32939a.a().getDclk());
            ShakeUtil.getInstance().a(iVar.f32939a.a().getPower_index2(), iVar.f32939a.a().getPower_index(), iB, iVar.f32939a.a().getPower_delay(), iVar.f32939a.a().getPower_count(), iVar.f32947i, iVar.f32939a.a().getEcpm(), new com.meishu.sdk.platform.ms.recycler.j(iVar, jCurrentTimeMillis));
            ShakeUtil.getInstance().a(true);
        }
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    public final void d() {
        t.a();
        this.f32951m = 0;
        this.f32937A = true;
        this.f32964z = 0;
    }

    public static boolean a(i iVar, byte[] bArr) {
        byte[] bArr2;
        iVar.getClass();
        try {
            bArr2 = new byte[4];
            System.arraycopy(bArr, 0, bArr2, 0, 4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return new BigInteger(1, bArr2).toString(16).startsWith("47494638");
    }

    public final void b(Activity activity, TouchAdContainer touchAdContainer) {
        if (activity != null) {
            try {
                DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
                this.f32956r = displayMetrics.widthPixels;
                this.f32957s = displayMetrics.heightPixels;
                try {
                    if (!com.meishu.sdk.core.utils.h.c(this.f32939a.a().getAct_type())) {
                        return;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (this.f32955q == null) {
                    this.f32955q = new FrameLayout(activity);
                    int height = -1;
                    int width = touchAdContainer.getWidth() <= 0 ? -1 : touchAdContainer.getWidth();
                    if (touchAdContainer.getHeight() > 0) {
                        height = touchAdContainer.getHeight();
                    }
                    this.f32955q.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                    touchAdContainer.addView(this.f32955q);
                }
                this.f32955q.getViewTreeObserver().addOnScrollChangedListener(this.f32963y);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public final void d(Context context, LayoutBean.StyleBean styleBean, int i2, int i3, int i4, int i5) {
        int i6;
        String str;
        boolean zD = r0.d();
        if (zD) {
            i6 = R.layout.ms_item_pre_render_large_image;
        } else {
            i6 = R.layout.ms_item_pre_render_large_image_v2;
        }
        if (styleBean != null) {
            int type = styleBean.getType();
            if (type != 201) {
                if (type == 601 && !zD) {
                    i6 = R.layout.ms_item_pre_render_large_image_top_v2_601;
                }
            } else if (zD) {
                i6 = R.layout.ms_item_pre_render_large_image_top;
            } else {
                i6 = R.layout.ms_item_pre_render_large_image_top_v2;
            }
        }
        View viewInflate = View.inflate(context, i6, null);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_rootview);
        this.f32941c = relativeLayout;
        relativeLayout.setPadding(i2, i3, i4, i5);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_videocontainer);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_imagebg);
        TextView textView = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_content);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_imageview);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_logo);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_fromtext);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_close);
        if (TextUtils.isEmpty(this.f32939a.a().title)) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f32939a.a().title);
        }
        if (TextUtils.isEmpty(this.f32939a.a().f32391c)) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f32939a.a().f32391c);
        }
        if (TextUtils.isEmpty(this.f32939a.a().f32393e)) {
            textView3.setVisibility(8);
        } else {
            textView3.setText(this.f32939a.a().f32393e);
        }
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R.id.ms_item_pre_render_large_shake_layout);
        ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_shake_image);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_shake_text);
        RelativeLayout relativeLayout3 = (RelativeLayout) viewInflate.findViewById(R.id.ms_shakeRoot);
        ShakeImageView shakeImageView = (ShakeImageView) viewInflate.findViewById(R.id.ms_shake_img);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.ms_shake_text);
        StringBuilder sbA = com.meishu.sdk.activity.a.a("clkType=");
        sbA.append(this.f32939a.a().getAct_type());
        LogUtil.d("i", sbA.toString());
        if (com.meishu.sdk.core.utils.h.d(this.f32939a.a().getAct_type())) {
            a(context, relativeLayout3, shakeImageView);
            imageView4.setVisibility(0);
            textView5.setVisibility(0);
            if (textView6 != null) {
                textView6.setText("摇一摇");
            }
            str = "摇动或点击";
        } else if (com.meishu.sdk.core.utils.h.e(this.f32939a.a().getAct_type())) {
            a(context, relativeLayout3, shakeImageView);
            imageView4.setVisibility(0);
            textView5.setVisibility(0);
            if (textView6 != null) {
                textView6.setText("扭一扭");
            }
            str = "扭动或点击";
        } else {
            if (viewGroup != null && !zD) {
                viewGroup.setVisibility(0);
                imageView4.setImageResource(R.drawable.ms_ic_right);
                imageView4.setVisibility(0);
                textView5.setVisibility(0);
            }
            str = "点击";
        }
        textView5.setText(str + (this.f32939a.a().getInteractionType() == 1 ? "立即下载" : "查看详情"));
        imageView2.setVisibility(8);
        a(imageView3);
        a(textView4, viewInflate);
        try {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int i7 = this.f32943e;
            if (i7 > 0) {
                layoutParams.width = (int) (i7 * displayMetrics.density);
            }
            int i8 = this.f32944f;
            if (i8 > 0) {
                layoutParams.height = (int) (i8 * displayMetrics.density);
            }
            imageView.setLayoutParams(layoutParams);
            relativeLayout2.setVisibility(8);
            com.meishu.sdk.meishu_ad.nativ.b bVar = this.f32939a;
            this.f32940b.getContext();
            bVar.a(relativeLayout2, null, new com.meishu.sdk.platform.ms.recycler.b((com.meishu.sdk.meishu_ad.nativ.f) this.f32940b.f32888a, new com.meishu.sdk.platform.ms.recycler.h(this, relativeLayout2)));
            String str2 = this.f32939a.a().f32395g;
            try {
                if (!TextUtils.isEmpty(str2)) {
                    ExecutorService executorService = h0.f31906a;
                    h0.b.f31910a.a(new com.meishu.sdk.platform.ms.recycler.g(this, str2, context, imageView, styleBean, relativeLayout2));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!zD && (this.f32939a.getMediaView() instanceof NormalMediaView)) {
                ((NormalMediaView) this.f32939a.getMediaView()).setRadius(6);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (!zD || styleBean == null) {
            return;
        }
        if ((styleBean.getType() == 101 || styleBean.getType() == 201) && styleBean.getCreative() != null) {
            a(styleBean, this.f32941c, textView, textView2, null, textView4, imageView3, textView3, null);
        }
    }

    public static void a(i iVar) {
        iVar.getClass();
        try {
            if (iVar.f32958t) {
                return;
            }
            iVar.f32958t = true;
            try {
                iVar.f32940b.f32919c.onADExposure();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            RecylcerAdInteractionListener recylcerAdInteractionListener = iVar.f32942d;
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdExposure();
            }
            iVar.f32939a.a().f32386B = true;
            iVar.c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(i iVar) {
        if (com.meishu.sdk.core.utils.h.c(iVar.f32939a.a().getAct_type()) && iVar.f32939a.getAdPatternType() == 2) {
            int iB = com.meishu.sdk.core.utils.h.b(iVar.f32939a.a().getAct_type());
            long jCurrentTimeMillis = System.currentTimeMillis();
            ShakeUtil.getInstance().a(iVar.f32939a.a().getPosId(), iVar.f32939a.a().getLoadedTime(), iVar.f32939a.a().getDclk());
            ShakeUtil.getInstance().a(iVar.f32939a.a().getPower_index2(), iVar.f32939a.a().getPower_index(), iB, iVar.f32939a.a().getPower_delay(), iVar.f32939a.a().getPower_count(), iVar.f32947i, iVar.f32939a.a().getEcpm(), new com.meishu.sdk.platform.ms.recycler.f(iVar, jCurrentTimeMillis));
            ShakeUtil.getInstance().a(true);
        }
    }

    public final void b(Context context, LayoutBean.StyleBean styleBean, int i2, int i3, int i4, int i5) {
        int i6;
        String str;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int iIntValue;
        int i10;
        TextView textView;
        TextView textView2;
        boolean z3;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Context context2 = context;
        this.f32959u = true;
        float f2 = context2.getResources().getDisplayMetrics().density;
        if (this.f32939a.getImgUrls() == null || this.f32939a.getImgUrls().length <= 0) {
            return;
        }
        boolean zD = r0.d();
        if (zD) {
            i6 = R.layout.ms_item_pre_render_three_img;
        } else {
            i6 = R.layout.ms_item_pre_render_three_img_v2;
        }
        View viewInflate = View.inflate(context2, i6, null);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_container);
        this.f32941c = relativeLayout;
        relativeLayout.setPadding(i2, i3, i4, i5);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_title);
        TextView textView4 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_close);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_logo);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_fromtext);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_type);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_three_shake_image);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.ms_shakeRoot);
        ShakeImageView shakeImageView = (ShakeImageView) viewInflate.findViewById(R.id.ms_shake_img);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.ms_shake_text);
        boolean z4 = false;
        if ((this.f32939a.a().getAct_type() & 4) != 4 && (this.f32939a.a().getAct_type() & 64) != 64) {
            if (com.meishu.sdk.core.utils.h.e(this.f32939a.a().getAct_type())) {
                a(context2, relativeLayout2, shakeImageView);
                imageView2.setVisibility(0);
                if (textView7 != null) {
                    textView7.setText("扭一扭");
                }
                str = "扭动或点击";
            } else {
                if (!zD) {
                    imageView2.setImageResource(R.drawable.ms_ic_right);
                    imageView2.setVisibility(0);
                }
                str = "点击";
            }
        } else {
            a(context2, relativeLayout2, shakeImageView);
            imageView2.setVisibility(0);
            if (textView7 != null) {
                textView7.setText("摇一摇");
            }
            str = "摇动或点击";
        }
        textView6.setText(str + (this.f32939a.getInteractionType() == 1 ? "立即下载" : "查看详情"));
        textView3.setText(this.f32939a.getTitle());
        textView5.setText(this.f32939a.a().f32393e);
        a(imageView);
        a(textView4, viewInflate);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ms_item_pre_render_three_img_containerll);
        int i18 = 0;
        int i19 = 0;
        while (i18 < this.f32939a.getImgUrls().length) {
            String str2 = this.f32939a.getImgUrls()[i18];
            if (TextUtils.isEmpty(str2)) {
                z2 = zD;
                i10 = i18;
                textView = textView3;
                textView2 = textView4;
                z3 = z4;
            } else {
                RoundImageView roundImageView = new RoundImageView(context2);
                roundImageView.setAdjustViewBounds(true);
                roundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                roundImageView.setCornerRadius(2);
                if (!zD || styleBean == null || styleBean.getCreatives() == null) {
                    z2 = zD;
                    i7 = 0;
                    i8 = 0;
                    i9 = 0;
                    iIntValue = 6;
                } else {
                    if (i18 != 0 || styleBean.getCreatives().getChilds().getLeft().getMargin().size() < 4) {
                        i11 = 0;
                        iIntValue = 6;
                        i12 = 0;
                        i13 = 0;
                    } else {
                        LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean left = styleBean.getCreatives().getChilds().getLeft();
                        int iIntValue2 = left.getMargin().get(3).intValue();
                        int iIntValue3 = left.getMargin().get(0).intValue();
                        int iIntValue4 = left.getMargin().get(1).intValue();
                        int iIntValue5 = left.getMargin().get(2).intValue();
                        LayoutBean.StyleBean.BorderBean border = styleBean.getCreatives().getChilds().getLeft().getBorder();
                        if (border == null || !border.getClip() || border.getRadius() == null) {
                            i13 = iIntValue4;
                            i12 = iIntValue5;
                        } else {
                            i13 = iIntValue4;
                            i12 = iIntValue5;
                            if (border.getRadius().size() >= 4) {
                                roundImageView.setCornerTopLeftRadius((int) (border.getRadius().get(0).intValue() * f2));
                                roundImageView.setCornerTopRightRadius((int) (border.getRadius().get(1).intValue() * f2));
                                roundImageView.setCornerBottomRightRadius((int) (border.getRadius().get(2).intValue() * f2));
                                roundImageView.setCornerBottomLeftRadius((int) (border.getRadius().get(3).intValue() * f2));
                            }
                        }
                        i11 = iIntValue3;
                        iIntValue = iIntValue2;
                    }
                    if (i18 == 1 && styleBean.getCreatives().getChilds().getCenter().getMargin().size() >= 4) {
                        LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean center = styleBean.getCreatives().getChilds().getCenter();
                        int iIntValue6 = center.getMargin().get(3).intValue();
                        int iIntValue7 = center.getMargin().get(0).intValue();
                        int iIntValue8 = center.getMargin().get(1).intValue();
                        int iIntValue9 = center.getMargin().get(2).intValue();
                        LayoutBean.StyleBean.BorderBean border2 = styleBean.getCreatives().getChilds().getCenter().getBorder();
                        if (border2 == null || !border2.getClip() || border2.getRadius() == null) {
                            i16 = iIntValue9;
                            i17 = iIntValue6;
                        } else {
                            i16 = iIntValue9;
                            i17 = iIntValue6;
                            if (border2.getRadius().size() >= 4) {
                                roundImageView.setCornerTopLeftRadius((int) (border2.getRadius().get(0).intValue() * f2));
                                roundImageView.setCornerTopRightRadius((int) (border2.getRadius().get(1).intValue() * f2));
                                roundImageView.setCornerBottomRightRadius((int) (border2.getRadius().get(2).intValue() * f2));
                                roundImageView.setCornerBottomLeftRadius((int) (border2.getRadius().get(3).intValue() * f2));
                            }
                        }
                        i11 = iIntValue7;
                        iIntValue = i17;
                        i12 = i16;
                        i13 = iIntValue8;
                    }
                    if (i18 != 2 || styleBean.getCreatives().getChilds().getRight().getMargin().size() < 4) {
                        i9 = i11;
                        z2 = zD;
                        i7 = i12;
                        i8 = i13;
                    } else {
                        LayoutBean.StyleBean.CreativeBean5.ChildsBean.ChildBean right = styleBean.getCreatives().getChilds().getRight();
                        iIntValue = right.getMargin().get(3).intValue();
                        int iIntValue10 = right.getMargin().get(0).intValue();
                        int iIntValue11 = right.getMargin().get(1).intValue();
                        int iIntValue12 = right.getMargin().get(2).intValue();
                        LayoutBean.StyleBean.BorderBean border3 = styleBean.getCreatives().getChilds().getRight().getBorder();
                        if (border3 == null || !border3.getClip() || border3.getRadius() == null) {
                            i14 = iIntValue12;
                            i15 = iIntValue10;
                        } else {
                            i14 = iIntValue12;
                            i15 = iIntValue10;
                            if (border3.getRadius().size() >= 4) {
                                roundImageView.setCornerTopLeftRadius((int) (border3.getRadius().get(0).intValue() * f2));
                                roundImageView.setCornerTopRightRadius((int) (border3.getRadius().get(1).intValue() * f2));
                                roundImageView.setCornerBottomRightRadius((int) (border3.getRadius().get(2).intValue() * f2));
                                roundImageView.setCornerBottomLeftRadius((int) (border3.getRadius().get(3).intValue() * f2));
                            }
                        }
                        i8 = iIntValue11;
                        z2 = zD;
                        i9 = i15;
                        i7 = i14;
                    }
                }
                i10 = i18;
                textView = textView3;
                textView2 = textView4;
                z3 = false;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
                int i20 = i19 + 1;
                if (i19 > 0) {
                    layoutParams.setMargins((int) (iIntValue * f2), (int) (i9 * f2), (int) (i8 * f2), (int) (i7 * f2));
                }
                linearLayout.addView(roundImageView, layoutParams);
                com.meishu.sdk.core.cache.a.a(str2, new c(roundImageView), true);
                i19 = i20;
            }
            i18 = i10 + 1;
            context2 = context;
            textView3 = textView;
            z4 = z3;
            zD = z2;
            textView4 = textView2;
        }
        TextView textView8 = textView3;
        TextView textView9 = textView4;
        if (zD && styleBean != null && styleBean.getType() == 501) {
            a(styleBean, this.f32941c, textView8, null, null, textView9, imageView, textView5, textView6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void a(Boolean bool, Boolean bool2) {
        d();
        WeakReference<Activity> weakReference = this.f32960v;
        FeedAdOverlayManager.getInstance().onAdClickedIfOverlayExists(e(), ((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getPosId(), weakReference != null ? weakReference.get() : null);
    }

    public final void a(Activity activity, final TouchAdContainer touchAdContainer) {
        if (activity != null) {
            try {
                try {
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if ((this.f32939a.a().getAct_type() & 512) != 512) {
                    touchAdContainer.setTouchPositionListener(new TouchPositionListener(this.f32939a));
                    return;
                }
                this.f32953o = touchAdContainer;
                int childCount = touchAdContainer.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 < childCount) {
                        if (touchAdContainer.getChildAt(i2) == this.f32952n) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        this.f32952n = new FrameLayout(activity);
                        int height = -1;
                        int width = touchAdContainer.getWidth() <= 0 ? -1 : touchAdContainer.getWidth();
                        if (touchAdContainer.getHeight() > 0) {
                            height = touchAdContainer.getHeight();
                        }
                        this.f32952n.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                        touchAdContainer.addView(this.f32952n);
                    }
                }
                this.f32952n.setOnTouchListener(new k(new t.a() { // from class: U0.b
                    @Override // com.meishu.sdk.platform.ms.recycler.t.a
                    public final void a(float f2, float f3, long j2, float f4, float f5, float f6, int i3) {
                        this.f571a.a(touchAdContainer, f2, f3, j2, f4, f5, f6, i3);
                    }
                }));
                touchAdContainer.post(new l(touchAdContainer));
                touchAdContainer.getViewTreeObserver().addOnScrollChangedListener(this.f32938B);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
            }
            th.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(Context context, LayoutBean.StyleBean styleBean, int i2, int i3, int i4, int i5) {
        int i6;
        TextView textView;
        RoundImageView roundImageView;
        ImageView imageView;
        TextView textView2;
        View view;
        TextView textView3;
        TextView textView4;
        i iVar = this;
        boolean zD = r0.d();
        if (zD) {
            i6 = R.layout.ms_item_pre_render_large_image;
        } else {
            i6 = R.layout.ms_item_pre_render_large_image_v2;
        }
        if (styleBean != null) {
            int type = styleBean.getType();
            if (type != 201) {
                if (type == 601 && !zD) {
                    i6 = R.layout.ms_item_pre_render_large_image_top_v2_601;
                }
            } else if (zD) {
                i6 = R.layout.ms_item_pre_render_large_image_top;
            } else {
                i6 = R.layout.ms_item_pre_render_large_image_top_v2;
            }
        }
        View viewInflate = View.inflate(context, i6, null);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_rootview);
        iVar.f32941c = relativeLayout;
        relativeLayout.setPadding(i2, i3, i4, i5);
        TextView textView5 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_title);
        TextView textView6 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_content);
        RoundImageView roundImageView2 = (RoundImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_imageview);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_imagebg);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_logo);
        TextView textView7 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_fromtext);
        TextView textView8 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_close);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R.id.ms_item_pre_render_large_shake_layout);
        ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.ms_item_pre_render_large_shake_image);
        TextView textView9 = (TextView) viewInflate.findViewById(R.id.ms_item_pre_render_large_iamge_shake_text);
        RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.ms_shakeRoot);
        ShakeImageView shakeImageView = (ShakeImageView) viewInflate.findViewById(R.id.ms_shake_img);
        TextView textView10 = (TextView) viewInflate.findViewById(R.id.ms_shake_text);
        StringBuilder sbA = com.meishu.sdk.activity.a.a("clkType=");
        sbA.append(iVar.f32939a.a().getAct_type());
        LogUtil.d("i", sbA.toString());
        if (TextUtils.isEmpty(iVar.f32939a.a().title)) {
            textView5.setVisibility(8);
        } else {
            textView5.setText(iVar.f32939a.a().title);
        }
        if (TextUtils.isEmpty(iVar.f32939a.a().f32391c)) {
            textView6.setVisibility(8);
        } else {
            textView6.setText(iVar.f32939a.a().f32391c);
        }
        if (iVar.f32939a.a().f32393e == null) {
            textView7.setVisibility(8);
        } else {
            textView7.setText(iVar.f32939a.a().f32393e);
        }
        if (iVar.f32939a.getImgUrls() != null && iVar.f32939a.getImgUrls().length > 0 && !TextUtils.isEmpty(iVar.f32939a.getImgUrls()[0])) {
            StringBuilder sbA2 = com.meishu.sdk.activity.a.a(" 容器宽度：");
            textView = textView6;
            sbA2.append(((RecyclerMixAdLoader) iVar.f32940b.getAdLoader()).getAccept_ad_width());
            LogUtil.i("i", sbA2.toString());
            roundImageView = roundImageView2;
            textView2 = textView7;
            view = viewInflate;
            textView3 = textView5;
            textView4 = textView8;
            imageView = imageView3;
            iVar = this;
            com.meishu.sdk.core.cache.a.a(iVar.f32939a.getImgUrls()[0], new d(roundImageView, (context.getResources().getDisplayMetrics().widthPixels - i2) - i4, context, imageView2, relativeLayout2, shakeImageView, imageView4, textView9, textView10, viewGroup, zD), true);
        } else {
            textView = textView6;
            roundImageView = roundImageView2;
            imageView = imageView3;
            textView2 = textView7;
            view = viewInflate;
            textView3 = textView5;
            textView4 = textView8;
            iVar.a(ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "图片加载错误");
        }
        iVar.a(imageView);
        iVar.a(textView4, view);
        if (!zD || styleBean == null) {
            return;
        }
        if (styleBean.getType() == 101 || styleBean.getType() == 201) {
            TextView textView11 = textView;
            iVar.a(styleBean, iVar.f32941c, textView3, textView11, roundImageView, textView4, imageView, textView2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(TouchAdContainer touchAdContainer, float f2, float f3, long j2, float f4, float f5, float f6, int i2) {
        if (i2 / f6 > f32936C) {
            a(touchAdContainer, f2, f3, j2, f4, f5, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(TouchAdContainer touchAdContainer, float f2, float f3, long j2, float f4, float f5, int i2) {
        RecylcerAdInteractionListener recylcerAdInteractionListener;
        try {
            if (this.f32950l || !this.f32939a.a().f32386B) {
                return;
            }
            this.f32950l = true;
            try {
                if (this.f32939a.a().getCbc() == 0 && (recylcerAdInteractionListener = this.f32942d) != null) {
                    recylcerAdInteractionListener.onAdClicked();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.meishu.sdk.core.utils.r.a().b(((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getPosId() + "_adp", jCurrentTimeMillis);
            com.meishu.sdk.core.utils.r.a().b("adg_time", jCurrentTimeMillis);
            this.f32939a.a().setClkActType(512);
            this.f32939a.a().setClkPower(i2);
            s.a(this.f32939a, f2, f3, j2, f4, f5);
            d();
            i0.a(this.f32939a, touchAdContainer);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32939a, false);
            try {
                this.f32952n.getViewTreeObserver().removeOnScrollChangedListener(this.f32938B);
            } catch (Exception unused) {
            }
            try {
                touchAdContainer.removeView(this.f32952n);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void a(Context context, List<View> list) {
        if (this.f32939a.getAdPatternType() == 2) {
            com.meishu.sdk.meishu_ad.nativ.b bVar = this.f32939a;
            if (bVar instanceof com.meishu.sdk.meishu_ad.nativ.d) {
                com.meishu.sdk.meishu_ad.nativ.d dVar = (com.meishu.sdk.meishu_ad.nativ.d) bVar;
                n nVar = new n(context, list);
                if (dVar.f32378h.getVideoView() instanceof NormalMediaView) {
                    ((NormalMediaView) dVar.f32378h.getVideoView()).setOnExposureListener(nVar);
                    return;
                }
                return;
            }
            return;
        }
        try {
            com.meishu.sdk.meishu_ad.nativ.b bVar2 = this.f32939a;
            bVar2.a(context, this.f32941c, list, new com.meishu.sdk.platform.ms.recycler.d(bVar2, new com.meishu.sdk.platform.ms.recycler.e(this)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r19, com.meishu.sdk.core.domain.LayoutBean.StyleBean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.ms.recycler.i.a(android.content.Context, com.meishu.sdk.core.domain.LayoutBean$StyleBean, int, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        try {
            WeakReference<Activity> weakReference = this.f32960v;
            Activity activity = weakReference != null ? weakReference.get() : null;
            WeakReference<ViewGroup> weakReference2 = this.f32961w;
            ViewGroup viewGroup = weakReference2 != null ? weakReference2.get() : null;
            if (activity != null && viewGroup != null) {
                FeedAdOverlayManager.getInstance().addOverlay(activity, viewGroup, ((RecyclerMixAdLoader) this.f32940b.getAdLoader()).getPosId(), f32936C, this.f32939a.a(), e(), new h(viewGroup));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(Context context, RelativeLayout relativeLayout, ShakeImageView shakeImageView) {
        if (this.f32959u && !r0.d()) {
            LogUtil.dev("i", "no show shake float view");
        } else {
            this.f32941c.post(new e(context, relativeLayout, shakeImageView));
        }
    }

    public final void a(int i2, String str) {
        try {
            RecylcerAdInteractionListener recylcerAdInteractionListener = this.f32942d;
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdRenderFailed();
            }
            SdkHandler.getInstance().runOnUiThread(new com.meishu.sdk.core.utils.q(this.f32939a.a().getErrorUrl(), i2, str));
            p1.b(this.f32939a.a().getEventUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), str);
            i0.b(this.f32939a.a().getMonitorUrl());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(TextView textView, View view) {
        textView.setOnClickListener(new f(view));
    }

    public final void a(ImageView imageView) {
        if (!TextUtils.isEmpty(this.f32939a.a().getFromLogo())) {
            new com.meishu.sdk.core.bquery.i(imageView).a(this.f32939a.a().getFromLogo(), false);
        }
        if (AdSdk.adConfig().showLogo()) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }

    public GradientDrawable a(List<Integer> list, int i2, String str) {
        try {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setColor(-1);
            if (i2 > 0) {
                gradientDrawable.setStroke(i2, Color.parseColor(str));
            }
            if (list != null && list.size() == 4) {
                gradientDrawable.setCornerRadii(new float[]{list.get(0).intValue(), list.get(0).intValue(), list.get(1).intValue(), list.get(1).intValue(), list.get(2).intValue(), list.get(2).intValue(), list.get(3).intValue(), list.get(3).intValue()});
            }
            return gradientDrawable;
        } catch (Exception unused) {
            return new GradientDrawable();
        }
    }

    public final void a(LayoutBean.StyleBean styleBean, RelativeLayout relativeLayout, TextView textView, TextView textView2, RoundImageView roundImageView, TextView textView3, ImageView imageView, TextView textView4, TextView textView5) {
        LayoutBean.StyleBean.BorderBean border;
        try {
            float f2 = this.f32940b.getContext().getResources().getDisplayMetrics().density;
            if (styleBean.getContainer() != null && relativeLayout != null) {
                List<Integer> padding = styleBean.getContainer().getPadding();
                if (padding != null && padding.size() >= 4) {
                    relativeLayout.setPadding((int) (padding.get(3).intValue() * f2), (int) (padding.get(0).intValue() * f2), (int) (padding.get(1).intValue() * f2), (int) (padding.get(2).intValue() * f2));
                }
                LayoutBean.StyleBean.BorderBean border2 = styleBean.getContainer().getBorder();
                if (border2 != null && border2.getClip() && border2.getRadius() != null && border2.getRadius().size() >= 4) {
                    relativeLayout.setBackground(a(border2.getRadius(), 0, ""));
                }
            }
            if (styleBean.getTitle() != null && textView != null) {
                if (styleBean.getTitle().getMargin() != null && styleBean.getTitle().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
                    marginLayoutParams.topMargin = (int) (styleBean.getTitle().getMargin().get(0).intValue() * f2);
                    marginLayoutParams.rightMargin = (int) (styleBean.getTitle().getMargin().get(1).intValue() * f2);
                    marginLayoutParams.bottomMargin = (int) (styleBean.getTitle().getMargin().get(2).intValue() * f2);
                    marginLayoutParams.leftMargin = (int) (styleBean.getTitle().getMargin().get(3).intValue() * f2);
                    textView.setLayoutParams(marginLayoutParams);
                }
                if (styleBean.getTitle().getPadding() != null && styleBean.getTitle().getPadding().size() >= 4) {
                    textView.setPadding((int) (styleBean.getTitle().getPadding().get(3).intValue() * f2), (int) (styleBean.getTitle().getPadding().get(0).intValue() * f2), (int) (styleBean.getTitle().getPadding().get(1).intValue() * f2), (int) (styleBean.getTitle().getPadding().get(2).intValue() * f2));
                }
                if (styleBean.getTitle().getText() != null) {
                    if (!TextUtils.isEmpty(styleBean.getTitle().getText().getColor())) {
                        textView.setTextColor(Color.parseColor("#" + styleBean.getTitle().getText().getColor()));
                    }
                    if (styleBean.getTitle().getText().getSize() > 0) {
                        textView.setTextSize(styleBean.getTitle().getText().getSize());
                    }
                    if (styleBean.getTitle().getText().getLines() == 0) {
                        textView.setMaxLines(20);
                    } else {
                        textView.setMaxLines(styleBean.getTitle().getText().getLines());
                    }
                }
            }
            if (styleBean.getContent() != null && textView2 != null) {
                if (styleBean.getContent().getMargin() != null && styleBean.getContent().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) textView2.getLayoutParams();
                    marginLayoutParams2.topMargin = (int) (styleBean.getContent().getMargin().get(0).intValue() * f2);
                    marginLayoutParams2.rightMargin = (int) (styleBean.getContent().getMargin().get(1).intValue() * f2);
                    marginLayoutParams2.bottomMargin = (int) (styleBean.getContent().getMargin().get(2).intValue() * f2);
                    marginLayoutParams2.leftMargin = (int) (styleBean.getContent().getMargin().get(3).intValue() * f2);
                    textView2.setLayoutParams(marginLayoutParams2);
                }
                if (styleBean.getContent().getPadding() != null && styleBean.getContent().getPadding().size() >= 4) {
                    textView2.setPadding((int) (styleBean.getContent().getPadding().get(3).intValue() * f2), (int) (styleBean.getContent().getPadding().get(0).intValue() * f2), (int) (styleBean.getContent().getPadding().get(1).intValue() * f2), (int) (styleBean.getContent().getPadding().get(2).intValue() * f2));
                }
                if (styleBean.getContent().getText() != null) {
                    if (!TextUtils.isEmpty(styleBean.getContent().getText().getColor())) {
                        textView2.setTextColor(Color.parseColor("#" + styleBean.getContent().getText().getColor()));
                    }
                    if (styleBean.getContent().getText().getSize() > 0) {
                        textView2.setTextSize(styleBean.getContent().getText().getSize());
                    }
                    if (styleBean.getContent().getText().getLines() == 0) {
                        textView.setMaxLines(20);
                    } else {
                        textView.setMaxLines(styleBean.getContent().getText().getLines());
                    }
                }
            }
            if (styleBean.getCreative() != null && roundImageView != null) {
                LayoutBean.StyleBean.BorderBean border3 = styleBean.getCreative().getBorder();
                if (border3 != null && border3.getClip() && border3.getRadius() != null && border3.getRadius().size() >= 4) {
                    roundImageView.setCornerTopLeftRadius((int) (border3.getRadius().get(0).intValue() * f2));
                    roundImageView.setCornerTopRightRadius((int) (border3.getRadius().get(1).intValue() * f2));
                    roundImageView.setCornerBottomRightRadius((int) (border3.getRadius().get(2).intValue() * f2));
                    roundImageView.setCornerBottomLeftRadius((int) (border3.getRadius().get(3).intValue() * f2));
                }
                if (styleBean.getCreative().getMargin() != null && styleBean.getCreative().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) roundImageView.getLayoutParams();
                    marginLayoutParams3.topMargin = (int) (styleBean.getCreative().getMargin().get(0).intValue() * f2);
                    marginLayoutParams3.rightMargin = (int) (styleBean.getCreative().getMargin().get(1).intValue() * f2);
                    marginLayoutParams3.bottomMargin = (int) (styleBean.getCreative().getMargin().get(2).intValue() * f2);
                    marginLayoutParams3.leftMargin = (int) (styleBean.getCreative().getMargin().get(3).intValue() * f2);
                    roundImageView.setLayoutParams(marginLayoutParams3);
                }
            }
            if (styleBean.getDislike() != null) {
                if (styleBean.getDislike().isHide()) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setVisibility(0);
                }
                if (styleBean.getDislike().getText() != null) {
                    LayoutBean.StyleBean.TextBean text = styleBean.getDislike().getText();
                    if (text.getSize() > 0) {
                        textView3.setTextSize(text.getSize());
                    }
                    if (!TextUtils.isEmpty(text.getColor())) {
                        textView3.setTextColor(Color.parseColor("#" + text.getColor()));
                    }
                    if (text.getLines() > 0) {
                        textView3.setMaxLines(text.getLines());
                    }
                }
                if (styleBean.getDislike().getMargin() != null && styleBean.getDislike().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) textView3.getLayoutParams();
                    marginLayoutParams4.topMargin = (int) (styleBean.getDislike().getMargin().get(0).intValue() * f2);
                    marginLayoutParams4.rightMargin = (int) (styleBean.getDislike().getMargin().get(1).intValue() * f2);
                    marginLayoutParams4.bottomMargin = (int) (styleBean.getDislike().getMargin().get(2).intValue() * f2);
                    marginLayoutParams4.leftMargin = (int) (styleBean.getDislike().getMargin().get(3).intValue() * f2);
                    textView3.setLayoutParams(marginLayoutParams4);
                }
                List<Integer> padding2 = styleBean.getDislike().getPadding();
                if (padding2 != null && padding2.size() >= 4) {
                    textView3.setPadding((int) (padding2.get(3).intValue() * f2), (int) (padding2.get(0).intValue() * f2), (int) (padding2.get(1).intValue() * f2), (int) (padding2.get(2).intValue() * f2));
                }
                LayoutBean.StyleBean.BorderBean border4 = styleBean.getDislike().getBorder();
                if (border4 != null) {
                    textView3.setBackground(a(border4.getRadius(), styleBean.getDislike().getBorder().getSize(), "#" + styleBean.getDislike().getBorder().getColor()));
                }
            }
            if (styleBean.getLogo() != null) {
                if (styleBean.getLogo().isHide()) {
                    imageView.setVisibility(8);
                } else if (AdSdk.adConfig().showLogo()) {
                    imageView.setVisibility(0);
                }
                if (styleBean.getLogo().getMargin() != null && styleBean.getLogo().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                    marginLayoutParams5.topMargin = (int) (styleBean.getLogo().getMargin().get(0).intValue() * f2);
                    marginLayoutParams5.rightMargin = (int) (styleBean.getLogo().getMargin().get(1).intValue() * f2);
                    marginLayoutParams5.bottomMargin = (int) (styleBean.getLogo().getMargin().get(2).intValue() * f2);
                    marginLayoutParams5.leftMargin = (int) (styleBean.getLogo().getMargin().get(3).intValue() * f2);
                    imageView.setLayoutParams(marginLayoutParams5);
                }
            }
            if (styleBean.getSource() != null && textView4 != null) {
                if (styleBean.getSource().isHide()) {
                    textView4.setVisibility(8);
                } else {
                    textView4.setVisibility(0);
                }
                if (styleBean.getSource().getMargin() != null && styleBean.getSource().getMargin().size() >= 4) {
                    ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) textView4.getLayoutParams();
                    marginLayoutParams6.topMargin = (int) (styleBean.getSource().getMargin().get(0).intValue() * f2);
                    marginLayoutParams6.rightMargin = (int) (styleBean.getSource().getMargin().get(1).intValue() * f2);
                    marginLayoutParams6.bottomMargin = (int) (styleBean.getSource().getMargin().get(2).intValue() * f2);
                    marginLayoutParams6.leftMargin = (int) (styleBean.getSource().getMargin().get(3).intValue() * f2);
                    textView4.setLayoutParams(marginLayoutParams6);
                }
                List<Integer> padding3 = styleBean.getSource().getPadding();
                if (padding3 != null && padding3.size() >= 4) {
                    textView4.setPadding((int) (padding3.get(3).intValue() * f2), (int) (padding3.get(0).intValue() * f2), (int) (padding3.get(1).intValue() * f2), (int) (padding3.get(2).intValue() * f2));
                }
                if (styleBean.getSource().getText() != null) {
                    LayoutBean.StyleBean.TextBean text2 = styleBean.getSource().getText();
                    if (text2.getSize() > 0) {
                        textView4.setTextSize(text2.getSize());
                    }
                    if (!TextUtils.isEmpty(text2.getColor())) {
                        textView4.setTextColor(Color.parseColor("#" + text2.getColor()));
                    }
                }
            }
            if (styleBean.getButton() == null || textView5 == null) {
                return;
            }
            if (styleBean.getButton().getMargin() != null && styleBean.getButton().getMargin().size() >= 4) {
                ViewGroup.MarginLayoutParams marginLayoutParams7 = (ViewGroup.MarginLayoutParams) textView5.getLayoutParams();
                marginLayoutParams7.topMargin = (int) (styleBean.getButton().getMargin().get(0).intValue() * f2);
                marginLayoutParams7.rightMargin = (int) (styleBean.getButton().getMargin().get(1).intValue() * f2);
                marginLayoutParams7.bottomMargin = (int) (styleBean.getButton().getMargin().get(2).intValue() * f2);
                marginLayoutParams7.leftMargin = (int) (styleBean.getButton().getMargin().get(3).intValue() * f2);
                textView5.setLayoutParams(marginLayoutParams7);
            }
            List<Integer> padding4 = styleBean.getButton().getPadding();
            if (padding4 != null && padding4.size() >= 4) {
                textView5.setPadding((int) (padding4.get(3).intValue() * f2), (int) (padding4.get(0).intValue() * f2), (int) (padding4.get(1).intValue() * f2), (int) (padding4.get(2).intValue() * f2));
            }
            if (styleBean.getButton().getText() != null) {
                LayoutBean.StyleBean.TextBean text3 = styleBean.getButton().getText();
                if (text3.getSize() > 0) {
                    textView5.setTextSize(text3.getSize());
                }
                if (!TextUtils.isEmpty(text3.getColor())) {
                    textView5.setTextColor(Color.parseColor("#" + text3.getColor()));
                }
            }
            if (styleBean.getButton().getBorder() == null || (border = styleBean.getButton().getBorder()) == null || border.getRadius() == null || border.getRadius().size() < 4) {
                return;
            }
            textView5.setBackground(a(border.getRadius(), styleBean.getButton().getBorder().getSize(), "#" + styleBean.getButton().getBorder().getColor()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
