package com.fl.saas.adx.base.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.fl.saas.AbstractC1162b;
import com.fl.saas.C1168c1;
import com.fl.saas.C1181g1;
import com.fl.saas.C1184h1;
import com.fl.saas.C1188j;
import com.fl.saas.C1224v;
import com.fl.saas.C1230x;
import com.fl.saas.J;
import com.fl.saas.K;
import com.fl.saas.N0;
import com.fl.saas.R;
import com.fl.saas.adx.base.activity.S2SRewardVideoActivity;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.base.activity.h5.SignUrlWebView;
import com.fl.saas.adx.base.interfaces.VolumeChangeObserver;
import com.fl.saas.adx.base.widget.FLCommonDialog;
import com.fl.saas.adx.base.widget.ShakeView;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import com.kwad.sdk.collector.AppStatusRules;

/* loaded from: classes3.dex */
public class S2SRewardVideoActivity extends Activity implements View.OnClickListener {
    private static int currentTime = -1;
    private static N0 manager;
    private int autoClickStartTime;
    private double autoClickTime;
    private boolean canAutoClick;
    private boolean canClickReward;
    private ProgressBar complete_progressBar;
    private int curPosition;
    private boolean fC0;
    private boolean fE0;
    private boolean fP0;
    private FrameLayout fl_media_view;
    private int getRewardTime;
    private boolean hasClick;
    private boolean hasJump;
    private boolean hasRefuseJump;
    private boolean hasReward;
    private LinearLayout ll_countdown;
    private LinearLayout ll_shake;
    private LinearLayout ll_watch_tips;
    private ImageView logoImageView;
    private RelativeLayout mADImgContainerRelativeLayout;
    private C1188j mAdxInfo;
    private TextView mAutoClickCloseView;
    private TextView mAutoClickTimeView;
    private ViewGroup mAutoClickView;
    private ImageView mCloseImageView;
    private TextView mDurationCountdownTextView;
    private ImageView mImageView;
    private Runnable mR0;
    private LinearLayout mRewardTipsView;
    private TextView mSkipTextView;
    private ImageView mSoundImageView;
    private SurfaceView mSurfaceView;
    private C1168c1 mSx;
    private CountDownTimer mTimer;
    private MediaPlayer mediaPlayer;
    private ProgressBar progressDialog;
    private RelativeLayout rl_progress;
    private SignUrlWebView signUrlWebView;
    private FLCommonDialog skipDialog;
    private int skipPosition;
    private long tE1;
    private long tS1;
    private long tT0;
    private TextView tv_has_reward;
    private TextView tv_progress_tips;
    private TextView tv_watch_tips;
    private int videoDuration;
    private VolumeChangeObserver volumeObserver;
    private int watchTime;
    private ShakeView yd_shake_view;
    private boolean isPreviewMode = false;
    private boolean isWatchMode = false;
    private boolean mCanScroll = false;
    private boolean previewCanContinue = true;
    private Handler mDurationCountdownHandler = new Handler();
    private boolean mIsVideoCompleted = false;
    private boolean mIsCurrentPage = false;
    private boolean mIs25Preent = false;
    private boolean mIs50Preent = false;
    private boolean mIs75Preent = false;
    private boolean mIsSoundEnable = true;
    private boolean isVideo = true;
    private boolean mIsVideoPrepared = false;
    private boolean mIsFirstCreateSurfaceView = true;
    private boolean hasCallBackError = false;
    private boolean skipDialogIsShow = false;
    private boolean systemMute = false;
    private boolean isPlaying = true;
    private boolean hasRewardEnd = false;

    /* renamed from: com.fl.saas.adx.base.activity.S2SRewardVideoActivity$1, reason: invalid class name */
    public class AnonymousClass1 implements SignUrlWebView.WebViewStatus {
        public AnonymousClass1() {
        }

        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1) {
            if (S2SRewardVideoActivity.this.hasReward || S2SRewardVideoActivity.this.tv_progress_tips == null) {
                return;
            }
            S2SRewardVideoActivity.this.previewCanContinue = false;
            S2SRewardVideoActivity.this.tv_progress_tips.setText(S2SRewardVideoActivity.this.getString(R.string.fl_adx_continue_scrolling_to_get));
        }

