package com.kwad.components.ad.feed.widget;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.ad.widget.DownloadProgressView;
import com.kwad.components.core.e.d.a;
import com.kwad.components.core.internal.api.KSAdVideoPlayConfigImpl;
import com.kwad.components.core.l.a;
import com.kwad.components.core.video.a;
import com.kwad.components.core.widget.KsLogoView;
import com.kwad.components.model.FeedType;
import com.kwad.components.offline.api.core.adlive.IAdLiveOfflineView;
import com.kwad.components.offline.api.core.adlive.IAdLivePlayModule;
import com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListener;
import com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListenerAdapter;
import com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener;
import com.kwad.sdk.R;
import com.kwad.sdk.api.KsAdVideoPlayConfig;
import com.kwad.sdk.contentalliance.a.a.b;
import com.kwad.sdk.core.imageloader.KSImageLoader;
import com.kwad.sdk.core.imageloader.core.DisplayImageOptionsCompat;
import com.kwad.sdk.core.imageloader.core.decode.DecodedResult;
import com.kwad.sdk.core.imageloader.core.listener.SimpleImageLoadingListener;
import com.kwad.sdk.core.imageloader.utils.BlurUtils;
import com.kwad.sdk.core.network.a.a;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.video.videoview.AdVideoPlayerViewCache;
import com.kwad.sdk.core.video.videoview.a;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import com.kwad.sdk.widget.KSRelativeLayout;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class c extends a implements View.OnClickListener, com.kwad.sdk.widget.d {
    private boolean cA;
    private com.kwad.sdk.core.video.videoview.a cB;
    private a.InterfaceC0618a cK;
    private a.b cL;
    private OfflineOnAudioConflictListener cM;
    private KsAdVideoPlayConfig ce;
    private List<Integer> cv;
    private volatile boolean eV;
    private com.kwad.sdk.widget.l eW;
    private TextView ev;
    private final AdLivePlayStateListener ey;
    private IAdLiveOfflineView fH;
    private com.kwad.components.core.offline.a.c.a fI;
    private a.b fU;
    private View fW;
    private ImageView gQ;
    private TextView gX;
    private TextView hW;
    private ImageView hY;
    private TextView ia;
    private TextView ib;
    private View ic;
    private DownloadProgressView ie;

    /* renamed from: if, reason: not valid java name */
    private boolean f4if;
    private int ig;
    protected KSRelativeLayout ij;
    private ImageView ik;
    private com.kwad.components.core.video.e il;
    private d im;

    /* renamed from: io, reason: collision with root package name */
    private TextView f31465io;
    private final a.InterfaceC0559a iq;
    private IAdLivePlayModule ir;
    private boolean is;
    protected com.kwad.components.core.e.d.d mApkDownloadHelper;
    private boolean mIsAudioEnable;
    private KsLogoView mLogoView;

    public c(@NonNull Context context) {
        super(context);
        this.mIsAudioEnable = false;
        this.eV = false;
        this.f4if = true;
        this.ig = 8;
        this.eW = new com.kwad.sdk.widget.l() { // from class: com.kwad.components.ad.feed.widget.c.1
            @Override // com.kwad.sdk.widget.l
            public final void aZ() {
                com.kwad.sdk.utils.o.fr(c.this.mAdTemplate);
            }
        };
        this.iq = new a.InterfaceC0559a() { // from class: com.kwad.components.ad.feed.widget.c.4
            @Override // com.kwad.components.core.video.a.InterfaceC0559a
            public final void a(int i2, al.a aVar) {
                int i3;
                int i4 = 2;
                boolean z2 = false;
                if (i2 == 1) {
                    i3 = 15;
                } else if (i2 == 2) {
                    i3 = 16;
                } else if (i2 != 3) {
                    i3 = 35;
                } else {
                    i3 = 39;
                    i4 = 1;
                    z2 = true;
                }
                c.this.cp();
                com.kwad.components.core.e.d.a.a(new a.C0529a(c.this.getContext()).aJ(c.this.mAdTemplate).b(c.this.mApkDownloadHelper).aN(i4).as(z2).au(true).aL(5).aM(i3).d(aVar).aw(true).a(new a.b() { // from class: com.kwad.components.ad.feed.widget.c.4.1
                    @Override // com.kwad.components.core.e.d.a.b
                    public final void onAdClicked() {
                        c.this.zN();
                    }
                }));
            }
        };
        this.ey = new AdLivePlayStateListenerAdapter() { // from class: com.kwad.components.ad.feed.widget.c.8
            @Override // com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListenerAdapter, com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListener
            public final void onLivePlayEnd() {
                super.onLivePlayEnd();
                c.this.f31465io.setVisibility(0);
            }

            @Override // com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListenerAdapter, com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListener
            public final void onLivePlayProgress(long j2) {
                super.onLivePlayProgress(j2);
                c.this.c(j2);
            }

            @Override // com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListenerAdapter, com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListener
            public final void onLivePlayResume() {
                super.onLivePlayResume();
                if (c.this.ir != null) {
                    com.kwad.components.core.l.a.tm().a(c.this.getCurrentVoiceItem());
                    IAdLivePlayModule iAdLivePlayModule = c.this.ir;
                    c cVar = c.this;
                    iAdLivePlayModule.setAudioEnabled(cVar.h(cVar.mIsAudioEnable), false);
                }
            }

            @Override // com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListenerAdapter, com.kwad.components.offline.api.core.adlive.listener.AdLivePlayStateListener
            public final void onLivePlayStart() {
                super.onLivePlayStart();
                if (c.this.ir != null) {
                    com.kwad.components.core.l.a.tm().a(c.this.getCurrentVoiceItem());
                    IAdLivePlayModule iAdLivePlayModule = c.this.ir;
                    c cVar = c.this;
                    iAdLivePlayModule.setAudioEnabled(cVar.h(cVar.mIsAudioEnable), false);
                }
            }
        };
        this.cM = new OfflineOnAudioConflictListener() { // from class: com.kwad.components.ad.feed.widget.c.10
            @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
            public final void onAudioBeOccupied() {
                c.b(c.this, false);
                if (c.this.cB != null) {
                    c.this.cB.setVideoSoundEnable(false);
                }
                if (c.this.ir != null) {
                    c.this.ir.setAudioEnabled(false, false);
                }
            }

            @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
            public final void onAudioBeReleased() {
            }
        };
        this.cL = new a.b() { // from class: com.kwad.components.ad.feed.widget.c.2
            @Override // com.kwad.components.core.video.a.c
            public final void as() {
                com.kwad.sdk.core.video.videoview.a aVar = c.this.cB;
                c cVar = c.this;
                aVar.setVideoSoundEnable(cVar.h(cVar.mIsAudioEnable));
            }

            @Override // com.kwad.components.core.video.a.c
            public final void at() {
                if (com.kwad.components.ad.feed.a.b.cl() && c.this.im == null) {
                    c.this.im = new d(c.this.getContext());
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    c cVar = c.this;
                    cVar.addView(cVar.im, layoutParams);
                    c.this.im.cE();
                }
                if (c.this.il.amo != null && c.this.cC()) {
                    ((ViewGroup) c.this.il.amo.getParent()).removeView(c.this.il.amo);
                    c cVar2 = c.this;
                    cVar2.ij.addView(cVar2.il.amo);
                }
                com.kwad.sdk.core.adlog.c.cu(c.this.mAdTemplate);
            }

            @Override // com.kwad.components.core.video.a.c
            public final void d(long j2) {
                c.this.c(j2);
            }

            @Override // com.kwad.components.core.video.a.b
            public final void onVideoPlayError(int i2, int i3) {
                com.kwad.components.ad.feed.monitor.b.a(c.this.mAdTemplate, 2, 1, com.kwad.sdk.core.response.helper.a.M(c.this.mAdInfo), i2 + " " + i3, SystemClock.elapsedRealtime() - c.this.hP);
            }

            @Override // com.kwad.components.core.video.a.c
            public final void onVideoPlayStart() {
                com.kwad.components.core.l.a.tm().a(c.this.getCurrentVoiceItem());
                if (c.this.im != null && (c.this.im.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) c.this.im.getParent()).removeView(c.this.im);
                    c.this.im.cF();
                    c.this.im = null;
                }
                com.kwad.components.ad.feed.monitor.b.a(c.this.mAdTemplate, 1, 1, com.kwad.sdk.core.response.helper.a.M(c.this.mAdInfo), null, SystemClock.elapsedRealtime() - c.this.hP);
                com.kwad.sdk.core.adlog.c.ct(c.this.mAdTemplate);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IAdLivePlayModule cA() {
        IAdLiveOfflineView iAdLiveOfflineViewA = com.kwad.components.ad.j.c.a(this.fI, this.mContext, 3);
        this.fH = iAdLiveOfflineViewA;
        if (iAdLiveOfflineViewA == null) {
            return null;
        }
        IAdLivePlayModule adLivePlayModule = this.fI.getAdLivePlayModule(iAdLiveOfflineViewA, ServiceProvider.getSDKConfig().appId, String.valueOf(com.kwad.sdk.core.response.helper.a.cw(this.mAdInfo)), com.kwad.sdk.core.response.helper.a.cx(this.mAdInfo), com.kwad.sdk.core.response.helper.a.cy(this.mAdInfo), com.kwad.sdk.core.response.helper.e.eI(this.mAdTemplate));
        adLivePlayModule.setAudioEnabled(h(this.mIsAudioEnable), false);
        adLivePlayModule.registerAdLivePlayStateListener(this.ey);
        final View view = this.fH.getView();
        if (this.ij.getTag() != null) {
            KSRelativeLayout kSRelativeLayout = this.ij;
            kSRelativeLayout.removeView((View) kSRelativeLayout.getTag());
            this.ij.setTag(null);
        }
        this.ij.addView(view);
        this.ij.setTag(view);
        by.postOnUiThread(new bi() { // from class: com.kwad.components.ad.feed.widget.c.5
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                c.this.c(view);
            }
        });
        if (this.mIsAudioEnable) {
            com.kwad.components.core.t.a.aO(this.mContext).a(this.cM);
        }
        return adLivePlayModule;
    }

    private void cB() {
        String url = com.kwad.sdk.core.response.helper.a.bA(this.mAdInfo).getUrl();
        this.ik.setVisibility(0);
        this.fW.setVisibility(0);
        if (TextUtils.isEmpty(url)) {
            this.ik.setImageResource(R.drawable.ksad_ad_live_end);
        } else {
            this.ik.setImageDrawable(null);
            KSImageLoader.loadImage(this.ik, url, this.mAdTemplate, new DisplayImageOptionsCompat.Builder().setBlurRadius(50).build(), new SimpleImageLoadingListener() { // from class: com.kwad.components.ad.feed.widget.c.6
                @Override // com.kwad.sdk.core.imageloader.core.listener.SimpleImageLoadingListener, com.kwad.sdk.core.imageloader.core.listener.ImageLoadingListener
                public final boolean onDecode(String str, InputStream inputStream, DecodedResult decodedResult) {
                    decodedResult.mBitmap = BlurUtils.stackBlur(BitmapFactory.decodeStream(inputStream), 50, false);
                    return true;
                }
            });
        }
    }

    private void cD() {
        this.ie.aA(this.mAdTemplate);
        this.ie.setOnClickListener(this);
        new com.kwad.sdk.widget.h(getContext(), this.ie, this);
        com.kwad.components.core.e.d.d dVar = new com.kwad.components.core.e.d.d(this.mAdTemplate, null, this.ie.getAppDownloadListener());
        this.mApkDownloadHelper = dVar;
        dVar.d(this.ie.getAppDownloadListener());
        this.mApkDownloadHelper.setOnShowListener(this);
        this.mApkDownloadHelper.setOnDismissListener(this);
    }

    private void cs() {
        this.ib = (TextView) findViewById(R.id.ksad_h5_desc);
        this.gX = (TextView) findViewById(R.id.ksad_h5_open_btn);
        this.ic = findViewById(R.id.ksad_h5_open_cover);
        this.ib.setText(com.kwad.components.ad.feed.f.p(this.mAdTemplate));
        this.gX.setText(com.kwad.sdk.core.response.helper.a.aK(this.mAdInfo));
        this.ic.setOnClickListener(this);
        this.ib.setOnClickListener(this);
        this.gX.setOnClickListener(this);
        new com.kwad.sdk.widget.h(getContext(), this.ic, this);
        new com.kwad.sdk.widget.h(getContext(), this.ib, this);
        new com.kwad.sdk.widget.h(getContext(), this.gX, this);
    }

    private void ct() {
        this.gQ = (ImageView) findViewById(R.id.ksad_app_icon);
        this.ev = (TextView) findViewById(R.id.ksad_app_title);
        TextView textView = (TextView) findViewById(R.id.ksad_app_desc);
        this.ia = textView;
        com.kwad.sdk.c.a.a.a(this, this.gQ, this.ev, textView);
        new com.kwad.sdk.widget.h(getContext(), this.gQ, this);
        new com.kwad.sdk.widget.h(getContext(), this.ev, this);
        new com.kwad.sdk.widget.h(getContext(), this.ia, this);
        if (cC()) {
            this.ev.setText(com.kwad.sdk.core.response.helper.a.cs(this.mAdInfo));
        } else {
            this.ev.setText(com.kwad.sdk.core.response.helper.a.aB(this.mAdInfo));
        }
        this.gQ.setImageResource(R.drawable.ksad_default_app_icon);
        KSImageLoader.loadAppIcon(this.gQ, com.kwad.sdk.core.response.helper.a.cv(this.mAdInfo), this.mAdTemplate, this.ig);
        this.ia.setText(com.kwad.components.ad.feed.f.p(this.mAdTemplate));
        if (this.f4if) {
            cq();
        }
    }

    private void cy() {
        com.kwad.components.core.offline.a.c.a aVar = (com.kwad.components.core.offline.a.c.a) com.kwad.sdk.components.d.f(com.kwad.components.core.offline.a.c.a.class);
        this.fI = aVar;
        if (aVar != null && aVar.tu() && com.kwad.sdk.core.response.helper.a.cY(this.mAdInfo)) {
            this.is = true;
            cB();
        }
    }

    private boolean cz() {
        IAdLiveOfflineView iAdLiveOfflineView = this.fH;
        if (iAdLiveOfflineView == null || iAdLiveOfflineView.getView() == null || !this.is) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) this.fH.getView().getParent();
        if (viewGroup != this.ij) {
            viewGroup.removeView(this.fH.getView());
            if (this.ij.getTag() != null) {
                KSRelativeLayout kSRelativeLayout = this.ij;
                kSRelativeLayout.removeView((View) kSRelativeLayout.getTag());
                this.ij.setTag(null);
            }
            this.ij.addView(this.fH.getView());
            this.ij.setTag(this.fH.getView());
            IAdLivePlayModule adLivePlayModule = this.fI.getAdLivePlayModule(this.fH, ServiceProvider.getAppId(), String.valueOf(com.kwad.sdk.core.response.helper.a.cw(this.mAdInfo)), com.kwad.sdk.core.response.helper.a.cx(this.mAdInfo), com.kwad.sdk.core.response.helper.a.cy(this.mAdInfo), com.kwad.sdk.core.response.helper.e.eI(this.mAdTemplate));
            this.ir = adLivePlayModule;
            adLivePlayModule.setAudioEnabled(this.mIsAudioEnable, false);
            this.ir.registerAdLivePlayStateListener(this.ey);
        }
        IAdLivePlayModule iAdLivePlayModule = this.ir;
        if (iAdLivePlayModule == null) {
            return true;
        }
        iAdLivePlayModule.onResume();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a.b getCurrentVoiceItem() {
        if (this.fU == null) {
            this.fU = new a.b(new a.c() { // from class: com.kwad.components.ad.feed.widget.c.3
                @Override // com.kwad.components.core.l.a.c
                public final void bL() {
                    if (!c.this.is) {
                        if (c.this.cB != null) {
                            com.kwad.sdk.core.video.videoview.a aVar = c.this.cB;
                            c cVar = c.this;
                            aVar.setVideoSoundEnable(cVar.h(cVar.mIsAudioEnable));
                            return;
                        }
                        return;
                    }
                    if (c.this.ir == null) {
                        c cVar2 = c.this;
                        cVar2.ir = cVar2.cA();
                    }
                    if (c.this.ir != null) {
                        IAdLivePlayModule iAdLivePlayModule = c.this.ir;
                        c cVar3 = c.this;
                        iAdLivePlayModule.setAudioEnabled(cVar3.h(cVar3.mIsAudioEnable), false);
                    }
                }
            });
        }
        return this.fU;
    }

    @Override // com.kwad.components.core.widget.b, com.kwad.sdk.widget.KSFrameLayout
    public final void ae() {
        DownloadProgressView downloadProgressView;
        super.ae();
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar == null || (downloadProgressView = this.ie) == null) {
            return;
        }
        dVar.b(downloadProgressView.getAppDownloadListener());
    }

    @Override // com.kwad.components.core.widget.b, com.kwad.sdk.widget.KSFrameLayout
    public final void af() {
        super.af();
        com.kwad.sdk.utils.o.fp(this.mAdTemplate);
        IAdLivePlayModule iAdLivePlayModule = this.ir;
        if (iAdLivePlayModule != null) {
            iAdLivePlayModule.onDestroy();
            this.ir = null;
        }
        IAdLiveOfflineView iAdLiveOfflineView = this.fH;
        if (iAdLiveOfflineView != null) {
            iAdLiveOfflineView.onDestroy();
            this.fH = null;
        }
        com.kwad.components.core.l.a.tm().c(this.fU);
    }

    @Override // com.kwad.components.core.widget.b, com.kwad.sdk.core.j.c
    public final void bA() {
        super.bA();
        IAdLivePlayModule iAdLivePlayModule = this.ir;
        if (iAdLivePlayModule != null) {
            iAdLivePlayModule.onPause();
        }
        com.kwad.components.core.l.a.tm().c(this.fU);
    }

    @Override // com.kwad.components.core.widget.b
    public void bC() {
        this.hW = (TextView) findViewById(R.id.ksad_ad_desc);
        this.ij = (KSRelativeLayout) findViewById(R.id.ksad_feed_ad_video_container);
        cx();
        this.hY = (ImageView) findViewById(R.id.ksad_ad_dislike);
        this.ik = (ImageView) findViewById(R.id.ksad_video_first_frame_container);
        this.mLogoView = (KsLogoView) findViewById(R.id.ksad_ad_dislike_logo);
        this.ie = (DownloadProgressView) findViewById(R.id.ksad_app_download_btn);
        this.f31465io = (TextView) findViewById(R.id.ksad_live_end_text);
        this.fW = findViewById(R.id.ksad_live_end_bg_mantle);
    }

    @Override // com.kwad.components.core.widget.b, com.kwad.sdk.core.j.c
    public final void bz() {
        super.bz();
        com.kwad.components.core.video.e eVar = this.il;
        if (eVar != null) {
            eVar.setVideoPlayCallback(this.cL);
        }
        com.kwad.components.core.l.a.tm().a(getCurrentVoiceItem());
        if (this.is) {
            IAdLivePlayModule iAdLivePlayModule = this.ir;
            if (iAdLivePlayModule == null) {
                this.ir = cA();
            } else {
                iAdLivePlayModule.onResume();
            }
        }
    }

    public final boolean cC() {
        if (FeedType.isNewVerticalType(com.kwad.sdk.core.response.helper.e.fj(this.mAdTemplate))) {
            return com.kwad.sdk.core.response.helper.e.fk(this.mAdTemplate) == FeedType.FeedDefaultType.FEED_VERTICAL_NOVEL_DEFAULT.getDefaultType() || com.kwad.sdk.core.response.helper.e.fk(this.mAdTemplate) == FeedType.FeedDefaultType.FEED_VERTICAL_BISERIAL_DEFAULT.getDefaultType();
        }
        return false;
    }

    @Override // com.kwad.components.core.widget.b
    public final void cw() {
        super.cw();
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            dVar.c(this.ie.getAppDownloadListener());
        }
        if (this.mIsAudioEnable) {
            com.kwad.components.core.t.a.aO(this.mContext).b(this.cM);
        }
    }

    public void cx() {
        this.ij.setRatio(0.56f);
    }

    public int getDefaultClickArea() {
        return 2;
    }

    public a.InterfaceC0559a getVideoAdClickListener() {
        return this.iq;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r5) {
        /*
            r4 = this;
            android.widget.ImageView r0 = r4.hY
            if (r5 != r0) goto L8
            r4.zO()
            return
        L8:
            com.kwad.sdk.widget.KSRelativeLayout r0 = r4.ij
            if (r5 != r0) goto L2c
            com.kwad.sdk.core.video.videoview.a r0 = r4.cB
            if (r0 == 0) goto L2c
            boolean r0 = r0.isIdle()
            if (r0 == 0) goto L2c
            R extends com.kwad.sdk.core.response.model.AdTemplate r5 = r4.mAdTemplate
            com.kwad.sdk.utils.o.fq(r5)
            R extends com.kwad.sdk.core.response.model.AdTemplate r5 = r4.mAdTemplate
            com.kwad.sdk.contentalliance.a.a.a r5 = com.kwad.sdk.contentalliance.a.a.a.cm(r5)
            com.kwad.sdk.core.video.videoview.a r0 = r4.cB
            r0.setKsPlayLogParam(r5)
            com.kwad.sdk.core.video.videoview.a r5 = r4.cB
            r5.start()
            return
        L2c:
            android.widget.TextView r0 = r4.hW
            r1 = 1
            if (r5 != r0) goto L34
            r0 = 25
            goto L6c
        L34:
            com.kwad.sdk.widget.KSRelativeLayout r0 = r4.ij
            r2 = 100
            if (r5 != r0) goto L3c
        L3a:
            r0 = r2
            goto L6c
        L3c:
            com.kwad.components.ad.widget.DownloadProgressView r0 = r4.ie
            if (r5 == r0) goto L6b
            android.widget.TextView r0 = r4.gX
            if (r5 == r0) goto L6b
            android.view.View r0 = r4.ic
            if (r5 != r0) goto L49
            goto L6b
        L49:
            android.widget.ImageView r0 = r4.gQ
            if (r5 != r0) goto L50
            r0 = 13
            goto L6c
        L50:
            android.widget.TextView r0 = r4.ev
            if (r5 != r0) goto L57
            r0 = 14
            goto L6c
        L57:
            android.widget.TextView r0 = r4.ia
            if (r5 == r0) goto L68
            android.widget.TextView r0 = r4.ib
            if (r5 != r0) goto L60
            goto L68
        L60:
            com.kwad.sdk.core.video.videoview.a r0 = r4.cB
            if (r5 != r0) goto L65
            goto L3a
        L65:
            r0 = 35
            goto L6c
        L68:
            r0 = 101(0x65, float:1.42E-43)
            goto L6c
        L6b:
            r0 = r1
        L6c:
            com.kwad.sdk.core.video.videoview.a r2 = r4.cB
            com.kwad.components.ad.widget.DownloadProgressView r3 = r4.ie
            if (r5 != r3) goto L73
            goto L74
        L73:
            r1 = 0
        L74:
            r4.a(r2, r1, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.feed.widget.c.onClick(android.view.View):void");
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, android.view.View
    public void onWindowFocusChanged(boolean z2) {
        IAdLivePlayModule iAdLivePlayModule;
        try {
            if (this.mAdInfo == null) {
                return;
            }
            super.onWindowFocusChanged(z2);
            if (!z2) {
                IAdLiveOfflineView iAdLiveOfflineView = this.fH;
                if (iAdLiveOfflineView == null || iAdLiveOfflineView.getView() == null || (iAdLivePlayModule = this.ir) == null) {
                    return;
                }
                iAdLivePlayModule.onPause();
                return;
            }
            if (cz()) {
                return;
            }
            com.kwad.sdk.core.video.videoview.a aVar = this.cB;
            if (aVar != null && this.il != null) {
                ViewGroup viewGroup = (ViewGroup) aVar.getParent();
                if (this.cB.getParent() != this.ij) {
                    viewGroup.removeView(this.cB);
                    if (this.ij.getTag() != null) {
                        KSRelativeLayout kSRelativeLayout = this.ij;
                        kSRelativeLayout.removeView((View) kSRelativeLayout.getTag());
                        this.ij.setTag(null);
                    }
                    this.ij.addView(this.cB);
                    this.ij.setTag(this.cB);
                    this.cB.setVideoSoundEnable(this.mIsAudioEnable);
                    this.mAdTemplate.mIsAudioEnable = this.mIsAudioEnable;
                    this.il.setAdClickListener(getVideoAdClickListener());
                    this.il.getAdTemplate().mAdWebVideoPageShowing = false;
                    this.il.xH();
                    this.il.setAutoRelease(true);
                }
            }
            AdInfo adInfo = this.mAdInfo;
            if (adInfo != null) {
                AdVideoPlayerViewCache.getInstance().remove(com.kwad.sdk.core.response.helper.a.M(adInfo));
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public void setRadiusDp(int i2) {
        this.ig = i2;
    }

    public void setVideoPlayConfig(KsAdVideoPlayConfig ksAdVideoPlayConfig) {
        com.kwad.components.core.video.e eVar;
        IAdLivePlayModule iAdLivePlayModule;
        this.ce = ksAdVideoPlayConfig;
        if (ksAdVideoPlayConfig instanceof KSAdVideoPlayConfigImpl) {
            KSAdVideoPlayConfigImpl kSAdVideoPlayConfigImpl = (KSAdVideoPlayConfigImpl) ksAdVideoPlayConfig;
            if (kSAdVideoPlayConfigImpl.getVideoSoundValue() != 0) {
                this.mIsAudioEnable = kSAdVideoPlayConfigImpl.isVideoSoundEnable();
            } else {
                this.mIsAudioEnable = com.kwad.sdk.core.response.helper.a.ch(this.mAdInfo);
            }
            this.mAdTemplate.mIsAudioEnable = this.mIsAudioEnable;
            IAdLiveOfflineView iAdLiveOfflineView = this.fH;
            if (iAdLiveOfflineView == null || iAdLiveOfflineView.getView() == null || (iAdLivePlayModule = this.ir) == null) {
                com.kwad.sdk.core.video.videoview.a aVar = this.cB;
                if (aVar != null) {
                    aVar.setVideoSoundEnable(h(this.mIsAudioEnable));
                }
            } else {
                iAdLivePlayModule.setAudioEnabled(h(this.mIsAudioEnable), false);
            }
            if (this.mIsAudioEnable) {
                com.kwad.components.core.t.a.aO(this.mContext).a(this.cM);
            }
            if (kSAdVideoPlayConfigImpl.getDataFlowAutoStartValue() == 0 || (eVar = this.il) == null) {
                return;
            }
            eVar.setDataAutoStart(kSAdVideoPlayConfigImpl.isDataFlowAutoStart());
        }
    }

    public void setmIsShowComplianceView(boolean z2) {
        this.f4if = z2;
    }

    public static /* synthetic */ boolean b(c cVar, boolean z2) {
        cVar.cA = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final View view) {
        view.post(new bi() { // from class: com.kwad.components.ad.feed.widget.c.7
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                int width = c.this.ij.getWidth();
                int height = c.this.ij.getHeight();
                if (width == 0 || height == 0) {
                    return;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (height * 0.5625f), height);
                layoutParams.addRule(13, -1);
                view.setLayoutParams(layoutParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(boolean z2) {
        if (!z2) {
            return false;
        }
        if (!com.kwad.sdk.core.config.e.hO()) {
            return !com.kwad.components.core.t.a.aO(this.mContext).wE() ? com.kwad.components.core.t.a.aO(this.mContext).bd(false) : !com.kwad.components.core.t.a.aO(this.mContext).wD();
        }
        if (!this.cA) {
            this.cA = com.kwad.components.core.t.a.aO(this.mContext).bd(true);
        }
        return this.cA;
    }

    @Override // com.kwad.components.core.widget.b
    public final void d(@NonNull AdResultData adResultData) {
        super.d((c) adResultData);
        this.hW.setText(com.kwad.components.ad.feed.f.p(this.mAdTemplate));
        this.mLogoView.bl(this.mAdTemplate);
        cy();
        if (com.kwad.sdk.core.response.helper.a.aL(this.mAdInfo)) {
            findViewById(R.id.ksad_ad_download_container).setVisibility(0);
            findViewById(R.id.ksad_ad_h5_container).setVisibility(8);
            ct();
            cD();
        } else {
            findViewById(R.id.ksad_ad_h5_container).setVisibility(0);
            findViewById(R.id.ksad_ad_download_container).setVisibility(8);
            if (cC()) {
                ct();
            }
            cs();
        }
        this.hW.setOnClickListener(this);
        this.ij.setOnClickListener(this);
        this.hY.setOnClickListener(this);
        new com.kwad.sdk.widget.h(getContext(), this.hW, this);
        new com.kwad.sdk.widget.h(getContext(), this.ij, this);
        new com.kwad.sdk.widget.h(getContext(), this.hY, this);
        setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j2) {
        int iCeil = (int) Math.ceil(j2 / 1000.0f);
        List<Integer> list = this.cv;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<Integer> it = this.cv.iterator();
        while (it.hasNext()) {
            if (iCeil >= it.next().intValue()) {
                com.kwad.sdk.core.adlog.c.a((AdTemplate) this.mAdTemplate, iCeil, (JSONObject) null);
                it.remove();
                return;
            }
        }
    }

    public final void b(@NonNull KsAdVideoPlayConfig ksAdVideoPlayConfig) {
        String strFx;
        this.ce = ksAdVideoPlayConfig;
        if ((ksAdVideoPlayConfig instanceof KSAdVideoPlayConfigImpl) && ((KSAdVideoPlayConfigImpl) ksAdVideoPlayConfig).getVideoSoundValue() != 0) {
            this.mIsAudioEnable = ksAdVideoPlayConfig.isVideoSoundEnable();
        } else {
            this.mIsAudioEnable = com.kwad.sdk.core.response.helper.a.ch(this.mAdInfo);
        }
        this.mAdTemplate.mIsAudioEnable = this.mIsAudioEnable;
        this.cv = com.kwad.sdk.core.response.helper.a.bv(this.mAdInfo);
        if (this.is) {
            return;
        }
        String url = com.kwad.sdk.core.response.helper.a.bA(this.mAdInfo).getUrl();
        if (!TextUtils.isEmpty(url)) {
            this.ik.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.ik.setImageDrawable(null);
            KSImageLoader.loadImage(this.ik, url, this.mAdTemplate);
            this.ik.setVisibility(0);
        } else {
            this.ik.setVisibility(8);
        }
        com.kwad.sdk.core.video.videoview.a aVar = new com.kwad.sdk.core.video.videoview.a(this.mContext);
        this.cB = aVar;
        aVar.setVisibleListener(this.eW);
        this.cB.setOnClickListener(this);
        new com.kwad.sdk.widget.h(getContext(), this.cB, this);
        this.cB.setTag(this.cv);
        int iGa = com.kwad.sdk.core.config.e.Ga();
        String strM = com.kwad.sdk.core.response.helper.a.M(this.mAdInfo);
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        if (iGa < 0) {
            File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(strM);
            if (fileCO == null || !fileCO.exists()) {
                strM = null;
            } else {
                strFx = fileCO.getAbsolutePath();
                strM = strFx;
            }
        } else if (iGa != 0) {
            com.kwad.sdk.core.videocache.f fVarCm = com.kwad.sdk.core.videocache.c.a.cm(this.mContext);
            if (com.kwad.sdk.core.config.e.Jn()) {
                int iGa2 = com.kwad.sdk.core.config.e.Ga();
                if (!fVarCm.fz(strM)) {
                    if (fVarCm.a(strM, iGa2 * 1024, new a.C0614a(), null)) {
                        strFx = fVarCm.fx(strM);
                    }
                } else {
                    strFx = fVarCm.fx(strM);
                }
                strM = strFx;
            } else {
                strM = fVarCm.fx(strM);
            }
        }
        if (TextUtils.isEmpty(strM)) {
            return;
        }
        this.cB.a(new b.a(this.mAdTemplate).dQ(strM).dR(com.kwad.sdk.core.response.helper.h.b(com.kwad.sdk.core.response.helper.e.eP(this.mAdTemplate))).a(this.mAdTemplate.mVideoPlayerStatus).b(com.kwad.sdk.contentalliance.a.a.a.cm(this.mAdTemplate)).IG(), null);
        a.InterfaceC0618a interfaceC0618a = new a.InterfaceC0618a() { // from class: com.kwad.components.ad.feed.widget.c.9
            @Override // com.kwad.sdk.core.video.videoview.a.InterfaceC0618a
            public final com.kwad.sdk.core.video.a.c a(com.kwad.sdk.contentalliance.a.a.b bVar) {
                if (!((Boolean) com.kwad.sdk.core.config.e.b(com.kwad.sdk.core.config.c.aQq)).booleanValue() || !((Boolean) com.kwad.sdk.core.config.e.b(com.kwad.sdk.core.config.c.aQr)).booleanValue()) {
                    return null;
                }
                com.kwad.components.core.video.g gVar = new com.kwad.components.core.video.g(bVar, c.this.mAdTemplate);
                if (com.kwad.components.core.video.g.isWaynePlayerReady()) {
                    return gVar;
                }
                return null;
            }
        };
        this.cK = interfaceC0618a;
        this.cB.setExternalPlayerListener(interfaceC0618a);
        this.cB.setVideoSoundEnable(h(this.mIsAudioEnable));
        com.kwad.components.core.video.e eVar = new com.kwad.components.core.video.e(this.mContext, this.mAdTemplate, this.cB, ksAdVideoPlayConfig);
        this.il = eVar;
        eVar.setAdClickListener(getVideoAdClickListener());
        this.hP = SystemClock.elapsedRealtime();
        this.il.setVideoPlayCallback(this.cL);
        this.cB.setController(this.il);
        if (this.ij.getTag() != null) {
            KSRelativeLayout kSRelativeLayout = this.ij;
            kSRelativeLayout.removeView((View) kSRelativeLayout.getTag());
            this.ij.setTag(null);
        }
        this.ij.addView(this.cB);
        this.ij.setTag(this.cB);
        if (cC()) {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.ksad_feed_bottombar_container);
            ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
            this.ij.addView(viewGroup);
        }
        this.ij.setClickable(true);
        this.ij.setOnClickListener(this);
        new com.kwad.sdk.widget.h(getContext(), this.ij, this);
        if (this.mIsAudioEnable) {
            com.kwad.components.core.t.a.aO(this.mContext).a(this.cM);
        }
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view) {
        onClick(view);
    }

    @Override // com.kwad.sdk.widget.d
    public final void a(View view, float f2, float f3, float f4, float f5) {
        if (com.kwad.sdk.core.response.helper.d.eD(this.mAdTemplate)) {
            a(this.cB, view == this.ie, view, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT);
        }
    }

    private void a(com.kwad.sdk.core.video.videoview.a aVar, boolean z2, View view, final int i2) {
        com.kwad.components.core.video.e eVar;
        if (aVar != null || this.is) {
            String strM = com.kwad.sdk.core.response.helper.a.M(this.mAdInfo);
            if (!this.is && (eVar = this.il) != null) {
                eVar.setAutoRelease(false);
            }
            int defaultClickArea = getDefaultClickArea();
            if (z2 || view == this.ie || view == this.gX || view == this.ic) {
                defaultClickArea = 1;
            }
            if (!this.is) {
                AdVideoPlayerViewCache.getInstance().a(strM, this.cB);
            }
            cp();
            a.C0529a c0529aAs = new a.C0529a(getContext()).aJ(this.mAdTemplate).b(this.mApkDownloadHelper).as(z2);
            IAdLivePlayModule iAdLivePlayModule = this.ir;
            com.kwad.components.core.e.d.a.a(c0529aAs.D(iAdLivePlayModule == null ? 0L : iAdLivePlayModule.getPlayDuration()).aN(defaultClickArea).aw(true).a(new a.b() { // from class: com.kwad.components.ad.feed.widget.c.11
                @Override // com.kwad.components.core.e.d.a.b
                public final void onAdClicked() {
                    c.this.bY(i2);
                }
            }));
        }
    }
}
