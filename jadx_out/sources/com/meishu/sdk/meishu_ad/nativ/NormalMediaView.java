package com.meishu.sdk.meishu_ad.nativ;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.R;
import com.meishu.sdk.activity.MeishuDetailActivity;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.safe.SafeBroadcastReceiver;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.view.RoundImageView;
import com.meishu.sdk.meishu_ad.n0;
import com.meishu.sdk.meishu_ad.view.MeishuVideoTextureView;
import com.sigmob.sdk.mraid.C1315g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class NormalMediaView extends FrameLayout implements n0 {

    /* renamed from: b0, reason: collision with root package name */
    public static final /* synthetic */ int f32314b0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public n0.c f32315A;

    /* renamed from: B, reason: collision with root package name */
    public n0.b f32316B;

    /* renamed from: C, reason: collision with root package name */
    public e f32317C;

    /* renamed from: D, reason: collision with root package name */
    public MediaPlayer.OnInfoListener f32318D;

    /* renamed from: E, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.a f32319E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f32320F;

    /* renamed from: G, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.lifecycle.c f32321G;

    /* renamed from: H, reason: collision with root package name */
    public volatile boolean f32322H;

    /* renamed from: I, reason: collision with root package name */
    public volatile boolean f32323I;

    /* renamed from: J, reason: collision with root package name */
    public volatile boolean f32324J;

    /* renamed from: K, reason: collision with root package name */
    public volatile boolean f32325K;

    /* renamed from: L, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    public Handler f32326L;

    /* renamed from: M, reason: collision with root package name */
    public int f32327M;

    /* renamed from: N, reason: collision with root package name */
    public int f32328N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f32329O;

    /* renamed from: P, reason: collision with root package name */
    public RecylcerAdInteractionListener f32330P;

    /* renamed from: Q, reason: collision with root package name */
    public String f32331Q;

    /* renamed from: R, reason: collision with root package name */
    public ImageView f32332R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f32333S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f32334T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f32335U;

    /* renamed from: V, reason: collision with root package name */
    public List<n0.a> f32336V;

    /* renamed from: W, reason: collision with root package name */
    public BroadcastReceiver f32337W;

    /* renamed from: a, reason: collision with root package name */
    public final String f32338a;

    /* renamed from: a0, reason: collision with root package name */
    public d f32339a0;

    /* renamed from: b, reason: collision with root package name */
    public MeishuVideoTextureView f32340b;

    /* renamed from: c, reason: collision with root package name */
    public com.meishu.sdk.core.bquery.i f32341c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f32342d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f32343e;

    /* renamed from: f, reason: collision with root package name */
    public ProgressBar f32344f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32345g;

    /* renamed from: h, reason: collision with root package name */
    public int f32346h;

    /* renamed from: i, reason: collision with root package name */
    public int f32347i;

    /* renamed from: j, reason: collision with root package name */
    public long f32348j;

    /* renamed from: k, reason: collision with root package name */
    public String f32349k;

    /* renamed from: l, reason: collision with root package name */
    public String f32350l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f32351m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f32352n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f32353o;

    /* renamed from: p, reason: collision with root package name */
    public int f32354p;

    /* renamed from: q, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.b f32355q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f32356r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f32357s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f32358t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f32359u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f32360v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f32361w;

    /* renamed from: x, reason: collision with root package name */
    public float f32362x;

    /* renamed from: y, reason: collision with root package name */
    public float f32363y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f32364z;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            com.meishu.sdk.meishu_ad.nativ.a aVar;
            NormalMediaView normalMediaView = NormalMediaView.this;
            if (!normalMediaView.f32320F && (aVar = normalMediaView.f32319E) != null) {
                aVar.onADExposure();
            }
            RecylcerAdInteractionListener recylcerAdInteractionListener = NormalMediaView.this.f32330P;
            if (recylcerAdInteractionListener != null) {
                recylcerAdInteractionListener.onAdExposure();
            }
        }
    }

    public class b extends SafeBroadcastReceiver {
        public b() {
        }

        @Override // com.meishu.sdk.core.safe.SafeBroadcastReceiver
        public void a(Context context, Intent intent) {
            com.meishu.sdk.core.utils.f.b(NormalMediaView.this.getContext(), NormalMediaView.this.f32355q);
        }
    }

    public class c extends com.meishu.sdk.core.safe.c {
        public c() {
        }

        @Override // com.meishu.sdk.core.safe.c
        public void a(Message message) {
            super.a(message);
            int currentPosition = NormalMediaView.this.f32340b.getCurrentPosition();
            NormalMediaView normalMediaView = NormalMediaView.this;
            normalMediaView.a(normalMediaView.f32342d, currentPosition);
            NormalMediaView.this.f32344f.setProgress(currentPosition);
            long duration = NormalMediaView.this.f32340b.getDuration();
            NormalMediaView normalMediaView2 = NormalMediaView.this;
            if (normalMediaView2.f32348j > duration) {
                normalMediaView2.f32348j = duration - 100;
            }
            e eVar = normalMediaView2.f32317C;
            if (eVar != null && normalMediaView2.f32354p == 1 && currentPosition > 0 && duration > 0) {
                eVar.onProgressUpdate(currentPosition, duration);
            }
            NormalMediaView normalMediaView3 = NormalMediaView.this;
            long j2 = normalMediaView3.f32348j;
            if (j2 > 0 && currentPosition >= j2 && !normalMediaView3.f32322H) {
                NormalMediaView.this.f32322H = true;
                n0.b bVar = NormalMediaView.this.f32316B;
                if (bVar != null) {
                    bVar.onKeepTimeFinished();
                }
            }
            double d2 = (currentPosition * 1.0f) / duration;
            if (d2 < 0.25d || d2 >= 0.5d) {
                if (d2 < 0.5d || d2 >= 0.75d) {
                    if (d2 >= 0.75d && d2 < 1.0d && !NormalMediaView.this.f32325K) {
                        e eVar2 = NormalMediaView.this.f32317C;
                        if (eVar2 != null) {
                            eVar2.onVideoThreeQuarter();
                        }
                        NormalMediaView.this.f32325K = true;
                    }
                } else if (!NormalMediaView.this.f32324J) {
                    e eVar3 = NormalMediaView.this.f32317C;
                    if (eVar3 != null) {
                        eVar3.onVideoOneHalf();
                    }
                    NormalMediaView.this.f32324J = true;
                }
            } else if (!NormalMediaView.this.f32323I) {
                e eVar4 = NormalMediaView.this.f32317C;
                if (eVar4 != null) {
                    eVar4.onVideoOneQuarter();
                }
                NormalMediaView.this.f32323I = true;
            }
            NormalMediaView.this.f32326L.sendEmptyMessageDelayed(1, 100L);
        }
    }

    public interface d {
    }

    public NormalMediaView(Context context) {
        super(context);
        this.f32338a = getClass().getSimpleName();
        this.f32345g = true;
        this.f32348j = -1L;
        this.f32354p = 0;
        this.f32356r = false;
        this.f32357s = false;
        this.f32358t = false;
        this.f32359u = false;
        this.f32360v = false;
        this.f32361w = false;
        this.f32320F = false;
        this.f32326L = new c();
        this.f32336V = new ArrayList();
        this.f32337W = new b();
        a(context);
    }

    public int getCurrentPosition() {
        try {
            this.f32328N = this.f32340b.getCurrentPosition();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f32328N;
    }

    public int getDuration() {
        return this.f32340b.getDuration();
    }

    public MeishuVideoTextureView getMeishuVideoView() {
        return this.f32340b;
    }

    public int getPlayState() {
        return this.f32354p;
    }

    public Bitmap getVideoThumb() {
        try {
            if (TextUtils.isEmpty(this.f32331Q)) {
                return null;
            }
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(this.f32331Q);
            return mediaMetadataRetriever.getFrameAtTime();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public View getVideoView() {
        return this;
    }

    public final void h() {
        if (this.f32351m) {
            this.f32341c.b(R.id.ms_center_play_button).d(0);
        }
        if (this.f32326L.hasMessages(1)) {
            this.f32326L.removeMessages(1);
        }
    }

    public final void i() {
        String str = this.f32338a;
        StringBuilder sbA = com.meishu.sdk.activity.a.a("onPlay ");
        sbA.append(hashCode());
        LogUtil.d(str, sbA.toString());
        if (this.f32357s && !this.f32356r && !this.f32359u) {
            this.f32356r = true;
            this.f32340b.post(new h(this));
        }
        this.f32341c.b(R.id.ms_center_play_button).d(8);
        if (this.f32357s) {
            this.f32341c.b(R.id.ms_video_cover).d(4);
            this.f32341c.b(R.id.ms_progress_loading).d(8);
        }
        this.f32344f.setMax(this.f32340b.getDuration());
        a(this.f32343e, this.f32340b.getDuration());
        if (this.f32326L.hasMessages(1)) {
            return;
        }
        this.f32326L.sendEmptyMessage(1);
    }

    public void j() {
        if (this.f32340b.getMediaPlayer() != null) {
            try {
                this.f32340b.getMediaPlayer().setVolume(1.0f, 1.0f);
                this.f32361w = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f32341c.b(R.id.ms_video_volume_mute).d(8);
            this.f32341c.b(R.id.ms_video_volume).d(0);
            e eVar = this.f32317C;
            if (eVar != null) {
                eVar.onVideoUnmute();
            }
        }
    }

    public void k() {
        n0.c cVar = this.f32315A;
        if (cVar != null) {
            cVar.onLoaded(this);
        }
    }

    public void l() throws IllegalStateException {
        try {
            MediaPlayer mediaPlayer = this.f32340b.getMediaPlayer();
            String str = this.f32338a;
            StringBuilder sb = new StringBuilder();
            sb.append("stop(), mediaPlayer=");
            sb.append(mediaPlayer);
            sb.append(",isPlaying=");
            sb.append(mediaPlayer != null && mediaPlayer.isPlaying());
            LogUtil.d(str, sb.toString());
            if (mediaPlayer != null && mediaPlayer.isPlaying()) {
                try {
                    mediaPlayer.stop();
                    mediaPlayer.reset();
                    mediaPlayer.release();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        h();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void mute() {
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f32352n = true;
        if (this.f32359u) {
            if (!this.f32356r) {
                MeishuVideoTextureView meishuVideoTextureView = this.f32340b;
                if (meishuVideoTextureView.f32693g) {
                    this.f32356r = true;
                    meishuVideoTextureView.post(new a());
                }
            }
            int i2 = this.f32354p;
            if (i2 == 0 && this.f32345g) {
                start();
            } else if (i2 == 1 || (i2 == 2 && this.f32345g)) {
                resume();
            }
        }
        if (this.f32345g) {
            LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.f32337W, new IntentFilter("ACTION_DOWNLOAD_CLICKED"));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f32352n = false;
        if (this.f32359u && this.f32354p == 1 && !this.f32353o && this.f32345g) {
            pause();
        }
        if (this.f32345g) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.f32337W);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            float r2 = r6.f32362x
            r3 = 0
            int r4 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            r5 = 1073741824(0x40000000, float:2.0)
            if (r4 >= 0) goto L31
            float r4 = r6.f32363y
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L31
            if (r0 <= 0) goto L24
            if (r1 != 0) goto L24
            float r8 = (float) r0
            float r4 = r4 * r8
            float r4 = r4 / r2
            int r8 = (int) r4
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r5)
            goto L6d
        L24:
            if (r0 != 0) goto L6d
            if (r1 <= 0) goto L6d
            float r7 = (float) r1
            float r2 = r2 * r7
            float r2 = r2 / r4
            int r7 = (int) r2
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
            goto L6d
        L31:
            int r2 = r6.f32346h
            if (r2 <= 0) goto L6d
            int r3 = r6.f32347i
            if (r3 <= 0) goto L6d
            if (r0 <= 0) goto L48
            if (r1 != 0) goto L48
            float r8 = (float) r3
            float r0 = (float) r0
            float r8 = r8 * r0
            float r0 = (float) r2
            float r8 = r8 / r0
            int r8 = (int) r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r5)
            goto L6d
        L48:
            if (r0 != 0) goto L57
            if (r1 <= 0) goto L57
            float r7 = (float) r2
            float r0 = (float) r1
            float r7 = r7 * r0
            float r0 = (float) r3
            float r7 = r7 / r0
            int r7 = (int) r7
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
            goto L6d
        L57:
            if (r0 <= 0) goto L6d
            if (r1 <= 0) goto L6d
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r5)
            int r8 = r6.f32347i
            float r8 = (float) r8
            float r0 = (float) r0
            float r8 = r8 * r0
            int r0 = r6.f32346h
            float r0 = (float) r0
            float r8 = r8 / r0
            int r8 = (int) r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r5)
        L6d:
            super.onMeasure(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.meishu_ad.nativ.NormalMediaView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        int i2;
        super.onWindowFocusChanged(z2);
        if (this.f32334T) {
            return;
        }
        if (!z2 && (i2 = this.f32354p) != 3 && i2 != 0 && this.f32352n && !this.f32353o && this.f32327M != 1) {
            LogUtil.d(this.f32338a, "onWindowFocusChanged,onPause");
            pause();
            return;
        }
        if (z2) {
            int i3 = this.f32354p;
            if (i3 == 2 || (this.f32353o && i3 != 3 && this.f32352n)) {
                String str = this.f32338a;
                StringBuilder sbA = com.meishu.sdk.activity.a.a("onResume,playState=");
                sbA.append(this.f32354p);
                LogUtil.d(str, sbA.toString());
                resume();
            }
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void pause() {
        int i2;
        e eVar;
        if ((this.f32358t && this.f32354p == 3) || (i2 = this.f32354p) == 0) {
            return;
        }
        this.f32360v = true;
        this.f32354p = 2;
        this.f32340b.c();
        h();
        if (i2 == 2 || (eVar = this.f32317C) == null) {
            return;
        }
        eVar.onVideoPause();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void replay() {
        if (this.f32358t && this.f32354p == 3) {
            return;
        }
        this.f32354p = 0;
        this.f32360v = false;
        this.f32335U = false;
        start();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void resume() {
        if ((this.f32358t && this.f32354p == 3) || this.f32354p == 0) {
            return;
        }
        this.f32360v = false;
        this.f32354p = 1;
        this.f32340b.d();
        i();
        e eVar = this.f32317C;
        if (eVar != null) {
            eVar.onVideoResume();
        }
    }

    public void setActivityForLifecycle(Activity activity) {
        if (this.f32321G == null) {
            com.meishu.sdk.meishu_ad.lifecycle.c cVar = new com.meishu.sdk.meishu_ad.lifecycle.c();
            this.f32321G = cVar;
            cVar.f32297b = activity;
        }
    }

    public void setAdListener(com.meishu.sdk.meishu_ad.nativ.a aVar) {
        this.f32319E = aVar;
        this.f32320F = false;
    }

    public void setAutoStart(boolean z2) {
        this.f32345g = z2;
        if (z2) {
            return;
        }
        this.f32341c.b(R.id.ms_center_play_button).d(0);
    }

    public void setConfigHeight(int i2) {
        this.f32347i = i2;
    }

    public void setConfigWidth(int i2) {
        this.f32346h = i2;
    }

    public void setContainerHeight(float f2) {
        this.f32363y = f2;
    }

    public void setContainerWidth(float f2) {
        this.f32362x = f2;
    }

    public void setDisplayMode(int i2) {
        this.f32340b.setDisplayMode(i2);
    }

    public void setFromLogo(String str) {
        if (str != null) {
            this.f32341c.b(R.id.ms_img_meishu_ad_tag).a(str, false);
        }
    }

    public void setFromLogoVisibility(int i2) {
        com.meishu.sdk.core.bquery.i iVarB = this.f32341c.b(R.id.ms_img_meishu_ad_tag);
        View view = iVarB.f31521d;
        if (view == null || view.getVisibility() == i2) {
            return;
        }
        iVarB.f31521d.setVisibility(i2);
    }

    public void setInitMute(boolean z2) {
        if (z2) {
            this.f32341c.b(R.id.ms_video_volume_mute).d(0);
            this.f32341c.b(R.id.ms_video_volume).d(8);
        } else {
            this.f32341c.b(R.id.ms_video_volume_mute).d(8);
            this.f32341c.b(R.id.ms_video_volume).d(0);
        }
        this.f32340b.setInitMute(z2);
    }

    public void setIsEyes(int i2) {
        this.f32327M = i2;
    }

    public void setMsAd(com.meishu.sdk.meishu_ad.nativ.b bVar) {
        this.f32355q = bVar;
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void setNativeAdMediaListener(e eVar) {
        this.f32317C = eVar;
    }

    public void setOnExposureListener(RecylcerAdInteractionListener recylcerAdInteractionListener) {
        this.f32330P = recylcerAdInteractionListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.f32318D = onInfoListener;
    }

    public void setOnPreparedListener(d dVar) {
        this.f32339a0 = dVar;
    }

    public void setOnVideoLoadedListener(n0.c cVar) {
        this.f32315A = cVar;
    }

    public void setPlayOnce(boolean z2) {
        this.f32358t = z2;
    }

    public void setProgressLoadingVisible(boolean z2) {
        if (z2) {
            this.f32341c.b(R.id.ms_progress_loading).d(0);
        } else {
            this.f32341c.b(R.id.ms_progress_loading).d(8);
        }
    }

    public void setRadius(int i2) {
        try {
            ImageView imageView = this.f32332R;
            if (imageView instanceof RoundImageView) {
                ((RoundImageView) imageView).setCornerRadius(i2);
            }
            this.f32340b.setRadius((int) com.meishu.sdk.core.utils.m.a(getContext(), i2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setRecycler(boolean z2) {
        this.f32359u = z2;
    }

    public void setRewardWeb(boolean z2) {
        this.f32334T = z2;
    }

    public void setUseTransform(boolean z2) {
        this.f32340b.setUseTransform(z2);
    }

    public void setVideoCover(String str) {
        this.f32349k = str;
        this.f32341c.b(R.id.ms_video_cover).a(str, false);
    }

    public void setVideoCoverScaleType(ImageView.ScaleType scaleType) {
        ImageView imageView = this.f32332R;
        if (imageView == null || scaleType == null) {
            return;
        }
        imageView.setScaleType(scaleType);
    }

    public void setVideoEndCover(String str) {
        this.f32350l = str;
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void setVideoPath(String str) {
        this.f32331Q = str;
        this.f32340b.setVideoPath(str);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void start() {
        int i2 = this.f32354p;
        if (i2 == 0 || i2 == 3) {
            if (this.f32358t && i2 == 3) {
                return;
            }
            this.f32354p = 1;
            this.f32323I = false;
            this.f32324J = false;
            this.f32325K = false;
            if (this.f32360v) {
                return;
            }
            this.f32340b.e();
            i();
            e eVar = this.f32317C;
            if (eVar == null || !this.f32340b.f32693g || this.f32335U) {
                return;
            }
            this.f32335U = true;
            eVar.onVideoStart();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void unmute() {
        j();
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void a(n0.b bVar, long j2) {
        this.f32316B = bVar;
        if (j2 > 0) {
            this.f32348j = j2;
        }
    }

    public void b() {
        try {
            ImageView imageView = this.f32332R;
            if (imageView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.width = getMeishuVideoView().getMeasuredWidth();
            if (getMeishuVideoView() == null) {
                return;
            }
            layoutParams.height = getMeishuVideoView().getMeasuredHeight();
            this.f32332R.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c() {
        MediaPlayer mediaPlayer = this.f32340b.getMediaPlayer();
        if (mediaPlayer == null) {
            return;
        }
        if (this.f32346h <= 0 || this.f32347i <= 0) {
            this.f32346h = mediaPlayer.getVideoWidth();
            this.f32347i = mediaPlayer.getVideoHeight();
            requestLayout();
        }
    }

    public void d() {
        MeishuVideoTextureView meishuVideoTextureView = this.f32340b;
        if (meishuVideoTextureView != null) {
            LogUtil.d(meishuVideoTextureView.f32687a, C1315g.f37905b);
            try {
                MediaPlayer mediaPlayer = meishuVideoTextureView.f32688b;
                if (mediaPlayer != null) {
                    try {
                        mediaPlayer.stop();
                        meishuVideoTextureView.f32688b.reset();
                        meishuVideoTextureView.f32688b.release();
                        meishuVideoTextureView.f32688b = null;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                SurfaceTexture surfaceTexture = meishuVideoTextureView.f32700n;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        try {
            if (this.f32326L.hasMessages(1)) {
                this.f32326L.removeMessages(1);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        com.meishu.sdk.meishu_ad.lifecycle.c cVar = this.f32321G;
        if (cVar != null) {
            cVar.f32297b = null;
        }
    }

    public boolean e() {
        try {
            if (this.f32340b.getMediaPlayer() != null) {
                return this.f32340b.getMediaPlayer().isPlaying();
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final void f() {
        Bitmap bitmap;
        try {
            try {
                this.f32354p = 3;
                String str = !TextUtils.isEmpty(this.f32350l) ? this.f32350l : this.f32349k;
                if (str == null) {
                    MeishuVideoTextureView meishuVideoTextureView = this.f32340b;
                    if (meishuVideoTextureView != null && (bitmap = meishuVideoTextureView.getBitmap()) != null && !this.f32333S) {
                        b();
                        com.meishu.sdk.core.bquery.i iVarB = this.f32341c.b(R.id.ms_video_cover);
                        View view = iVarB.f31521d;
                        if (view instanceof ImageView) {
                            ((ImageView) view).setImageBitmap(bitmap);
                        }
                        iVarB.d(0);
                    }
                } else if (!this.f32333S) {
                    b();
                    this.f32341c.b(R.id.ms_video_cover).a(str, false).d(0);
                }
                View view2 = this.f32341c.b(R.id.ms_video_cover).f31521d;
                if (view2 != null && view2.getVisibility() == 0 && this.f32358t) {
                    this.f32341c.b(R.id.ms_video_view).d(8);
                }
                h();
                int duration = this.f32340b.getDuration();
                a(this.f32342d, duration);
                this.f32344f.setProgress(duration);
                if (!this.f32345g) {
                    this.f32341c.b(R.id.ms_center_play_button).d(0);
                }
                if (this.f32329O) {
                    d();
                    return;
                }
                if (this.f32348j <= 0 && this.f32316B != null && !this.f32322H) {
                    this.f32322H = true;
                    this.f32316B.onKeepTimeFinished();
                }
                Iterator<n0.a> it = this.f32336V.iterator();
                while (it.hasNext()) {
                    it.next().onCompleted();
                }
                e eVar = this.f32317C;
                if (eVar != null) {
                    eVar.onVideoComplete();
                }
                d();
            } catch (Exception e2) {
                e2.printStackTrace();
                d();
            }
        } catch (Throwable th) {
            d();
            throw th;
        }
    }

    public void g() {
        if (this.f32340b.getMediaPlayer() != null) {
            try {
                this.f32340b.getMediaPlayer().setVolume(0.0f, 0.0f);
                this.f32361w = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f32341c.b(R.id.ms_video_volume_mute).d(0);
            this.f32341c.b(R.id.ms_video_volume).d(8);
            e eVar = this.f32317C;
            if (eVar != null) {
                eVar.onVideoMute();
            }
        }
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public void a(n0.a aVar) {
        this.f32336V.add(aVar);
    }

    @Override // com.meishu.sdk.meishu_ad.n0
    public boolean a() {
        return this.f32340b.f32693g;
    }

    public final void a(TextView textView, int i2) {
        int i3 = i2 / 1000;
        textView.setText(String.format(Locale.CHINA, "%02d:%02d", Integer.valueOf(i3 / 60), Integer.valueOf(i3 % 60)));
    }

    public void b(boolean z2) {
        this.f32351m = z2;
        if (z2) {
            this.f32341c.b(R.id.ms_control).d(0);
        } else {
            this.f32341c.b(R.id.ms_control).d(8);
        }
    }

    public final void a(Context context) {
        View viewInflate;
        setTag("meishu_media_view");
        if (this.f32364z) {
            viewInflate = LayoutInflater.from(context).inflate(R.layout.ms_normal_video_player_layout2, (ViewGroup) null);
        } else {
            viewInflate = LayoutInflater.from(context).inflate(R.layout.ms_normal_video_player_layout, (ViewGroup) null);
        }
        addView(viewInflate, -1, -2);
        this.f32340b = (MeishuVideoTextureView) viewInflate.findViewById(R.id.ms_video_view);
        this.f32332R = (ImageView) viewInflate.findViewById(R.id.ms_video_cover);
        com.meishu.sdk.core.bquery.i iVar = new com.meishu.sdk.core.bquery.i(this);
        this.f32341c = iVar;
        this.f32342d = (TextView) iVar.b(R.id.ms_video_currentTime).f31521d;
        this.f32343e = (TextView) this.f32341c.b(R.id.ms_video_endTime).f31521d;
        this.f32344f = (ProgressBar) this.f32341c.b(R.id.ms_video_seekBar).f31521d;
        com.meishu.sdk.core.bquery.i iVarB = this.f32341c.b(R.id.ms_center_play_button);
        i iVar2 = new i(this);
        View view = iVarB.f31521d;
        if (view != null) {
            view.setOnClickListener(iVar2);
        }
        com.meishu.sdk.core.bquery.i iVarB2 = this.f32341c.b(R.id.ms_controlbar_video_play_button);
        j jVar = new j(this);
        View view2 = iVarB2.f31521d;
        if (view2 != null) {
            view2.setOnClickListener(jVar);
        }
        com.meishu.sdk.core.bquery.i iVarB3 = this.f32341c.b(R.id.ms_controlbar_video_pause_button);
        k kVar = new k(this);
        View view3 = iVarB3.f31521d;
        if (view3 != null) {
            view3.setOnClickListener(kVar);
        }
        com.meishu.sdk.core.bquery.i iVarB4 = this.f32341c.b(R.id.ms_video_volume_mute);
        l lVar = new l(this);
        View view4 = iVarB4.f31521d;
        if (view4 != null) {
            view4.setOnClickListener(lVar);
        }
        com.meishu.sdk.core.bquery.i iVarB5 = this.f32341c.b(R.id.ms_video_volume);
        m mVar = new m(this);
        View view5 = iVarB5.f31521d;
        if (view5 != null) {
            view5.setOnClickListener(mVar);
        }
        this.f32340b.setOnErrorListener(new n(this));
        this.f32340b.setOnPreparedListener(new o(this));
        this.f32340b.setOnCompletionListener(new p(this));
        this.f32340b.setOnInfoListener(new g(this));
        if (getContext() instanceof Activity) {
            com.meishu.sdk.meishu_ad.lifecycle.c cVar = new com.meishu.sdk.meishu_ad.lifecycle.c();
            this.f32321G = cVar;
            cVar.f32297b = (Activity) getContext();
        }
    }

    public NormalMediaView(Context context, boolean z2) {
        super(context);
        this.f32338a = getClass().getSimpleName();
        this.f32345g = true;
        this.f32348j = -1L;
        this.f32354p = 0;
        this.f32356r = false;
        this.f32357s = false;
        this.f32358t = false;
        this.f32359u = false;
        this.f32360v = false;
        this.f32361w = false;
        this.f32320F = false;
        this.f32326L = new c();
        this.f32336V = new ArrayList();
        this.f32337W = new b();
        this.f32364z = z2;
        a(context);
    }

    public NormalMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32338a = getClass().getSimpleName();
        this.f32345g = true;
        this.f32348j = -1L;
        this.f32354p = 0;
        this.f32356r = false;
        this.f32357s = false;
        this.f32358t = false;
        this.f32359u = false;
        this.f32360v = false;
        this.f32361w = false;
        this.f32320F = false;
        this.f32326L = new c();
        this.f32336V = new ArrayList();
        this.f32337W = new b();
        a(context);
    }

    public NormalMediaView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f32338a = getClass().getSimpleName();
        this.f32345g = true;
        this.f32348j = -1L;
        this.f32354p = 0;
        this.f32356r = false;
        this.f32357s = false;
        this.f32358t = false;
        this.f32359u = false;
        this.f32360v = false;
        this.f32361w = false;
        this.f32320F = false;
        this.f32326L = new c();
        this.f32336V = new ArrayList();
        this.f32337W = new b();
        a(context);
    }

    public void a(boolean z2) {
        this.f32353o = true;
        f fVarA = this.f32355q.a();
        MeishuDetailActivity.setMeishuVideoView(this);
        MeishuDetailActivity.setNativeAdData(this.f32355q);
        Intent intent = new Intent(getContext(), (Class<?>) MeishuDetailActivity.class);
        intent.setFlags(67108864);
        intent.putExtra(MeishuDetailActivity.EXTRA_INTERACTION_TYPE, fVarA.getInteractionType());
        intent.putExtra(MeishuDetailActivity.EXTRA_DURL, fVarA.getdUrl());
        intent.putExtra(MeishuDetailActivity.EXTRA_APP_NAME, fVarA.getAppName());
        intent.putExtra(MeishuDetailActivity.EXTRA_ICON_URL, fVarA.iconUrl);
        intent.putExtra(MeishuDetailActivity.EXTRA_CONTENT, fVarA.f32391c);
        intent.putExtra(MeishuDetailActivity.EXTRA_SCORE, fVarA.getScore());
        intent.putExtra(MeishuDetailActivity.EXTRA_DOWN_NUM, fVarA.getDownNum());
        intent.putExtra(MeishuDetailActivity.EXTRA_VIDEO_WIDTH, fVarA.f32389a);
        intent.putExtra(MeishuDetailActivity.EXTRA_VIDEO_HEIGHT, fVarA.f32390b);
        intent.putExtra(MeishuDetailActivity.EXTRA_STRONG_ACTION, z2);
        intent.putExtra(MeishuDetailActivity.EXTRA_VIDEO_COVER, fVarA.getVideo_cover());
        intent.putExtra(MeishuDetailActivity.EXTRA_VIDEO_END_COVER, fVarA.f32396h);
        if (!(getContext() instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        getContext().startActivity(intent);
    }
}