        @Override // com.fl.saas.adx.base.activity.h5.SignUrlWebView.WebViewStatus
        public void onEndScroll() {
            if (S2SRewardVideoActivity.this.isPreviewMode && S2SRewardVideoActivity.this.mCanScroll && !S2SRewardVideoActivity.this.hasReward) {
                DeviceUtil.postUIDelayed(500L, new Runnable() { // from class: com.fl.saas.adx.base.activity.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        S2SRewardVideoActivity.AnonymousClass1.a(this.f30135b);
                    }
                });
            }
        }

        @Override // com.fl.saas.adx.base.activity.h5.SignUrlWebView.WebViewStatus
        public void onLoadFailed() {
            try {
                S2SRewardVideoActivity.this.isPreviewMode = false;
                if (!S2SRewardVideoActivity.this.isVideo) {
                    S2SRewardVideoActivity s2SRewardVideoActivity = S2SRewardVideoActivity.this;
                    s2SRewardVideoActivity.getRewardTime = s2SRewardVideoActivity.mAdxInfo.f30461S * 1000;
                }
                S2SRewardVideoActivity.this.previewCanContinue = true;
                S2SRewardVideoActivity.this.fl_media_view.setVisibility(0);
                S2SRewardVideoActivity.this.signUrlWebView.setVisibility(8);
                S2SRewardVideoActivity.this.rl_progress.setVisibility(8);
                S2SRewardVideoActivity.this.ll_countdown.setVisibility(0);
                S2SRewardVideoActivity.this.changeSurfaceViewSize();
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }

        @Override // com.fl.saas.adx.base.activity.h5.SignUrlWebView.WebViewStatus
        public void onLoadSuccess() {
        }

        @Override // com.fl.saas.adx.base.activity.h5.SignUrlWebView.WebViewStatus
        public void onStartScroll() {
            S2SRewardVideoActivity.this.previewCanContinue = true;
        }

        @Override // com.fl.saas.adx.base.activity.h5.SignUrlWebView.WebViewStatus
        public void onTitle(String str) {
        }
    }

    public static /* synthetic */ void a(S2SRewardVideoActivity s2SRewardVideoActivity, boolean z2) {
        ImageView imageView;
        int i2;
        if (z2) {
            s2SRewardVideoActivity.systemMute = true;
            if (!s2SRewardVideoActivity.mIsSoundEnable || s2SRewardVideoActivity.mSoundImageView == null) {
                return;
            }
            C1230x.a().k(s2SRewardVideoActivity.mAdxInfo);
            imageView = s2SRewardVideoActivity.mSoundImageView;
            i2 = R.drawable.fl_adx_volume_off;
        } else {
            s2SRewardVideoActivity.systemMute = false;
            if (!s2SRewardVideoActivity.mIsSoundEnable || (imageView = s2SRewardVideoActivity.mSoundImageView) == null) {
                return;
            } else {
                i2 = R.drawable.fl_adx_volume_on;
            }
        }
        imageView.setImageResource(i2);
    }

    public static /* synthetic */ int access$2812(S2SRewardVideoActivity s2SRewardVideoActivity, int i2) {
        int i3 = s2SRewardVideoActivity.curPosition + i2;
        s2SRewardVideoActivity.curPosition = i3;
        return i3;
    }

    public static /* synthetic */ int access$4012(S2SRewardVideoActivity s2SRewardVideoActivity, int i2) {
        int i3 = s2SRewardVideoActivity.skipPosition + i2;
        s2SRewardVideoActivity.skipPosition = i3;
        return i3;
    }

    public static /* synthetic */ boolean b(S2SRewardVideoActivity s2SRewardVideoActivity, MediaPlayer mediaPlayer, int i2, int i3) {
        ProgressBar progressBar = s2SRewardVideoActivity.progressDialog;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        N0 n02 = manager;
        if (n02 != null && !s2SRewardVideoActivity.hasCallBackError) {
            s2SRewardVideoActivity.hasCallBackError = true;
            n02.a(i2, s2SRewardVideoActivity.getString(R.string.fl_adx_video_play_failed, Integer.valueOf(i3)));
        }
        ImageView imageView = s2SRewardVideoActivity.mCloseImageView;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        return false;
    }

    public static /* synthetic */ void c(S2SRewardVideoActivity s2SRewardVideoActivity, int i2, int i3, int i4) {
        if (s2SRewardVideoActivity.skipDialogIsShow) {
            s2SRewardVideoActivity.yd_shake_view.setCallback(false);
            return;
        }
        try {
            ((Vibrator) s2SRewardVideoActivity.getApplicationContext().getSystemService("vibrator")).vibrate(500L);
            C1188j c1188j = s2SRewardVideoActivity.mAdxInfo;
            if (c1188j != null) {
                c1188j.f30445M1 = i2;
                c1188j.f30448N1 = i3;
                c1188j.f30451O1 = i4;
                c1188j.k2 = C1188j.b.SHAKE;
            }
            s2SRewardVideoActivity.yd_shake_view.setCallback(true);
            s2SRewardVideoActivity.ll_shake.setVisibility(8);
            s2SRewardVideoActivity.jump();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSurfaceViewSize() {
        FrameLayout frameLayout;
        try {
            if (this.mediaPlayer != null && (frameLayout = this.fl_media_view) != null) {
                frameLayout.post(new Runnable() { // from class: com.fl.saas.adx.base.activity.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        S2SRewardVideoActivity.g(this.f30130b);
                    }
                });
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkReward() {
        N0 n02;
        try {
            if (this.hasReward || this.isWatchMode || (n02 = manager) == null) {
                return;
            }
            this.hasReward = true;
            n02.h();
            this.tv_progress_tips.setText(getString(R.string.fl_adx_task_complete_multiline));
            this.tv_has_reward.setVisibility(0);
            this.mRewardTipsView.setVisibility(8);
            this.mSkipTextView.setVisibility(8);
            this.mCloseImageView.setVisibility(0);
            this.mDurationCountdownTextView.setVisibility(8);
            this.mAutoClickView.setVisibility(8);
            setDurationCountdown(this.getRewardTime - this.curPosition);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void checkShakeView() {
        try {
            C1188j c1188j = this.mAdxInfo;
            if (c1188j == null || !c1188j.p() || this.mAdxInfo.h() != 2) {
                this.yd_shake_view.setCallback(true);
                this.ll_shake.setVisibility(8);
                return;
            }
            this.ll_shake.setVisibility(0);
            if (!this.mAdxInfo.v()) {
                this.ll_shake.setAlpha(0.0f);
            }
            this.yd_shake_view.setVisibility(0);
            this.yd_shake_view.setCallback(false);
            this.yd_shake_view.setNeedVibrator(false);
            this.yd_shake_view.setShakeListener(this.mAdxInfo.k(), new ShakeView.ShakeListener() { // from class: com.fl.saas.adx.base.activity.c
                @Override // com.fl.saas.adx.base.widget.ShakeView.ShakeListener
                public final void onShake(int i2, int i3, int i4) {
                    S2SRewardVideoActivity.c(this.f30122a, i2, i3, i4);
                }
            });
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static /* synthetic */ void d(final S2SRewardVideoActivity s2SRewardVideoActivity, int i2, final boolean z2) {
        s2SRewardVideoActivity.getClass();
        s2SRewardVideoActivity.runOnUiThread(new Runnable() { // from class: com.fl.saas.adx.base.activity.j
            @Override // java.lang.Runnable
            public final void run() {
                S2SRewardVideoActivity.a(this.f30131b, z2);
            }
        });
    }

    public static /* synthetic */ boolean e(S2SRewardVideoActivity s2SRewardVideoActivity, View view, MotionEvent motionEvent) {
        C1188j c1188j;
        C1188j c1188j2;
        s2SRewardVideoActivity.getClass();
        if (motionEvent.getAction() == 0 && (c1188j2 = s2SRewardVideoActivity.mAdxInfo) != null) {
            c1188j2.f30421E1 = (int) motionEvent.getX();
            s2SRewardVideoActivity.mAdxInfo.f30424F1 = (int) motionEvent.getY();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            C1188j c1188j3 = s2SRewardVideoActivity.mAdxInfo;
            c1188j3.f30433I1 = c1188j3.f30421E1 + iArr[0];
            c1188j3.f30436J1 = c1188j3.f30424F1 + iArr[1];
            c1188j3.f30460R1 = System.currentTimeMillis();
        }
        if (motionEvent.getAction() == 1 && (c1188j = s2SRewardVideoActivity.mAdxInfo) != null) {
            c1188j.f30427G1 = (int) motionEvent.getX();
            s2SRewardVideoActivity.mAdxInfo.f30430H1 = (int) motionEvent.getY();
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr2);
            C1188j c1188j4 = s2SRewardVideoActivity.mAdxInfo;
            c1188j4.f30439K1 = c1188j4.f30427G1 + iArr2[0];
            c1188j4.f30442L1 = c1188j4.f30430H1 + iArr2[1];
            c1188j4.f30463S1 = System.currentTimeMillis();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eAcT() {
        try {
            if (!this.fC0 && !this.fE0 && !isFinishing()) {
                this.fE0 = true;
                this.mR0 = null;
                eSx();
                pJ0();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void eSx() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            c1168c1.d();
        }
    }

    public static /* synthetic */ void f(S2SRewardVideoActivity s2SRewardVideoActivity, MediaPlayer mediaPlayer) {
        s2SRewardVideoActivity.getClass();
        try {
            s2SRewardVideoActivity.mIsVideoPrepared = true;
            s2SRewardVideoActivity.setSoundEnable(s2SRewardVideoActivity.mIsSoundEnable);
            if (s2SRewardVideoActivity.mIsVideoCompleted || currentTime > 0) {
                return;
            }
            s2SRewardVideoActivity.startVideo();
            s2SRewardVideoActivity.mDurationCountdownTextView.setVisibility(8);
            s2SRewardVideoActivity.mSoundImageView.setVisibility(0);
            s2SRewardVideoActivity.mCloseImageView.setVisibility(8);
            s2SRewardVideoActivity.mSkipTextView.setVisibility(8);
            C1230x.a().d(s2SRewardVideoActivity.mAdxInfo, s2SRewardVideoActivity.mediaPlayer.getDuration());
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void finishDelayed() {
        new Handler().postDelayed(new Runnable() { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.6
            @Override // java.lang.Runnable
            public void run() {
                if (S2SRewardVideoActivity.manager != null) {
                    S2SRewardVideoActivity.manager.f();
                }
                S2SRewardVideoActivity.this.finish();
            }
        }, 2000L);
    }

    public static /* synthetic */ void g(S2SRewardVideoActivity s2SRewardVideoActivity) {
        s2SRewardVideoActivity.getClass();
        try {
            MediaPlayer mediaPlayer = s2SRewardVideoActivity.mediaPlayer;
            if (mediaPlayer != null && s2SRewardVideoActivity.fl_media_view != null && s2SRewardVideoActivity.mSurfaceView != null) {
                int videoWidth = mediaPlayer.getVideoWidth();
                int videoHeight = s2SRewardVideoActivity.mediaPlayer.getVideoHeight();
                int width = s2SRewardVideoActivity.fl_media_view.getWidth();
                int height = s2SRewardVideoActivity.fl_media_view.getHeight();
                if (videoWidth <= 0 || videoHeight <= 0 || width <= 0 || height <= 0) {
                    return;
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) s2SRewardVideoActivity.mSurfaceView.getLayoutParams();
                int i2 = videoWidth * height;
                int i3 = videoHeight * width;
                if (i2 > i3) {
                    layoutParams.width = width;
                    layoutParams.height = i3 / videoWidth;
                } else {
                    layoutParams.width = i2 / videoHeight;
                    layoutParams.height = height;
                }
                s2SRewardVideoActivity.mSurfaceView.setLayoutParams(layoutParams);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private C1168c1 gSx() {
        if (this.mSx == null) {
            this.mSx = new C1168c1();
        }
        return this.mSx;
    }

    private float gVx() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.e();
        }
        return 0.0f;
    }

    private float gVy() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.f();
        }
        return 0.0f;
    }

    private float gVz() {
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            return c1168c1.g();
        }
        return 0.0f;
    }

    public static /* synthetic */ void h(S2SRewardVideoActivity s2SRewardVideoActivity, MediaPlayer mediaPlayer) {
        if (s2SRewardVideoActivity.mIsVideoPrepared) {
            s2SRewardVideoActivity.playEnd((s2SRewardVideoActivity.isPreviewMode || s2SRewardVideoActivity.isWatchMode) ? 0 : 1);
        }
        s2SRewardVideoActivity.mSoundImageView.setVisibility(8);
    }

    private void initDatas() {
        int i2;
        try {
            N0 n02 = manager;
            if (n02 != null) {
                C1188j c1188jB = n02.b();
                this.mAdxInfo = c1188jB;
                if (c1188jB != null) {
                    c1188jB.m2 = System.currentTimeMillis();
                    this.mAdxInfo.f30454P1 = DeviceUtil.getMobileWidth();
                    this.mAdxInfo.f30457Q1 = DeviceUtil.getMobileHeight();
                    C1188j c1188j = this.mAdxInfo;
                    this.isWatchMode = c1188j.f30458R == 2 && (!TextUtils.isEmpty(c1188j.f30560y0) || (this.mAdxInfo.f30554w0.equals("7") && !TextUtils.isEmpty(this.mAdxInfo.f30412B1)));
                    C1188j c1188j2 = this.mAdxInfo;
                    this.watchTime = c1188j2.f30473W;
                    if (!TextUtils.isEmpty(c1188j2.f30557x0) && (!TextUtils.isEmpty(this.mAdxInfo.f30563z0) || !TextUtils.isEmpty(this.mAdxInfo.f30560y0))) {
                        C1188j c1188j3 = this.mAdxInfo;
                        if (c1188j3.q2 == 1) {
                            this.isPreviewMode = true;
                            this.getRewardTime = c1188j3.f30473W * 1000;
                        }
                    }
                    if (this.isPreviewMode) {
                        this.ll_countdown.setVisibility(8);
                        this.rl_progress.setVisibility(0);
                    }
                    C1188j c1188j4 = this.mAdxInfo;
                    if (c1188j4.f30470V == 1 && c1188j4.f30473W > 0 && "A".equals(c1188j4.f30476X)) {
                        this.canAutoClick = true;
                        int i3 = this.mAdxInfo.f30473W;
                        if (i3 > 5) {
                            this.autoClickTime = 5.0d;
                            this.autoClickStartTime = i3 - 5;
                        } else {
                            this.autoClickTime = i3;
                            this.autoClickStartTime = 0;
                        }
                    }
                    C1188j c1188j5 = this.mAdxInfo;
                    if (c1188j5.f30470V == 1 && (i2 = c1188j5.f30473W) > 0) {
                        this.getRewardTime = i2 * 1000;
                    }
                    if (manager.d()) {
                        initVideoView();
                        VolumeChangeObserver volumeChangeObserver = new VolumeChangeObserver(this);
                        this.volumeObserver = volumeChangeObserver;
                        volumeChangeObserver.start(new VolumeChangeObserver.VolumeChangeListener() { // from class: com.fl.saas.adx.base.activity.l
                            @Override // com.fl.saas.adx.base.interfaces.VolumeChangeObserver.VolumeChangeListener
                            public final void onVolumeChanged(int i4, boolean z2) {
                                S2SRewardVideoActivity.d(this.f30134a, i4, z2);
                            }
                        });
                    } else {
                        manager.a(0, getString(R.string.fl_adx_video_not_ready));
                        finishDelayed();
                    }
                    if (this.isWatchMode) {
                        this.rl_progress.setVisibility(8);
                        this.ll_countdown.setVisibility(8);
                        this.ll_watch_tips.setVisibility(0);
                        TextView textView = this.tv_watch_tips;
                        if (textView != null) {
                            textView.setText(getString(R.string.fl_adx_tap_to_browse_full, Integer.valueOf(this.watchTime)));
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            finishDelayed();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            finishDelayed();
        }
    }

    private void initVideoView() {
        if (manager == null || this.mAdxInfo == null) {
            finishDelayed();
            return;
        }
        this.mADImgContainerRelativeLayout.setVisibility(0);
        checkShakeView();
        this.signUrlWebView.setEnableQuickApp(QuickAppHelper.getInstance().enableQuickApp(this.mAdxInfo.f30511i));
        this.signUrlWebView.setStatusListener(new AnonymousClass1());
        this.mIsSoundEnable = this.mAdxInfo.f30450O0 == 2;
        currentTime = -1;
        C1230x.a().a(this.mAdxInfo, manager.c());
        pS0();
        CountDownTimer countDownTimer = new CountDownTimer(2000L, 2000L) { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.2
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (S2SRewardVideoActivity.this.progressDialog == null || S2SRewardVideoActivity.this.progressDialog.getVisibility() != 0) {
                    return;
                }
                if (S2SRewardVideoActivity.this.mCloseImageView != null) {
                    S2SRewardVideoActivity.this.mCloseImageView.setVisibility(0);
                }
                if (S2SRewardVideoActivity.manager != null) {
                    S2SRewardVideoActivity.manager.a(0, S2SRewardVideoActivity.this.getString(R.string.fl_adx_video_load_timeout));
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }
        };
        this.mTimer = countDownTimer;
        countDownTimer.start();
        if (TextUtils.isEmpty(this.mAdxInfo.f30546t1)) {
            ProgressBar progressBar = this.progressDialog;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            if (this.isPreviewMode) {
                this.fl_media_view.setVisibility(8);
                this.signUrlWebView.setVisibility(0);
                this.signUrlWebView.loadUrl(this.mAdxInfo.f30557x0);
            }
            this.isVideo = false;
            if (!this.isPreviewMode) {
                this.getRewardTime = this.mAdxInfo.f30461S * 1000;
            }
            if ("A".equals(this.mAdxInfo.f30476X)) {
                this.canAutoClick = true;
                int i2 = this.mAdxInfo.f30461S;
                if (i2 > 5) {
                    this.autoClickTime = 5.0d;
                    this.autoClickStartTime = i2 - 5;
                } else {
                    this.autoClickTime = i2;
                    this.autoClickStartTime = 0;
                }
            }
            if (TextUtils.isEmpty(this.mAdxInfo.f30534p1)) {
                N0 n02 = manager;
                if (n02 != null) {
                    n02.a(0, getString(R.string.fl_adx_video_address_empty));
                }
                this.mCloseImageView.setVisibility(0);
            } else {
                FLImageLoader.getInstance(this).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.mImageView, this.mAdxInfo.f30534p1);
                try {
                    this.mImageView.setVisibility(0);
                    this.mSurfaceView.setVisibility(8);
                    this.mDurationCountdownTextView.setVisibility(8);
                    this.mSoundImageView.setVisibility(8);
                    this.mCloseImageView.setVisibility(8);
                    this.mSkipTextView.setVisibility(8);
                    startDurationCountdown();
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
            }
        } else {
            if (this.isPreviewMode) {
                this.fl_media_view.setVisibility(0);
                this.signUrlWebView.setVisibility(0);
                this.signUrlWebView.loadUrl(this.mAdxInfo.f30557x0);
            }
            this.isVideo = true;
            this.mImageView.setVisibility(8);
            this.mSurfaceView.setVisibility(0);
            final String strA = C1184h1.a().a(this, new C1181g1(AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE, this.mAdxInfo.f30546t1));
            if (this.mediaPlayer == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.mediaPlayer = mediaPlayer;
                mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.fl.saas.adx.base.activity.f
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer2) {
                        S2SRewardVideoActivity.h(this.f30125b, mediaPlayer2);
                    }
                });
                this.mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.fl.saas.adx.base.activity.g
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public final boolean onError(MediaPlayer mediaPlayer2, int i3, int i4) {
                        return S2SRewardVideoActivity.b(this.f30126b, mediaPlayer2, i3, i4);
                    }
                });
                this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.fl.saas.adx.base.activity.h
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer2) {
                        S2SRewardVideoActivity.f(this.f30127b, mediaPlayer2);
                    }
                });
            }
            SurfaceView surfaceView = this.mSurfaceView;
            if (surfaceView != null) {
                surfaceView.setZOrderOnTop(false);
                this.mSurfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.3
                    @Override // android.view.SurfaceHolder.Callback
                    public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i3, int i4, int i5) {
                    }

                    @Override // android.view.SurfaceHolder.Callback
                    public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                        try {
                            LogcatUtil.d("FLSDK", "surfaceCreated");
                            if (S2SRewardVideoActivity.this.mediaPlayer != null && surfaceHolder != null) {
                                S2SRewardVideoActivity.this.mediaPlayer.setSurface(surfaceHolder.getSurface());
                                S2SRewardVideoActivity.this.mediaPlayer.setDisplay(surfaceHolder);
                            }
                            if (!S2SRewardVideoActivity.this.mIsFirstCreateSurfaceView) {
                                LogcatUtil.d("FLSDK", "restart");
                                S2SRewardVideoActivity.this.resumeVideo();
                                return;
                            }
                            S2SRewardVideoActivity.this.mIsFirstCreateSurfaceView = false;
                            LogcatUtil.d("FLSDK", "surfaceFirstCreate");
                            if (S2SRewardVideoActivity.this.mediaPlayer != null) {
                                LogcatUtil.d("FLSDK", "beforePrepare");
                                S2SRewardVideoActivity.this.mediaPlayer.setDataSource(strA);
                                S2SRewardVideoActivity.this.mediaPlayer.prepareAsync();
                                LogcatUtil.d("FLSDK", "startPrepare");
                            }
                        } catch (Throwable th2) {
                            LogcatUtil.d("FLSDK", "setSourceError" + th2.getMessage());
                            LogcatUtil.debug(th2);
                        }
                    }

                    @Override // android.view.SurfaceHolder.Callback
                    public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
                        if (S2SRewardVideoActivity.this.mediaPlayer != null) {
                            S2SRewardVideoActivity.this.mediaPlayer.setSurface(null);
                            S2SRewardVideoActivity.this.mediaPlayer.setDisplay(null);
                        }
                        S2SRewardVideoActivity.this.pauseVideo();
                    }
                });
            }
        }
        this.logoImageView = (ImageView) findViewById(R.id.fl_activity_reward_video_adinfo_logo_imageview);
        TextView textView = (TextView) findViewById(R.id.fl_activity_reward_video_adinfo_title_textview);
        TextView textView2 = (TextView) findViewById(R.id.fl_activity_reward_video_adinfo_desc_textview);
        TextView textView3 = (TextView) findViewById(R.id.fl_activity_reward_video_adinfo_button);
        String str = !TextUtils.isEmpty(this.mAdxInfo.f30558x1) ? this.mAdxInfo.f30558x1 : !TextUtils.isEmpty(this.mAdxInfo.f30534p1) ? this.mAdxInfo.f30534p1 : null;
        if (TextUtils.isEmpty(str)) {
            this.logoImageView.setVisibility(8);
        } else {
            FLImageLoader.getInstance(this).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.logoImageView, str, new FLImageLoader.OnImageLoadListener() { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.4
                @Override // com.fl.saas.adx.util.FLImageLoader.OnImageLoadListener
                public void onError(String str2, String str3) {
                }

                @Override // com.fl.saas.adx.util.FLImageLoader.OnImageLoadListener
                public void onSuccess(String str2, Bitmap bitmap, boolean z2) {
                    try {
                        if (S2SRewardVideoActivity.this.logoImageView != null) {
                            S2SRewardVideoActivity.this.logoImageView.setVisibility(0);
                        }
                    } catch (Throwable th2) {
                        LogcatUtil.debug(th2);
                    }
                }
            });
        }
        textView.setText(this.mAdxInfo.f30530o0);
        textView2.setText(this.mAdxInfo.f30543s1);
        String string = this.mAdxInfo.f30453P0.f30577e;
        if (TextUtils.isEmpty(string)) {
            string = getString(R.string.fl_adx_learn_more);
        }
        textView3.setText(string);
    }

    private void initViews() {
        try {
            this.tv_has_reward = (TextView) findViewById(R.id.tv_has_reward);
            ProgressBar progressBar = (ProgressBar) findViewById(R.id.s2s_activity_progress_bar);
            this.progressDialog = progressBar;
            progressBar.setVisibility(0);
            this.mSurfaceView = (SurfaceView) findViewById(R.id.fl_activity_reward_video_surfaceview);
            this.fl_media_view = (FrameLayout) findViewById(R.id.fl_media_view);
            this.signUrlWebView = (SignUrlWebView) findViewById(R.id.fl_webview);
            this.rl_progress = (RelativeLayout) findViewById(R.id.rl_progress);
            this.complete_progressBar = (ProgressBar) findViewById(R.id.complete_progressBar);
            this.tv_progress_tips = (TextView) findViewById(R.id.tv_progress_tips);
            this.ll_countdown = (LinearLayout) findViewById(R.id.ll_countdown);
            this.ll_watch_tips = (LinearLayout) findViewById(R.id.ll_watch_tips);
            this.tv_watch_tips = (TextView) findViewById(R.id.tv_watch_tips);
            this.mImageView = (ImageView) findViewById(R.id.fl_activity_reward_video_imageview);
            this.mRewardTipsView = (LinearLayout) findViewById(R.id.fl_activity_reward_video_reward_tips);
            this.mAutoClickView = (ViewGroup) findViewById(R.id.fl_activity_reward_video_auto_click);
            this.mAutoClickTimeView = (TextView) findViewById(R.id.fl_activity_reward_video_auto_click_time);
            this.mAutoClickCloseView = (TextView) findViewById(R.id.fl_activity_reward_video_auto_click_close);
            this.mCloseImageView = (ImageView) findViewById(R.id.fl_activity_reward_video_close_imageview);
            this.mSkipTextView = (TextView) findViewById(R.id.fl_activity_reward_video_skip_textview);
            this.mDurationCountdownTextView = (TextView) findViewById(R.id.fl_activity_reward_video_duration_countdown_textview);
            this.mSoundImageView = (ImageView) findViewById(R.id.fl_activity_reward_video_sound);
            this.mADImgContainerRelativeLayout = (RelativeLayout) findViewById(R.id.fl_activity_reward_video_adinfo_container_relativelayout);
            this.ll_shake = (LinearLayout) findViewById(R.id.ll_shake);
            this.yd_shake_view = (ShakeView) findViewById(R.id.yd_shake_view);
            this.mSkipTextView.setOnClickListener(this);
            this.mSoundImageView.setOnClickListener(this);
            this.mCloseImageView.setOnClickListener(this);
            this.mAutoClickCloseView.setOnClickListener(this);
            setClickListener(this.mADImgContainerRelativeLayout);
            setClickListener(this.mRewardTipsView);
            setClickListener(this.ll_shake);
            this.mCloseImageView.setVisibility(8);
            this.mSkipTextView.setVisibility(8);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public static /* synthetic */ void j(S2SRewardVideoActivity s2SRewardVideoActivity) {
        MediaPlayer mediaPlayer;
        s2SRewardVideoActivity.getClass();
        try {
            s2SRewardVideoActivity.skipDialogIsShow = false;
            if (s2SRewardVideoActivity.isVideo && (mediaPlayer = s2SRewardVideoActivity.mediaPlayer) != null) {
                mediaPlayer.stop();
            }
            s2SRewardVideoActivity.mDurationCountdownTextView.setVisibility(8);
            s2SRewardVideoActivity.mSoundImageView.setVisibility(8);
            s2SRewardVideoActivity.mCloseImageView.setVisibility(0);
            s2SRewardVideoActivity.mSkipTextView.setVisibility(8);
            C1230x.a().c(s2SRewardVideoActivity.mAdxInfo, s2SRewardVideoActivity.videoDuration);
            N0 n02 = manager;
            if (n02 != null) {
                n02.f();
            }
            s2SRewardVideoActivity.finish();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jump() {
        try {
            this.fC0 = true;
            pC0();
            if (manager != null) {
                if (this.isWatchMode) {
                    this.hasClick = true;
                    J.b().a(0L);
                }
                this.hasJump = true;
                this.canAutoClick = false;
                this.hasRefuseJump = true;
                C1188j c1188j = this.mAdxInfo;
                c1188j.f30537q1 = AbstractC1162b.a(c1188j);
                C1230x.a().c(this.mAdxInfo);
                C1224v.b().b(this, this.mAdxInfo);
                manager.e();
                if (this.canClickReward) {
                    checkReward();
                }
                LinearLayout linearLayout = this.mRewardTipsView;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                ViewGroup viewGroup = this.mAutoClickView;
                if (viewGroup != null) {
                    viewGroup.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.ll_shake;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                ShakeView shakeView = this.yd_shake_view;
                if (shakeView != null) {
                    shakeView.setCallback(true);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void pAcD() {
        Runnable runnable;
        if (this.fC0 || this.fE0 || this.fP0 || (runnable = this.mR0) == null) {
            return;
        }
        long j2 = this.tT0 - this.tE1;
        if (j2 <= 0) {
            eAcT();
        } else {
            DeviceUtil.removePostUI(runnable);
            DeviceUtil.postUIDelayed(j2, this.mR0);
        }
    }

    private void pAcP() {
        Runnable runnable;
        if (this.fC0 || this.fE0 || this.fP0 || (runnable = this.mR0) == null) {
            return;
        }
        this.fP0 = true;
        DeviceUtil.removePostUI(runnable);
        this.tE1 += System.currentTimeMillis() - this.tS1;
        eSx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pAcRs() {
        if (this.fC0 || this.fE0 || this.mR0 == null || !this.fP0) {
            return;
        }
        this.fP0 = false;
        this.tS1 = System.currentTimeMillis();
        sSx();
        pAcD();
    }

    private void pC0() {
        this.tT0 = 0L;
        this.tE1 = 0L;
        this.fP0 = false;
        Runnable runnable = this.mR0;
        if (runnable != null) {
            DeviceUtil.removePostUI(runnable);
            this.mR0 = null;
        }
        eSx();
        C1168c1 c1168c1 = this.mSx;
        if (c1168c1 != null) {
            c1168c1.c();
            this.mSx = null;
        }
    }

    private void pJ0() {
        pJ01(gVx(), gVy(), gVz());
    }

    private void pJ01(float f2, float f3, float f4) {
        C1188j c1188j = this.mAdxInfo;
        if (c1188j == null || manager == null) {
            return;
        }
        if (f2 == 0.0f || f3 == 0.0f || f4 == 0.0f) {
            c1188j.f30445M1 = -999;
            c1188j.f30448N1 = -999;
            c1188j.f30451O1 = -999;
            c1188j.f30421E1 = c1188j.C2;
            c1188j.f30424F1 = c1188j.D2;
            c1188j.f30427G1 = c1188j.E2;
            c1188j.f30430H1 = c1188j.F2;
            c1188j.f30433I1 = c1188j.G2;
            c1188j.f30436J1 = c1188j.H2;
            c1188j.f30439K1 = c1188j.I2;
            c1188j.f30442L1 = c1188j.J2;
            long jCurrentTimeMillis = System.currentTimeMillis();
            C1188j c1188j2 = this.mAdxInfo;
            c1188j2.f30463S1 = jCurrentTimeMillis;
            c1188j2.f30460R1 = jCurrentTimeMillis - c1188j2.K2;
        } else {
            c1188j.f30421E1 = -999;
            c1188j.f30424F1 = -999;
            c1188j.f30433I1 = -999;
            c1188j.f30436J1 = -999;
            c1188j.f30427G1 = -999;
            c1188j.f30430H1 = -999;
            c1188j.f30439K1 = -999;
            c1188j.f30442L1 = -999;
            c1188j.f30445M1 = Math.round(f2 * 100.0f);
            this.mAdxInfo.f30448N1 = Math.round(f3 * 100.0f);
            this.mAdxInfo.f30451O1 = Math.round(f4 * 100.0f);
            this.mAdxInfo.k2 = C1188j.b.SHAKE;
        }
        this.mAdxInfo.L2 = 1;
        jump();
        this.mAdxInfo.L2 = 0;
    }

    private void pS0() {
        try {
            C1188j c1188j = this.mAdxInfo;
            if (c1188j != null && c1188j.b() && !this.fC0 && !this.fE0) {
                pC0();
                sSx();
                this.tT0 = this.mAdxInfo.B2;
                this.tE1 = 0L;
                this.tS1 = System.currentTimeMillis();
                this.fP0 = false;
                this.mR0 = new Runnable() { // from class: com.fl.saas.adx.base.activity.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f30124b.eAcT();
                    }
                };
                if (this.mIsCurrentPage) {
                    pAcD();
                } else {
                    this.fP0 = true;
                    eSx();
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void pauseDurationCountdown() {
        Handler handler = this.mDurationCountdownHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseVideo() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                currentTime = mediaPlayer.getCurrentPosition();
                this.mediaPlayer.pause();
                if (this.isPlaying) {
                    this.isPlaying = false;
                    C1230x.a().l(this.mAdxInfo);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playEnd(int i2) {
        try {
            FLCommonDialog fLCommonDialog = this.skipDialog;
            if (fLCommonDialog != null && fLCommonDialog.isShowing()) {
                this.skipDialog.dismiss();
            }
            this.mIsVideoCompleted = true;
            if (i2 == 1) {
                checkReward();
            }
            C1188j c1188j = this.mAdxInfo;
            c1188j.f30478X1 = this.videoDuration / 1000;
            c1188j.f30484Z1 = this.curPosition / 1000;
            c1188j.c2 = 2;
            c1188j.f30492b2 = i2;
            C1230x.a().j(this.mAdxInfo);
            C1230x.a().b(this.mAdxInfo, this.videoDuration);
            if (!this.isWatchMode && !this.isPreviewMode && !this.hasJump && i2 == 1 && "A".equals(this.mAdxInfo.f30476X) && !this.hasRefuseJump) {
                jump();
            }
            N0 n02 = manager;
            if (n02 != null) {
                n02.g();
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeVideo() throws IllegalStateException {
        MediaPlayer mediaPlayer;
        int duration;
        if (this.mIsVideoCompleted && (mediaPlayer = this.mediaPlayer) != null && this.mIsVideoPrepared && (duration = mediaPlayer.getDuration()) > 0) {
            this.mediaPlayer.seekTo(duration);
            this.mediaPlayer.pause();
        }
        MediaPlayer mediaPlayer2 = this.mediaPlayer;
        if (mediaPlayer2 == null || !this.mIsVideoPrepared || this.mIsVideoCompleted) {
            return;
        }
        if (this.skipDialogIsShow) {
            mediaPlayer2.seekTo(currentTime);
            this.mediaPlayer.pause();
            return;
        }
        if (currentTime > 0) {
            if (Build.VERSION.SDK_INT >= 26) {
                mediaPlayer2.seekTo(currentTime, 3);
            } else {
                mediaPlayer2.seekTo(currentTime);
            }
        }
        changeSurfaceViewSize();
        this.mediaPlayer.start();
        C1188j c1188j = this.mAdxInfo;
        if (c1188j != null) {
            c1188j.d2 = 2;
        }
        if (this.isPlaying) {
            return;
        }
        this.isPlaying = true;
        C1230x.a().h(this.mAdxInfo);
    }

    private void sSx() {
        C1188j c1188j = this.mAdxInfo;
        if (c1188j == null || !c1188j.t()) {
            return;
        }
        gSx().b();
    }

    public static void setAdInfo(N0 n02) {
        manager = n02;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setClickListener(View view) {
        if (view != null) {
            ViewHelper.onSingleClickListener(view, this);
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.fl.saas.adx.base.activity.d
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return S2SRewardVideoActivity.e(this.f30123b, view2, motionEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDurationCountdown(long j2) {
        int i2;
        String string;
        if (j2 < 0) {
            j2 = 0;
        }
        try {
            int intExact = Math.toIntExact(j2 / 1000);
            TextView textView = this.mDurationCountdownTextView;
            if (textView != null) {
                if (this.hasReward) {
                    textView.setVisibility(8);
                } else {
                    if (intExact == 0) {
                        checkReward();
                        textView = this.mDurationCountdownTextView;
                        string = getString(R.string.fl_adx_reward_claimed);
                    } else {
                        string = getString(R.string.fl_adx_your_reward_unlocks_in, Integer.valueOf(intExact));
                    }
                    textView.setText(string);
                    this.mDurationCountdownTextView.setVisibility(0);
                }
            }
            if (this.tv_progress_tips != null) {
                if (this.hasReward) {
                    this.complete_progressBar.setProgress(100);
                    this.tv_progress_tips.setText(getString(R.string.fl_adx_task_complete_multiline));
                    this.tv_has_reward.setVisibility(0);
                    this.mRewardTipsView.setVisibility(8);
                    this.mSkipTextView.setVisibility(8);
                    this.mCloseImageView.setVisibility(0);
                    this.mDurationCountdownTextView.setVisibility(8);
                    this.mAutoClickView.setVisibility(8);
                } else if (intExact == 0) {
                    this.complete_progressBar.setProgress(100);
                } else {
                    if (this.complete_progressBar != null && (i2 = this.getRewardTime) > 0) {
                        this.complete_progressBar.setProgress(100 - Math.toIntExact((j2 * 100) / i2));
                    }
                    this.tv_progress_tips.setText(getString(R.string.fl_adx_swipe_and_explore_for, Integer.valueOf(intExact)));
                }
            }
            ImageView imageView = this.mSoundImageView;
            if (imageView != null && this.isVideo && !this.mIsVideoCompleted) {
                imageView.setVisibility(0);
            }
            if (this.isPreviewMode && !this.mCanScroll && this.signUrlWebView.canScroll()) {
                this.mCanScroll = true;
                this.previewCanContinue = false;
                this.tv_progress_tips.setText(getString(R.string.fl_adx_continue_scrolling_to_get));
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void startDurationCountdown() {
        Handler handler = this.mDurationCountdownHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mDurationCountdownHandler.post(new Runnable() { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.5
                /* JADX WARN: Removed duplicated region for block: B:148:0x036d A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:2:0x0000, B:4:0x0008, B:16:0x002f, B:18:0x0039, B:19:0x003f, B:21:0x0043, B:23:0x004e, B:25:0x0056, B:27:0x005e, B:29:0x0066, B:31:0x006e, B:33:0x007e, B:35:0x008a, B:36:0x00ab, B:38:0x00c2, B:39:0x00cb, B:41:0x00d3, B:42:0x00f1, B:44:0x00fa, B:46:0x0102, B:48:0x010e, B:50:0x0127, B:52:0x012f, B:54:0x0140, B:56:0x0148, B:59:0x015e, B:61:0x0166, B:64:0x017c, B:66:0x0184, B:67:0x0196, B:69:0x01a0, B:71:0x01b6, B:73:0x01c0, B:75:0x01d2, B:77:0x01da, B:79:0x01e2, B:80:0x01e4, B:88:0x0203, B:81:0x01e9, B:82:0x01eb, B:91:0x020a, B:83:0x01f0, B:85:0x01f8, B:87:0x0200, B:90:0x0207, B:93:0x020e, B:95:0x0216, B:97:0x021e, B:99:0x0226, B:101:0x0232, B:107:0x0271, B:114:0x02a7, B:116:0x02af, B:150:0x0384, B:152:0x039a, B:154:0x03a4, B:156:0x03b6, B:158:0x03be, B:160:0x03c6, B:161:0x03c8, B:169:0x03e7, B:162:0x03cd, B:163:0x03cf, B:171:0x03ee, B:164:0x03d4, B:166:0x03dc, B:168:0x03e4, B:170:0x03eb, B:172:0x03f1, B:176:0x03ff, B:178:0x0407, B:179:0x040f, B:181:0x041c, B:183:0x0424, B:185:0x042e, B:187:0x0438, B:189:0x044a, B:191:0x0457, B:194:0x0464, B:196:0x046c, B:198:0x0479, B:199:0x0494, B:201:0x049c, B:202:0x04a2, B:204:0x04a9, B:208:0x04b3, B:118:0x02bd, B:121:0x02d0, B:123:0x02da, B:125:0x02e4, B:127:0x02f2, B:129:0x0301, B:130:0x030d, B:131:0x0318, B:133:0x0320, B:135:0x0328, B:137:0x0330, B:138:0x0332, B:141:0x0342, B:139:0x0337, B:142:0x0345, B:144:0x0350, B:146:0x035e, B:148:0x036d, B:149:0x0379, B:140:0x033f, B:102:0x024a, B:104:0x0252, B:106:0x025a, B:108:0x0275, B:110:0x027d, B:111:0x0288, B:113:0x0290, B:9:0x0015, B:11:0x001d, B:13:0x0025), top: B:212:0x0000 }] */
                /* JADX WARN: Removed duplicated region for block: B:149:0x0379 A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:2:0x0000, B:4:0x0008, B:16:0x002f, B:18:0x0039, B:19:0x003f, B:21:0x0043, B:23:0x004e, B:25:0x0056, B:27:0x005e, B:29:0x0066, B:31:0x006e, B:33:0x007e, B:35:0x008a, B:36:0x00ab, B:38:0x00c2, B:39:0x00cb, B:41:0x00d3, B:42:0x00f1, B:44:0x00fa, B:46:0x0102, B:48:0x010e, B:50:0x0127, B:52:0x012f, B:54:0x0140, B:56:0x0148, B:59:0x015e, B:61:0x0166, B:64:0x017c, B:66:0x0184, B:67:0x0196, B:69:0x01a0, B:71:0x01b6, B:73:0x01c0, B:75:0x01d2, B:77:0x01da, B:79:0x01e2, B:80:0x01e4, B:88:0x0203, B:81:0x01e9, B:82:0x01eb, B:91:0x020a, B:83:0x01f0, B:85:0x01f8, B:87:0x0200, B:90:0x0207, B:93:0x020e, B:95:0x0216, B:97:0x021e, B:99:0x0226, B:101:0x0232, B:107:0x0271, B:114:0x02a7, B:116:0x02af, B:150:0x0384, B:152:0x039a, B:154:0x03a4, B:156:0x03b6, B:158:0x03be, B:160:0x03c6, B:161:0x03c8, B:169:0x03e7, B:162:0x03cd, B:163:0x03cf, B:171:0x03ee, B:164:0x03d4, B:166:0x03dc, B:168:0x03e4, B:170:0x03eb, B:172:0x03f1, B:176:0x03ff, B:178:0x0407, B:179:0x040f, B:181:0x041c, B:183:0x0424, B:185:0x042e, B:187:0x0438, B:189:0x044a, B:191:0x0457, B:194:0x0464, B:196:0x046c, B:198:0x0479, B:199:0x0494, B:201:0x049c, B:202:0x04a2, B:204:0x04a9, B:208:0x04b3, B:118:0x02bd, B:121:0x02d0, B:123:0x02da, B:125:0x02e4, B:127:0x02f2, B:129:0x0301, B:130:0x030d, B:131:0x0318, B:133:0x0320, B:135:0x0328, B:137:0x0330, B:138:0x0332, B:141:0x0342, B:139:0x0337, B:142:0x0345, B:144:0x0350, B:146:0x035e, B:148:0x036d, B:149:0x0379, B:140:0x033f, B:102:0x024a, B:104:0x0252, B:106:0x025a, B:108:0x0275, B:110:0x027d, B:111:0x0288, B:113:0x0290, B:9:0x0015, B:11:0x001d, B:13:0x0025), top: B:212:0x0000 }] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 1215
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.AnonymousClass5.run():void");
                }
            });
        }
    }

    private void startVideo() throws IllegalStateException {
        if (this.mediaPlayer != null) {
            changeSurfaceViewSize();
            ProgressBar progressBar = this.progressDialog;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
            this.mediaPlayer.start();
            startDurationCountdown();
        }
    }

    public boolean getSoundEnableStatus() {
        return this.mIsSoundEnable;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MediaPlayer mediaPlayer;
        int id = view.getId();
        if (id == R.id.fl_activity_reward_video_close_imageview) {
            C1230x.a().a(this.mAdxInfo, this.videoDuration);
            N0 n02 = manager;
            if (n02 != null) {
                n02.f();
            }
            finish();
            return;
        }
        if (id != R.id.fl_activity_reward_video_skip_textview) {
            if (id == R.id.fl_activity_reward_video_adinfo_container_relativelayout || id == R.id.ll_shake || id == R.id.fl_activity_reward_video_reward_tips) {
                jump();
                return;
            }
            if (id == R.id.fl_activity_reward_video_sound) {
                if (this.systemMute) {
                    return;
                }
                setSoundEnable(!getSoundEnableStatus());
                return;
            } else {
                if (id == R.id.fl_activity_reward_video_auto_click_close) {
                    ViewGroup viewGroup = this.mAutoClickView;
                    if (viewGroup != null) {
                        viewGroup.setVisibility(8);
                    }
                    this.canAutoClick = false;
                    this.hasRefuseJump = true;
                    return;
                }
                return;
            }
        }
        try {
            if (!this.hasReward) {
                if (this.skipDialog == null) {
                    this.skipDialog = new FLCommonDialog(this).setContent(getString(R.string.fl_adx_skipping_at_this)).setCanDismiss(false).setOnCancleListener(new FLCommonDialog.OnCancleListener() { // from class: com.fl.saas.adx.base.activity.S2SRewardVideoActivity.7
                        @Override // com.fl.saas.adx.base.widget.FLCommonDialog.OnCancleListener
                        public void onClick() throws IllegalStateException {
                            S2SRewardVideoActivity.this.skipDialogIsShow = false;
                            S2SRewardVideoActivity.this.resumeVideo();
                            S2SRewardVideoActivity.this.pAcRs();
                        }
                    }).setOnSubmitListener(new FLCommonDialog.OnSubmitListener() { // from class: com.fl.saas.adx.base.activity.k
                        @Override // com.fl.saas.adx.base.widget.FLCommonDialog.OnSubmitListener
                        public final void onClick() {
                            S2SRewardVideoActivity.j(this.f30133a);
                        }
                    });
                }
                pauseVideo();
                this.skipDialog.show();
                this.skipDialogIsShow = true;
                pAcP();
                return;
            }
            if (this.isVideo && (mediaPlayer = this.mediaPlayer) != null) {
                mediaPlayer.stop();
            }
            this.mDurationCountdownTextView.setVisibility(8);
            this.mCloseImageView.setVisibility(0);
            this.mSkipTextView.setVisibility(8);
            C1230x.a().c(this.mAdxInfo, this.videoDuration);
            playEnd(0);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int intExtra = 0;
        try {
            K.a(this);
            K.a(this, false);
            intExtra = getIntent().getIntExtra("draw_type", 0);
            if (intExtra == 1) {
                setRequestedOrientation(6);
            } else {
                setRequestedOrientation(7);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        super.onCreate(bundle);
        setContentView(intExtra == 1 ? R.layout.fl_adx_activity_land_reward_video : R.layout.fl_adx_activity_reward_video);
        initViews();
        initDatas();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        try {
            C1224v.b().a();
            VolumeChangeObserver volumeChangeObserver = this.volumeObserver;
            if (volumeChangeObserver != null) {
                volumeChangeObserver.stop();
                this.volumeObserver = null;
            }
            this.logoImageView = null;
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setSurface(null);
                this.mediaPlayer.setDisplay(null);
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            }
            FLCommonDialog fLCommonDialog = this.skipDialog;
            if (fLCommonDialog != null) {
                if (fLCommonDialog.isShowing()) {
                    this.skipDialog.dismiss();
                }
                this.skipDialog = null;
            }
            CountDownTimer countDownTimer = this.mTimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.mTimer = null;
            }
            SignUrlWebView signUrlWebView = this.signUrlWebView;
            if (signUrlWebView != null) {
                signUrlWebView.stopLoading();
                this.signUrlWebView.removeAllViews();
                this.signUrlWebView.setWebViewClient(null);
                this.signUrlWebView.setWebChromeClient(null);
                this.signUrlWebView.destroy();
                this.signUrlWebView = null;
            }
            pauseDurationCountdown();
            pC0();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyDown(i2, keyEvent);
        }
        SignUrlWebView signUrlWebView = this.signUrlWebView;
        if (signUrlWebView == null || !signUrlWebView.canGoBack()) {
            return true;
        }
        this.signUrlWebView.goBack();
        return true;
    }

    @Override // android.app.Activity
    public void onPause() throws IllegalStateException {
        super.onPause();
        this.mIsCurrentPage = false;
        pAcP();
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            return;
        }
        this.mediaPlayer.pause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            this.mIsCurrentPage = true;
            if (!this.skipDialogIsShow) {
                pAcRs();
            }
            if (!this.mIsFirstCreateSurfaceView) {
                resumeVideo();
            }
            if (this.isWatchMode && this.hasClick) {
                int intExact = Math.toIntExact(J.b().a() / 1000);
                J.b().a(0L);
                if (intExact <= 0) {
                    Toast.makeText(getApplicationContext(), getString(R.string.fl_adx_browse_inside_the_app, Integer.valueOf(this.watchTime)), 0).show();
                    return;
                }
                int i2 = this.watchTime;
                if (intExact >= i2) {
                    this.isWatchMode = false;
                    TextView textView = this.tv_watch_tips;
                    if (textView != null) {
                        textView.setText(getString(R.string.fl_adx_task_complete));
                    }
                    checkReward();
                    return;
                }
                this.watchTime = i2 - intExact;
                Toast.makeText(getApplicationContext(), getString(R.string.fl_adx_keep_browsing_for, Integer.valueOf(this.watchTime)), 0).show();
                TextView textView2 = this.tv_watch_tips;
                if (textView2 != null) {
                    textView2.setText(getString(R.string.fl_adx_tap_to_proceed, Integer.valueOf(this.watchTime)));
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void setSoundEnable(boolean z2) {
        ImageView imageView;
        int i2;
        this.mIsSoundEnable = z2;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (z2) {
                mediaPlayer.setVolume(1.0f, 1.0f);
                imageView = this.mSoundImageView;
                if (imageView != null) {
                    i2 = R.drawable.fl_adx_volume_on;
                    imageView.setImageResource(i2);
                }
            } else {
                mediaPlayer.setVolume(0.0f, 0.0f);
                if (this.mSoundImageView != null) {
                    C1230x.a().k(this.mAdxInfo);
                    imageView = this.mSoundImageView;
                    i2 = R.drawable.fl_adx_volume_off;
                    imageView.setImageResource(i2);
                }
            }
            if (((AudioManager) getSystemService(MediaFormat.KEY_AUDIO)).getStreamVolume(3) == 0) {
                this.systemMute = true;
                ImageView imageView2 = this.mSoundImageView;
                if (imageView2 != null) {
                    imageView2.setImageResource(R.drawable.fl_adx_volume_off);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }
}
