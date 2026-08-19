package com.meishu.sdk.meishu_ad.reward;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.meishu.sdk.R;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.meishu_ad.n0;
import com.meishu.sdk.meishu_ad.view.MeishuVideoTextureView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class FullScreenMediaView extends FrameLayout implements n0 {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f32455r = 0;

    /* renamed from: a, reason: collision with root package name */
    public MeishuVideoTextureView f32456a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.core.bquery.i f32457b;

    /* renamed from: c, reason: collision with root package name */
    public CircleProcessBar f32458c;

    /* renamed from: d, reason: collision with root package name */
    public MediaPlayer f32459d;

    /* renamed from: e, reason: collision with root package name */
    public n0.b f32460e;

    /* renamed from: f, reason: collision with root package name */
    public long f32461f;

    /* renamed from: g, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.e f32462g;

    /* renamed from: h, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.a f32463h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f32464i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f32465j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f32466k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f32467l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f32468m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f32469n;

    /* renamed from: o, reason: collision with root package name */
    public Handler f32470o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f32471p;

    /* renamed from: q, reason: collision with root package name */
    public List<n0.a> f32472q;

    public class a extends com.meishu.sdk.core.safe.c {
        public a(Looper looper) {
            super(looper);
        }

        @Override // com.meishu.sdk.core.safe.c
        public void a(Message message) {
            super.a(message);
            int currentPosition = FullScreenMediaView.this.f32456a.getCurrentPosition();
            FullScreenMediaView.this.f32458c.a(currentPosition);
            FullScreenMediaView fullScreenMediaView = FullScreenMediaView.this;
            long j2 = fullScreenMediaView.f32461f;
            if (j2 > 0 && currentPosition >= j2 && !fullScreenMediaView.f32464i) {
                fullScreenMediaView.f32464i = true;
                n0.b bVar = FullScreenMediaView.this.f32460e;
                if (bVar != null) {
                    bVar.onKeepTimeFinished();
                }
            }
            double duration = currentPosition / FullScreenMediaView.this.f32456a.getDuration();
            if (duration >= 0.25d && duration < 0.5d) {
                FullScreenMediaView fullScreenMediaView2 = FullScreenMediaView.this;
                if (!fullScreenMediaView2.f32465j) {
                    com.meishu.sdk.meishu_ad.nativ.e eVar = fullScreenMediaView2.f32462g;
                    if (eVar != null) {
                        eVar.onVideoOneQuarter();
                    }
                    FullScreenMediaView.this.f32465j = true;
                }
            } else if (duration >= 0.5d && duration < 0.75d) {
                FullScreenMediaView fullScreenMediaView3 = FullScreenMediaView.this;
                if (!fullScreenMediaView3.f32466k) {
                    com.meishu.sdk.meishu_ad.nativ.e eVar2 = fullScreenMediaView3.f32462g;
                    if (eVar2 != null) {
                        eVar2.onVideoOneHalf();
                    }
                    FullScreenMediaView.this.f32466k = true;
                }
            } else if (duration >= 0.75d && duration < 1.0d) {
                FullScreenMediaView fullScreenMediaView4 = FullScreenMediaView.this;
                if (!fullScreenMediaView4.f32467l) {
                    com.meishu.sdk.meishu_ad.nativ.e eVar3 = fullScreenMediaView4.f32462g;
                    if (eVar3 != null) {
                        eVar3.onVideoThreeQuarter();
                    }
                    FullScreenMediaView.this.f32467l = true;
                }
            }
            FullScreenMediaView.this.f32470o.sendEmptyMessageDelayed(1, 100L);
        }
    }

    public FullScreenMediaView(Context context) {
        super(context);
        this.f32461f = -1L;
        this.f32468m = false;
        this.f32469n = false;
        this.f32470o = new a(Looper.getMainLooper());
        this.f32472q = new ArrayList();
        a(context);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public View getVideoView() {
        return this;
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void mute() {
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        LogUtil.d("FullScreenMediaView", "onDetachedFromWindow: ");
        super.onDetachedFromWindow();
        Handler handler = this.f32470o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void pause() {
        this.f32456a.c();
        d();
        com.meishu.sdk.meishu_ad.nativ.e eVar = this.f32462g;
        if (eVar != null) {
            eVar.onVideoPause();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void replay() {
        if (this.f32471p) {
            return;
        }
        start();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void resume() {
        this.f32456a.e();
        e();
        com.meishu.sdk.meishu_ad.nativ.e eVar = this.f32462g;
        if (eVar != null) {
            eVar.onVideoResume();
        }
    }

    public void setAdListener(com.meishu.sdk.meishu_ad.nativ.a aVar) {
        this.f32463h = aVar;
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void setNativeAdMediaListener(com.meishu.sdk.meishu_ad.nativ.e eVar) {
        this.f32462g = eVar;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.f32456a.setOnInfoListener(onInfoListener);
    }

    public void setOnVideoLoadedListener(n0.c cVar) {
    }

    public void setVideoCover(String str) {
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void setVideoPath(String str) {
        this.f32456a.setVideoPath(str);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void start() {
        this.f32456a.e();
        e();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void unmute() {
        c();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void a(n0.b bVar, long j2) {
        this.f32460e = bVar;
        if (j2 > 0) {
            this.f32461f = j2;
        }
    }

    public final void b() {
        MediaPlayer mediaPlayer = this.f32459d;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(0.0f, 0.0f);
            this.f32457b.b(R.id.ms_video_volume_mute).d(0);
            this.f32457b.b(R.id.ms_video_volume).d(8);
        }
    }

    public final void c() {
        MediaPlayer mediaPlayer = this.f32459d;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(1.0f, 1.0f);
            this.f32457b.b(R.id.ms_video_volume_mute).d(8);
            this.f32457b.b(R.id.ms_video_volume).d(0);
        }
    }

    public final void d() {
        this.f32457b.b(R.id.ms_controlbar_video_play_button).d(0);
        this.f32457b.b(R.id.ms_center_play_button).d(0);
        this.f32457b.b(R.id.ms_controlbar_video_pause_button).d(8);
        if (this.f32470o.hasMessages(1)) {
            this.f32470o.removeMessages(1);
        }
    }

    public final void e() {
        if (!this.f32468m && this.f32469n) {
            com.meishu.sdk.meishu_ad.nativ.e eVar = this.f32462g;
            if (eVar != null) {
                eVar.onVideoStart();
            }
            com.meishu.sdk.meishu_ad.nativ.a aVar = this.f32463h;
            if (aVar != null) {
                aVar.onADExposure();
            }
            this.f32468m = true;
        }
        this.f32471p = true;
        this.f32457b.b(R.id.ms_controlbar_video_play_button).d(8);
        this.f32457b.b(R.id.ms_center_play_button).d(8);
        this.f32457b.b(R.id.ms_controlbar_video_pause_button).d(0);
        long j2 = this.f32461f;
        this.f32458c.setmTotalTime((j2 <= 0 || j2 >= ((long) this.f32456a.getDuration())) ? this.f32456a.getDuration() : (int) this.f32461f);
        if (this.f32470o.hasMessages(1)) {
            return;
        }
        this.f32470o.sendEmptyMessage(1);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void a(n0.a aVar) {
        this.f32472q.add(aVar);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public boolean a() {
        return this.f32456a.f32693g;
    }

    public final void a(Context context) {
        setTag("meishu_media_view");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.ms_full_screen_video_player_layout, (ViewGroup) null);
        addView(viewInflate);
        MeishuVideoTextureView meishuVideoTextureView = (MeishuVideoTextureView) viewInflate.findViewById(R.id.ms_video_view);
        this.f32456a = meishuVideoTextureView;
        meishuVideoTextureView.setUseTransform(false);
        com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(this);
        this.f32457b = iVar;
        CircleProcessBar circleProcessBar = (CircleProcessBar) iVar.b(R.id.ms_process_bar).f31521d;
        this.f32458c = circleProcessBar;
        circleProcessBar.setVisibility(8);
        com.meishu.sdk.core.bquery.i iVarB = this.f32457b.b(R.id.ms_center_play_button);
        com.meishu.sdk.meishu_ad.reward.a aVar = new com.meishu.sdk.meishu_ad.reward.a(this);
        View view = iVarB.f31521d;
        if (view != null) {
            view.setOnClickListener(aVar);
        }
        com.meishu.sdk.core.bquery.i iVarB2 = this.f32457b.b(R.id.ms_controlbar_video_play_button);
        b bVar = new b(this);
        View view2 = iVarB2.f31521d;
        if (view2 != null) {
            view2.setOnClickListener(bVar);
        }
        com.meishu.sdk.core.bquery.i iVarB3 = this.f32457b.b(R.id.ms_controlbar_video_pause_button);
        c cVar = new c(this);
        View view3 = iVarB3.f31521d;
        if (view3 != null) {
            view3.setOnClickListener(cVar);
        }
        com.meishu.sdk.core.bquery.i iVarB4 = this.f32457b.b(R.id.ms_video_volume_mute);
        d dVar = new d(this);
        View view4 = iVarB4.f31521d;
        if (view4 != null) {
            view4.setOnClickListener(dVar);
        }
        com.meishu.sdk.core.bquery.i iVarB5 = this.f32457b.b(R.id.ms_video_volume);
        e eVar = new e(this);
        View view5 = iVarB5.f31521d;
        if (view5 != null) {
            view5.setOnClickListener(eVar);
        }
        this.f32456a.setOnErrorListener(new f(this));
        this.f32456a.setOnPreparedListener(new g(this));
        this.f32456a.setOnCompletionListener(new h(this));
    }

    public FullScreenMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32461f = -1L;
        this.f32468m = false;
        this.f32469n = false;
        this.f32470o = new a(Looper.getMainLooper());
        this.f32472q = new ArrayList();
        a(context);
    }

    public FullScreenMediaView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32461f = -1L;
        this.f32468m = false;
        this.f32469n = false;
        this.f32470o = new a(Looper.getMainLooper());
        this.f32472q = new ArrayList();
        a(context);
    }
}
