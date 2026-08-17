package com.sigmob.sdk.nativead;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ImageUtils;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.videoplayer.C1383c;
import com.sigmob.sdk.videoplayer.InterfaceC1382b;
import com.sigmob.windad.WindAdError;
import java.io.File;
import java.util.LinkedList;

/* loaded from: classes4.dex */
public class r extends C1362s implements InterfaceC1356l, InterfaceC1382b {

    /* renamed from: e, reason: collision with root package name */
    public static LinkedList<ViewGroup> f38465e = new LinkedList<>();

    /* renamed from: f, reason: collision with root package name */
    public static long f38466f = 0;

    /* renamed from: h, reason: collision with root package name */
    private com.sigmob.sdk.videoplayer.f f38467h;

    /* renamed from: i, reason: collision with root package name */
    private C1359o f38468i;

    /* renamed from: j, reason: collision with root package name */
    private InterfaceC1363t f38469j;

    /* renamed from: k, reason: collision with root package name */
    private Bitmap f38470k;

    /* renamed from: l, reason: collision with root package name */
    private Bitmap f38471l;

    /* renamed from: m, reason: collision with root package name */
    private ViewGroup f38472m;

    /* renamed from: n, reason: collision with root package name */
    private Context f38473n;

    /* renamed from: o, reason: collision with root package name */
    private long f38474o;

    /* renamed from: com.sigmob.sdk.nativead.r$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38475a;

        static {
            int[] iArr = new int[EnumC1354j.values().length];
            f38475a = iArr;
            try {
                iArr[EnumC1354j.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38475a[EnumC1354j.DETAIL_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38475a[EnumC1354j.DETAIL_PAGE_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public r(Context context) {
        super(context.getApplicationContext());
        this.f38470k = null;
        this.f38471l = null;
        this.f38473n = context.getApplicationContext();
        getVideoAdView().setVideoAdViewListener(this);
        this.f38472m = new RelativeLayout(this.f38473n);
        getVideoAdView().setVideoAdStatusListener(this);
        com.sigmob.sdk.base.blurkit.a.a(this.f38473n);
    }

    private void b(Activity activity) {
        int iAsIntPixels = Dips.asIntPixels(10.0f, this.f38473n);
        int iAsIntPixels2 = Dips.asIntPixels(15.0f, this.f38473n);
        int iA = C1383c.a(activity);
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView.getVideoHeight() < videoAdView.getVideoWidth()) {
            activity.setRequestedOrientation(0);
            iAsIntPixels += iA;
        } else {
            iAsIntPixels2 += iA;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoAdView.getBottomLayoutView().getLayoutParams();
        if (layoutParams != null) {
            layoutParams.setMargins(Dips.asIntPixels(10.0f, this.f38473n), 0, iAsIntPixels, iAsIntPixels2);
            videoAdView.getBottomLayoutView().setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) videoAdView.getTopLayoutView().getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.setMargins(Dips.asIntPixels(10.0f, this.f38473n), Dips.asIntPixels(35.0f, this.f38473n), iAsIntPixels, 0);
            videoAdView.getTopLayoutView().setLayoutParams(layoutParams2);
        }
    }

    private void k() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoAdView.getBottomLayoutView().getLayoutParams();
        if (layoutParams != null) {
            layoutParams.setMargins(Dips.asIntPixels(10.0f, this.f38473n), Dips.asIntPixels(0.0f, this.f38473n), Dips.asIntPixels(10.0f, this.f38473n), Dips.asIntPixels(15.0f, this.f38473n));
            videoAdView.getBottomLayoutView().setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) videoAdView.getTopLayoutView().getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.setMargins(Dips.asIntPixels(10.0f, this.f38473n), Dips.asIntPixels(15.0f, this.f38473n), Dips.asIntPixels(10.0f, this.f38473n), 0);
            videoAdView.getTopLayoutView().setLayoutParams(layoutParams2);
        }
    }

    private void l() {
        if (this.f38468i == null) {
            return;
        }
        ViewGroup appContainer = getVideoAdView().getAppContainer();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        appContainer.addView(this.f38468i, layoutParams);
    }

    private void m() {
        Bitmap textureBitmap;
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null || (textureBitmap = videoAdView.getTextureBitmap()) == null) {
            return;
        }
        Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(textureBitmap, 25);
        videoAdView.getBlurImageView().setImageBitmap(bitmapA);
        videoAdView.getAppContainer().setVisibility(0);
        this.f38470k = textureBitmap;
        this.f38471l = bitmapA;
    }

    private void n() {
        C1358n appInfoView = getAppInfoView();
        if (appInfoView == null) {
            return;
        }
        com.sigmob.sdk.base.utils.w.a(appInfoView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, Dips.asIntPixels(5.0f, this.f38473n));
        layoutParams.addRule(12);
        addView(appInfoView, layoutParams);
    }

    public int a(int i2) {
        return Math.min((int) (i2 / (getVideoAdView().getVideoWidth() == 0 ? getAdUnit().getAdPercent() : (r0.getVideoWidth() * 1.0f) / r0.getVideoHeight())), ClientMetadata.getInstance().getDisplayMetrics().heightPixels / 2);
    }

    @Override // com.sigmob.sdk.nativead.C1362s, com.sigmob.sdk.nativead.C1357m
    public void c() {
        super.c();
        ImageUtils.recycleBitmap(this.f38470k);
        ImageUtils.recycleBitmap(this.f38471l);
        InterfaceC1363t interfaceC1363t = this.f38469j;
        if (interfaceC1363t != null) {
            interfaceC1363t.d();
            this.f38469j.i();
            this.f38469j = null;
        }
        ViewGroup viewGroup = this.f38472m;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            com.sigmob.sdk.base.utils.w.a(this.f38472m);
        }
        com.sigmob.sdk.videoplayer.f fVar = this.f38467h;
        if (fVar != null) {
            com.sigmob.sdk.base.utils.w.a(fVar);
            this.f38467h.setVideoAdViewListener(null);
            this.f38467h.setVideoAdStatusListener(null);
            this.f38467h.setBackClickListener(null);
            this.f38467h.a();
            this.f38467h = null;
        }
    }

    @Override // com.sigmob.sdk.nativead.C1357m
    public void d() {
        super.d();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView != null) {
            videoAdView.E();
        }
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public void e() {
        super.e();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.C();
    }

    @Override // com.sigmob.sdk.videoplayer.InterfaceC1382b
    public void f() {
        ViewGroup viewGroup = (ViewGroup) this.f38472m.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f38472m);
        }
        Activity activityB = C1383c.b(f38465e.getLast().getContext());
        if (activityB != null) {
            activityB.getWindow().getDecorView().setSystemUiVisibility(0);
        }
        if (getVideoAdView().getVideoHeight() < getVideoAdView().getVideoWidth() && activityB != null) {
            activityB.setRequestedOrientation(1);
        }
        f38465e.getLast().removeAllViews();
        f38465e.getLast().addView(this.f38472m, new FrameLayout.LayoutParams(-1, -1));
        f38465e.pop();
    }

    @Override // com.sigmob.sdk.videoplayer.InterfaceC1382b
    public void g() {
        ViewGroup viewGroup = (ViewGroup) this.f38472m.getParent();
        viewGroup.removeView(this.f38472m);
        f38465e.add(viewGroup);
        Activity activityB = C1383c.b(viewGroup.getContext());
        if (activityB == null) {
            return;
        }
        ((ViewGroup) activityB.findViewById(R.id.content)).addView(this.f38472m, new FrameLayout.LayoutParams(-1, -1));
        if (getVideoAdView().getVideoHeight() < getVideoAdView().getVideoWidth()) {
            activityB.setRequestedOrientation(6);
        }
    }

    public C1359o getAppView() {
        if (this.f38468i == null) {
            this.f38468i = new C1359o(this.f38473n);
        }
        return this.f38468i;
    }

    public InterfaceC1356l getSigAdVideoStatusListener() {
        InterfaceC1363t interfaceC1363t = this.f38469j;
        if (interfaceC1363t == null) {
            return null;
        }
        return interfaceC1363t.g();
    }

    @Override // com.sigmob.sdk.nativead.C1357m
    public InterfaceC1363t getSigVideoAdController() {
        if (this.f38469j == null) {
            this.f38469j = new C1364u(getVideoAdView());
        }
        return this.f38469j;
    }

    public com.sigmob.sdk.videoplayer.f getVideoAdView() {
        if (this.f38467h == null) {
            this.f38467h = new com.sigmob.sdk.videoplayer.f(this.f38473n);
        }
        return this.f38467h;
    }

    public ViewGroup getVideoContainer() {
        return this.f38472m;
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public double getVideoDuration() {
        return getVideoAdView() == null ? super.getVideoDuration() : r0.getDuration() / 1000.0f;
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public double getVideoProgress() {
        return getVideoAdView() == null ? super.getVideoProgress() : ((r0.getCurrentPositionWhenPlaying() * 1.0f) / r0.getDuration()) / 100.0f;
    }

    public int getVideoSurferViewHeight() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return 0;
        }
        return videoAdView.getVideoSurferViewHeight();
    }

    public void h() {
        if (System.currentTimeMillis() - f38466f > 2000 && getVideoAdView().f39081w == 4 && getVideoAdView().f39082x == 1) {
            f38466f = System.currentTimeMillis();
            b();
        }
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public void i() {
        super.i();
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public void j() {
        super.j();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.D();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoCompleted() {
        if (getSigAdVideoStatusListener() != null) {
            getSigAdVideoStatusListener().onVideoCompleted();
        }
        m();
        EnumC1354j enumC1354j = this.f38417d;
        if (enumC1354j != EnumC1354j.PREVIEW) {
            if (enumC1354j == EnumC1354j.DETAIL_PAGE) {
                setUIStyle(EnumC1354j.DETAIL_PAGE_END);
            }
        } else {
            if (getAppView().getParent() == null) {
                l();
            }
            getAppView().setVisibility(0);
            getVideoAdView().a(com.sigmob.sdk.videoplayer.e.RETRY, true);
        }
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoError(WindAdError windAdError) {
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoError(windAdError);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoLoad() {
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoLoad();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoPause() {
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoPause();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoResume() {
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoResume();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoStart() {
        BaseAdUnit adUnit = getAdUnit();
        if (adUnit == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        C1359o c1359o = this.f38468i;
        if (c1359o != null) {
            com.sigmob.sdk.base.utils.w.a(c1359o);
            videoAdView.getAppContainer().setVisibility(4);
        }
        ImageUtils.recycleBitmap(this.f38470k);
        ImageUtils.recycleBitmap(this.f38471l);
        adUnit.updateRealAdPercent((videoAdView.getVideoWidth() * 1.0f) / videoAdView.getVideoHeight());
        EnumC1354j enumC1354j = this.f38417d;
        if (enumC1354j == EnumC1354j.DETAIL_PAGE_END) {
            enumC1354j = EnumC1354j.DETAIL_PAGE;
        }
        setUIStyle(enumC1354j);
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoStart();
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.setBackClickListener(onClickListener);
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public void setUIStyle(EnumC1354j enumC1354j) {
        int i2;
        C1349e adConfig = getAdConfig();
        if (getAdUnit() == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        super.setUIStyle(enumC1354j);
        int i3 = AnonymousClass1.f38475a[enumC1354j.ordinal()];
        if (i3 == 1) {
            this.f38472m.removeAllViews();
            com.sigmob.sdk.base.utils.w.a(this.f38472m);
            com.sigmob.sdk.base.utils.w.a(videoAdView);
            addView(videoAdView, new RelativeLayout.LayoutParams(-1, -1));
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, videoAdView.f39081w == 0);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, false);
            com.sigmob.sdk.videoplayer.e eVar = com.sigmob.sdk.videoplayer.e.RETRY;
            videoAdView.a(eVar, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BACK, false);
            videoAdView.setSoundChange(adConfig == null || adConfig.n());
            C1359o c1359o = this.f38468i;
            if (c1359o != null && ((i2 = videoAdView.f39081w) == 6 || i2 == 7)) {
                if (c1359o.getParent() == null) {
                    l();
                }
                this.f38468i.setVisibility(0);
                videoAdView.a(eVar, true);
            }
            n();
            return;
        }
        if (i3 == 2) {
            if (this.f38468i.getParent() != null) {
                this.f38468i.setVisibility(4);
            }
            if (this.f38472m.getChildCount() > 0) {
                this.f38472m.removeAllViews();
            }
            removeView(getVideoAdView());
            this.f38472m.addView(videoAdView, new RelativeLayout.LayoutParams(-1, -1));
            videoAdView.setSoundChange(adConfig == null || adConfig.o() || com.sigmob.sdk.b.g());
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, true);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, true);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.RETRY, false);
        } else {
            if (i3 != 3) {
                return;
            }
            if (this.f38468i.getParent() != null) {
                this.f38468i.setVisibility(4);
            }
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.RETRY, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, true);
        }
        videoAdView.a(com.sigmob.sdk.videoplayer.e.BACK, true);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1356l
    public void a() {
        InterfaceC1356l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.a();
    }

    @Override // com.sigmob.sdk.nativead.C1357m, com.sigmob.sdk.videoplayer.InterfaceC1382b
    public boolean b() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return false;
        }
        if (!f38465e.isEmpty()) {
            videoAdView.u();
            return true;
        }
        if (videoAdView.f39082x == 0) {
            return false;
        }
        videoAdView.m();
        return true;
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1356l
    public void a(long j2, long j3) {
        if (getSigAdVideoStatusListener() != null) {
            getSigAdVideoStatusListener().a(j2, j3);
        }
        if (j2 > 0) {
            this.f38474o = j3;
        }
    }

    private void a(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private void a(ViewGroup viewGroup) {
        C1358n c1358n = null;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof C1358n) {
                c1358n = (C1358n) childAt;
            }
        }
        if (c1358n == null) {
            return;
        }
        com.sigmob.sdk.base.utils.w.a(c1358n);
    }

    @Override // com.sigmob.sdk.nativead.C1362s
    public void a(ac acVar) {
        super.a(acVar);
        BaseAdUnit adUnit = getAdUnit();
        if (adUnit == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        a(this);
        File videoProxyFile = adUnit.getVideoProxyFile();
        videoAdView.setUp((videoProxyFile == null || !videoProxyFile.exists()) ? adUnit.getProxyVideoUrl() : videoProxyFile.getAbsolutePath());
        setUIStyle(EnumC1354j.PREVIEW);
        String videoCoverImageUrl = adUnit.getVideoCoverImageUrl();
        if (TextUtils.isEmpty(videoCoverImageUrl)) {
            videoAdView.b(true);
        } else {
            Context context = getContext();
            if (com.sigmob.sdk.base.utils.v.b(context)) {
                ImageManager.with(context).load(videoCoverImageUrl).into(videoAdView.getThumbView());
            }
        }
        getAppView().a(adUnit.getIconUrl(), adUnit.getTitle(), adUnit.getCTAText());
        videoAdView.setSoundChange(getAdConfig().n());
    }

    @Override // com.sigmob.sdk.nativead.C1357m
    public boolean a(MotionEvent motionEvent) {
        C1359o c1359o = this.f38468i;
        if (c1359o == null || c1359o.getParent() == null || this.f38468i.getVisibility() != 0) {
            return false;
        }
        return com.sigmob.sdk.base.utils.w.a(this.f38468i.getCtaView(), motionEvent);
    }
}
