package com.fl.saas.adx.base.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.fl.saas.C1172d1;
import com.fl.saas.C1181g1;
import com.fl.saas.C1184h1;
import com.fl.saas.C1188j;
import com.fl.saas.C1230x;
import com.fl.saas.R;
import com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener;
import com.fl.saas.adx.base.interfaces.S2SVideoPlayListener;
import com.fl.saas.adx.base.interfaces.VolumeChangeObserver;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.LogcatUtil;
import com.fl.saas.adx.util.ViewHelper;
import com.kwad.sdk.collector.AppStatusRules;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class S2SVideoView extends FrameLayout implements VideoSoundControlListener {
    public static final int MSG_AD_VISIBLE_CHECK = 11000;
    private int currentTime;
    private RelativeLayout endFrameView;
    private ImageView firstFrameView;
    private boolean hasChangeTextureViewSize;
    private boolean isDestroyed;
    private boolean isPlayError;
    private C1188j mAdxInfo;
    private final Context mContext;
    private final Handler mDurationCountdownHandler;
    private SafeHandler mHandler;
    private boolean mIs25Preent;
    private boolean mIs50Preent;
    private boolean mIs75Preent;
    private boolean mIsCallPlay;
    private boolean mIsFirstCreateTextureView;
    private boolean mIsSoundEnable;
    private boolean mIsTextureViewAvailable;
    private boolean mIsVideoCompleted;
    private boolean mIsVideoPrepared;
    private S2SVideoPlayListener mPlayListener;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private MediaPlayer mediaPlayer;
    private ProgressBar progressBar;
    private int soundBottom;
    private ImageView soundControlImageView;
    private int soundHeight;
    private boolean soundImageGone;
    private int soundLeft;
    private int soundRight;
    private int soundTop;
    private int soundWidth;
    private boolean systemMute;
    private TextView textView;
    private TextureView textureView;
    private TextView tvBtn;
    private VideoSoundControlListener.SoundControlViewStateChangeListener viewStateChangeListener;
    private VolumeChangeObserver volumeObserver;

    public static class SafeHandler extends Handler {
        private final WeakReference<S2SVideoView> mVideoViewRef;

        public SafeHandler(S2SVideoView s2SVideoView) {
            super(Looper.getMainLooper());
            this.mVideoViewRef = new WeakReference<>(s2SVideoView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            S2SVideoView s2SVideoView = this.mVideoViewRef.get();
            if (s2SVideoView == null || s2SVideoView.isDestroyed || message.what != 11000) {
                return;
            }
            if (s2SVideoView.checkViewVisible()) {
                s2SVideoView.startVideo((s2SVideoView.mAdxInfo == null || s2SVideoView.mAdxInfo.a()) ? false : true);
            } else {
                sendEmptyMessageDelayed(S2SVideoView.MSG_AD_VISIBLE_CHECK, 500L);
            }
        }
    }

    public S2SVideoView(@NonNull Context context) {
        super(getAppContext(context));
        this.hasChangeTextureViewSize = false;
        this.currentTime = -1;
        this.mIsCallPlay = false;
        this.mIsVideoPrepared = false;
        this.mIsVideoCompleted = false;
        this.mIsTextureViewAvailable = false;
        this.mIsFirstCreateTextureView = true;
        this.soundImageGone = false;
        this.mIsSoundEnable = false;
        this.mIs25Preent = false;
        this.mIs50Preent = false;
        this.mIs75Preent = false;
        this.isPlayError = false;
        this.isDestroyed = false;
        this.systemMute = false;
        this.soundWidth = 30;
        this.soundHeight = 30;
        this.soundTop = 5;
        this.soundLeft = 5;
        this.soundRight = 5;
        this.soundBottom = 5;
        this.mContext = getAppContext(context);
        this.mHandler = new SafeHandler(this);
        this.mDurationCountdownHandler = new Handler(Looper.getMainLooper());
        setBackgroundColor(-16777216);
    }

    public static /* synthetic */ void a(S2SVideoView s2SVideoView, View view) {
        if (s2SVideoView.systemMute) {
            return;
        }
        s2SVideoView.setSoundEnable(!s2SVideoView.mIsSoundEnable);
    }

    public static /* synthetic */ void b(S2SVideoView s2SVideoView) {
        ImageView imageView = s2SVideoView.firstFrameView;
        if (imageView != null) {
            ViewHelper.removeParent(imageView);
            s2SVideoView.firstFrameView = null;
        }
    }

    public static /* synthetic */ void c(final S2SVideoView s2SVideoView, int i2, final boolean z2) {
        s2SVideoView.getClass();
        DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.widget.i
            @Override // java.lang.Runnable
            public final void run() {
                S2SVideoView.g(this.f30296b, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeTextureViewSize(boolean z2) {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null && !this.isDestroyed && this.textureView != null) {
                if (z2 && this.hasChangeTextureViewSize) {
                    return;
                }
                int videoWidth = mediaPlayer.getVideoWidth();
                int videoHeight = this.mediaPlayer.getVideoHeight();
                int width = getWidth();
                int height = getHeight();
                LogcatUtil.d("FLSDK-S2SVideoView", "changeSize----width:" + videoWidth + "height:" + videoHeight + "viewWidth:" + width + "viewHeight:" + height);
                if (videoWidth <= 0 || videoHeight <= 0 || width <= 0 || height <= 0) {
                    return;
                }
                this.hasChangeTextureViewSize = true;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textureView.getLayoutParams();
                int i2 = videoWidth * height;
                int i3 = videoHeight * width;
                if (i2 > i3) {
                    layoutParams.height = i3 / videoWidth;
                    layoutParams.width = width;
                } else {
                    layoutParams.width = i2 / videoHeight;
                    layoutParams.height = height;
                }
                this.textureView.setLayoutParams(layoutParams);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private boolean checkAreaEffective(Rect rect) {
        try {
            int width = getWidth();
            int height = getHeight();
            if (width > 0 && height > 0) {
                return ((double) (rect.width() * rect.height())) > ((double) (width * height)) * 0.7d;
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkViewVisible() {
        try {
            if (this.isDestroyed) {
                return false;
            }
            Rect rect = new Rect();
            if (getGlobalVisibleRect(rect)) {
                if (checkAreaEffective(rect)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMediaView() {
        if (this.isDestroyed) {
            return;
        }
        this.mIsVideoCompleted = false;
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                if (S2SVideoView.this.isDestroyed) {
                    return;
                }
                S2SVideoView.this.mIsVideoCompleted = true;
                S2SVideoView.this.showEndFrame();
                S2SVideoView.this.mAdxInfo.f30484Z1 = mediaPlayer2.getDuration() / 1000;
                C1230x.a().b(S2SVideoView.this.mAdxInfo, mediaPlayer2.getDuration());
                C1230x.a().j(S2SVideoView.this.mAdxInfo);
                if (S2SVideoView.this.mPlayListener != null) {
                    S2SVideoView.this.mPlayListener.onVideoPlayComplete();
                }
                S2SVideoView.this.releaseSource();
            }
        });
        this.mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer2, int i2, int i3) {
                if (!S2SVideoView.this.isDestroyed && !S2SVideoView.this.isPlayError) {
                    ViewHelper.removeParent(S2SVideoView.this.progressBar);
                    S2SVideoView.this.isPlayError = true;
                    S2SVideoView.this.mAdxInfo.f30484Z1 = mediaPlayer2.getDuration() / 1000;
                    S2SVideoView.this.mAdxInfo.f2 = 2;
                    C1230x.a().j(S2SVideoView.this.mAdxInfo);
                    if (S2SVideoView.this.mPlayListener != null) {
                        S2SVideoView.this.mPlayListener.onVideoPlayError(i2, i3);
                    }
                    S2SVideoView.this.showEndFrame();
                }
                return true;
            }
        });
        this.mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.3
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer2) {
                if (S2SVideoView.this.isDestroyed) {
                    if (mediaPlayer2 != null) {
                        mediaPlayer2.release();
                        return;
                    }
                    return;
                }
                LogcatUtil.d("FLSDK-S2SVideoView", "prepared");
                if (S2SVideoView.this.mPlayListener != null) {
                    S2SVideoView.this.mPlayListener.onVideoPrepare();
                }
                S2SVideoView.this.mIsVideoPrepared = true;
                S2SVideoView.this.mAdxInfo.f30492b2 = 1;
                if (mediaPlayer2 != null && mediaPlayer2.getDuration() > 0) {
                    S2SVideoView.this.mAdxInfo.f30478X1 = mediaPlayer2.getDuration() / 1000;
                }
                S2SVideoView s2SVideoView = S2SVideoView.this;
                s2SVideoView.setSoundEnable(s2SVideoView.mIsSoundEnable);
                if (S2SVideoView.this.mIsVideoCompleted || S2SVideoView.this.mIsCallPlay) {
                    return;
                }
                S2SVideoView s2SVideoView2 = S2SVideoView.this;
                s2SVideoView2.startVideo((s2SVideoView2.mAdxInfo == null || S2SVideoView.this.mAdxInfo.a()) ? false : true);
            }
        });
        this.mediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.4
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i2, int i3) {
                if (S2SVideoView.this.isDestroyed) {
                    return;
                }
                int videoWidth = mediaPlayer2.getVideoWidth();
                int videoHeight = mediaPlayer2.getVideoHeight();
                if (videoWidth == 0 || videoHeight == 0) {
                    return;
                }
                S2SVideoView.this.changeTextureViewSize(false);
            }
        });
        if (DeviceUtil.filling_timing == 1) {
            try {
                this.mediaPlayer.setDataSource(C1184h1.a().a(this.mContext, new C1181g1(AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE, this.mAdxInfo.f30546t1)));
                this.mediaPlayer.prepareAsync();
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public static /* synthetic */ void d(final WeakReference weakReference, C1188j c1188j) {
        S2SVideoView s2SVideoView = (S2SVideoView) weakReference.get();
        if (s2SVideoView == null || s2SVideoView.isDestroyed) {
            return;
        }
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(c1188j.f30546t1, new HashMap());
            final Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            try {
                mediaMetadataRetriever.release();
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
            DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.widget.l
                @Override // java.lang.Runnable
                public final void run() {
                    S2SVideoView.f(weakReference, frameAtTime);
                }
            });
        } catch (Throwable th2) {
            LogcatUtil.debug(th2);
        }
    }

    public static /* synthetic */ void e(S2SVideoView s2SVideoView) {
        if (s2SVideoView.isDestroyed) {
            return;
        }
        C1188j c1188j = s2SVideoView.mAdxInfo;
        s2SVideoView.startVideo((c1188j == null || c1188j.a()) ? false : true);
    }

    public static /* synthetic */ void f(WeakReference weakReference, Bitmap bitmap) {
        ImageView imageView;
        S2SVideoView s2SVideoView = (S2SVideoView) weakReference.get();
        if (s2SVideoView == null || s2SVideoView.isDestroyed) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            bitmap.recycle();
            return;
        }
        if (bitmap == null || (imageView = s2SVideoView.firstFrameView) == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    public static /* synthetic */ void g(S2SVideoView s2SVideoView, boolean z2) {
        ImageView imageView;
        ImageView imageView2;
        VideoSoundControlListener.SoundControlViewStateChangeListener soundControlViewStateChangeListener = s2SVideoView.viewStateChangeListener;
        if (soundControlViewStateChangeListener != null) {
            soundControlViewStateChangeListener.changeSystemSound(z2);
        }
        if (!z2) {
            s2SVideoView.systemMute = false;
            if (!s2SVideoView.mIsSoundEnable || (imageView = s2SVideoView.soundControlImageView) == null) {
                return;
            }
            imageView.setImageResource(R.drawable.fl_adx_volume_on);
            return;
        }
        s2SVideoView.systemMute = true;
        if (!s2SVideoView.mIsSoundEnable || (imageView2 = s2SVideoView.soundControlImageView) == null) {
            return;
        }
        imageView2.setImageResource(R.drawable.fl_adx_volume_off);
        C1230x.a().k(s2SVideoView.mAdxInfo);
    }

    private static Context getAppContext(Context context) {
        return context.getApplicationContext();
    }

    public static /* synthetic */ void h(S2SVideoView s2SVideoView, View view) {
        C1188j c1188j = s2SVideoView.mAdxInfo;
        if (c1188j != null) {
            c1188j.e2 = 2;
        }
        ViewHelper.removeParent(view);
        s2SVideoView.startVideo(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseVideo() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            this.currentTime = this.mediaPlayer.getCurrentPosition();
            this.mediaPlayer.pause();
            C1230x.a().l(this.mAdxInfo);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void registerSound() {
        if (!this.isDestroyed && this.volumeObserver == null) {
            VolumeChangeObserver volumeChangeObserver = new VolumeChangeObserver(this.mContext);
            this.volumeObserver = volumeChangeObserver;
            volumeChangeObserver.start(new VolumeChangeObserver.VolumeChangeListener() { // from class: com.fl.saas.adx.base.widget.h
                @Override // com.fl.saas.adx.base.interfaces.VolumeChangeObserver.VolumeChangeListener
                public final void onVolumeChanged(int i2, boolean z2) {
                    S2SVideoView.c(this.f30295a, i2, z2);
                }
            });
        }
    }

    private void releaseMedia() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                if (mediaPlayer.isPlaying()) {
                    this.mediaPlayer.stop();
                }
                this.mediaPlayer.setSurface(null);
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            }
            MediaMetadataRetriever mediaMetadataRetriever = this.mediaMetadataRetriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Throwable th) {
                    LogcatUtil.debug(th);
                }
                this.mediaMetadataRetriever = null;
            }
            this.mPlayListener = null;
            this.viewStateChangeListener = null;
        } catch (Throwable th2) {
            LogcatUtil.debug(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseSource() {
        try {
            Handler handler = this.mDurationCountdownHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            SafeHandler safeHandler = this.mHandler;
            if (safeHandler != null) {
                safeHandler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeVideo() {
        try {
            C1188j c1188j = this.mAdxInfo;
            if (c1188j == null || c1188j.a() || (this.mAdxInfo.f30438K0 != 3 && "1".equals(DeviceUtil.getNetworkType()))) {
                boolean z2 = this.mIsVideoCompleted;
                if (!z2 && !this.mIsCallPlay && this.mIsVideoPrepared) {
                    DeviceUtil.postUIDelayed(200L, new Runnable() { // from class: com.fl.saas.adx.base.widget.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            S2SVideoView.e(this.f30302b);
                        }
                    });
                    return;
                }
                MediaPlayer mediaPlayer = this.mediaPlayer;
                if (mediaPlayer == null || !this.mIsVideoPrepared) {
                    return;
                }
                if (z2) {
                    int duration = mediaPlayer.getDuration();
                    if (duration > 0) {
                        this.mediaPlayer.seekTo(duration);
                        this.mediaPlayer.pause();
                        return;
                    }
                    return;
                }
                int i2 = this.currentTime;
                if (i2 > 0) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        mediaPlayer.seekTo(i2, 3);
                    } else {
                        mediaPlayer.seekTo(i2);
                    }
                }
                this.mediaPlayer.start();
                registerSound();
                C1188j c1188j2 = this.mAdxInfo;
                if (c1188j2 != null) {
                    c1188j2.d2 = 2;
                }
                C1230x.a().h(this.mAdxInfo);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    private void setTextureView() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        if (this.textureView == null) {
            TextureView textureView = new TextureView(this.mContext);
            this.textureView = textureView;
            textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.5
                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                    if (S2SVideoView.this.isDestroyed) {
                        return;
                    }
                    try {
                        LogcatUtil.d("FLSDK-S2SVideoView", "onSurfaceTextureAvailable");
                        S2SVideoView.this.mIsTextureViewAvailable = true;
                        if (S2SVideoView.this.mediaPlayer == null) {
                            S2SVideoView.this.createMediaView();
                        }
                        if (S2SVideoView.this.mediaPlayer != null && surfaceTexture != null) {
                            S2SVideoView.this.mediaPlayer.setSurface(new Surface(surfaceTexture));
                        }
                        if (!S2SVideoView.this.mIsFirstCreateTextureView) {
                            LogcatUtil.d("FLSDK-S2SVideoView", "restart");
                            S2SVideoView.this.resumeVideo();
                            return;
                        }
                        S2SVideoView.this.mIsFirstCreateTextureView = false;
                        LogcatUtil.d("FLSDK-S2SVideoView", "surfaceFirstCreate");
                        if (S2SVideoView.this.mediaPlayer != null) {
                            LogcatUtil.d("FLSDK-S2SVideoView", "beforePrepare");
                            if (DeviceUtil.filling_timing == 0) {
                                S2SVideoView.this.mediaPlayer.setDataSource(C1184h1.a().a(S2SVideoView.this.mContext, new C1181g1(AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE, S2SVideoView.this.mAdxInfo.f30546t1)));
                                S2SVideoView.this.mediaPlayer.prepareAsync();
                            }
                            LogcatUtil.d("FLSDK-S2SVideoView", "startPrepare");
                        }
                    } catch (Throwable th) {
                        LogcatUtil.d("FLSDK-S2SVideoView", "setSourceError" + th.getMessage());
                        LogcatUtil.debug(th);
                    }
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                    if (S2SVideoView.this.mediaPlayer != null) {
                        S2SVideoView.this.mediaPlayer.setSurface(null);
                    }
                    S2SVideoView.this.mIsTextureViewAvailable = false;
                    S2SVideoView.this.pauseVideo();
                    return true;
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                }

                @Override // android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }
            });
            addView(this.textureView, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEndFrame() {
        RelativeLayout relativeLayout;
        try {
            if (!this.isDestroyed && (relativeLayout = this.endFrameView) != null && this.tvBtn != null) {
                relativeLayout.setVisibility(0);
                this.tvBtn.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) throws IllegalStateException {
                        S2SVideoView.this.mIsVideoCompleted = false;
                        S2SVideoView.this.endFrameView.setVisibility(8);
                        if (S2SVideoView.this.soundControlImageView != null && !S2SVideoView.this.soundImageGone) {
                            S2SVideoView.this.soundControlImageView.setVisibility(0);
                        }
                        if (S2SVideoView.this.viewStateChangeListener != null) {
                            S2SVideoView.this.viewStateChangeListener.changeViewVisible(true);
                        }
                        if (S2SVideoView.this.mediaPlayer != null) {
                            S2SVideoView.this.mediaPlayer.seekTo(0);
                            S2SVideoView.this.mediaPlayer.start();
                        }
                    }
                });
                ImageView imageView = this.soundControlImageView;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                VideoSoundControlListener.SoundControlViewStateChangeListener soundControlViewStateChangeListener = this.viewStateChangeListener;
                if (soundControlViewStateChangeListener != null) {
                    soundControlViewStateChangeListener.changeViewVisible(false);
                }
                ViewHelper.removeParent(this.endFrameView);
                addView(this.endFrameView);
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startVideo(boolean z2) {
        try {
            if (this.isDestroyed) {
                return;
            }
            LogcatUtil.d("FLSDK-S2SVideoView", "startPlayVideo");
            if (checkViewVisible() && this.mIsTextureViewAvailable) {
                changeTextureViewSize(true);
                if (!z2 || (this.mAdxInfo.f30438K0 != 3 && "1".equals(DeviceUtil.getNetworkType()))) {
                    if (this.progressBar == null) {
                        this.progressBar = new ProgressBar(getContext());
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 17;
                        addView(this.progressBar, layoutParams);
                    }
                    if (this.mediaPlayer == null || this.mIsCallPlay || !this.mIsVideoPrepared || this.mIsVideoCompleted) {
                        return;
                    }
                    ViewHelper.removeParent(this.progressBar);
                    this.mIsCallPlay = true;
                    LogcatUtil.d("FLSDK-S2SVideoView", "playVideo");
                    C1230x.a().d(this.mAdxInfo, this.mediaPlayer.getDuration());
                    int i2 = this.currentTime;
                    if (i2 > 0) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            this.mediaPlayer.seekTo(i2, 3);
                        } else {
                            this.mediaPlayer.seekTo(i2);
                        }
                    }
                    this.mediaPlayer.start();
                    registerSound();
                    S2SVideoPlayListener s2SVideoPlayListener = this.mPlayListener;
                    if (s2SVideoPlayListener != null) {
                        s2SVideoPlayListener.onVideoPlayStart();
                    }
                    DeviceUtil.postUIDelayed(200L, new Runnable() { // from class: com.fl.saas.adx.base.widget.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            S2SVideoView.b(this.f30299b);
                        }
                    });
                    this.mDurationCountdownHandler.removeCallbacksAndMessages(null);
                    this.mDurationCountdownHandler.post(new Runnable() { // from class: com.fl.saas.adx.base.widget.S2SVideoView.7
                        @Override // java.lang.Runnable
                        public void run() {
                            long duration;
                            if (S2SVideoView.this.isDestroyed || S2SVideoView.this.mediaPlayer == null) {
                                S2SVideoView.this.mDurationCountdownHandler.removeCallbacksAndMessages(null);
                                return;
                            }
                            try {
                                if (S2SVideoView.this.mediaPlayer == null || S2SVideoView.this.mediaPlayer.getDuration() == 0) {
                                    duration = 0;
                                } else {
                                    duration = S2SVideoView.this.mediaPlayer.getDuration() - S2SVideoView.this.mediaPlayer.getCurrentPosition();
                                    int currentPosition = (int) ((S2SVideoView.this.mediaPlayer.getCurrentPosition() / S2SVideoView.this.mediaPlayer.getDuration()) * 100.0d);
                                    if (currentPosition >= 25 && !S2SVideoView.this.mIs25Preent) {
                                        S2SVideoView.this.mIs25Preent = true;
                                        C1230x.a().i(S2SVideoView.this.mAdxInfo);
                                    }
                                    if (currentPosition >= 50 && !S2SVideoView.this.mIs50Preent) {
                                        S2SVideoView.this.mIs50Preent = true;
                                        C1230x.a().n(S2SVideoView.this.mAdxInfo);
                                    }
                                    if (currentPosition >= 75 && !S2SVideoView.this.mIs75Preent) {
                                        S2SVideoView.this.mIs75Preent = true;
                                        C1230x.a().m(S2SVideoView.this.mAdxInfo);
                                    }
                                }
                                if (duration > 0) {
                                    S2SVideoView.this.mDurationCountdownHandler.postDelayed(this, 1000L);
                                } else {
                                    S2SVideoView.this.mDurationCountdownHandler.removeCallbacksAndMessages(null);
                                }
                            } catch (Throwable unused) {
                                if (S2SVideoView.this.mDurationCountdownHandler != null) {
                                    S2SVideoView.this.mDurationCountdownHandler.removeCallbacksAndMessages(null);
                                }
                            }
                        }
                    });
                    return;
                }
                if (this.textView == null) {
                    TextView textView = new TextView(getContext());
                    this.textView = textView;
                    textView.setText("播放");
                    this.textView.setTextSize(12.0f);
                    this.textView.setPadding(DeviceUtil.dip2px(10.0f), DeviceUtil.dip2px(5.0f), DeviceUtil.dip2px(10.0f), DeviceUtil.dip2px(5.0f));
                    this.textView.setBackground(this.mContext.getDrawable(R.drawable.fl_adx_reward_video_adinfo_btn));
                    this.textView.setTypeface(Typeface.DEFAULT_BOLD);
                    this.textView.setTextColor(Color.parseColor("#ffffff"));
                    this.textView.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.j
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            S2SVideoView.h(this.f30298b, view);
                        }
                    });
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 17;
                    addView(this.textView, layoutParams2);
                }
            }
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener
    public void changeSoundEnable(boolean z2) {
        setSoundEnable(z2);
    }

    public long getProgress() {
        if (this.mediaPlayer != null) {
            return r0.getCurrentPosition();
        }
        return -1L;
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener
    public boolean getSoundEnable() {
        return this.mIsSoundEnable;
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public void onDestroy() {
        try {
            if (this.isDestroyed) {
                return;
            }
            this.isDestroyed = true;
            releaseSource();
            releaseMedia();
            VolumeChangeObserver volumeChangeObserver = this.volumeObserver;
            if (volumeChangeObserver != null) {
                volumeChangeObserver.stop();
                this.volumeObserver = null;
            }
            TextureView textureView = this.textureView;
            if (textureView != null) {
                removeView(textureView);
                this.textureView = null;
            }
            ImageView imageView = this.firstFrameView;
            if (imageView != null) {
                removeView(imageView);
                this.firstFrameView = null;
            }
            RelativeLayout relativeLayout = this.endFrameView;
            if (relativeLayout != null) {
                removeView(relativeLayout);
                this.endFrameView = null;
            }
            ImageView imageView2 = this.soundControlImageView;
            if (imageView2 != null) {
                removeView(imageView2);
                this.soundControlImageView = null;
            }
            TextView textView = this.textView;
            if (textView != null) {
                removeView(textView);
                this.textView = null;
            }
            this.mPlayListener = null;
            this.mAdxInfo = null;
            ViewHelper.removeParent(this);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseSource();
        VolumeChangeObserver volumeChangeObserver = this.volumeObserver;
        if (volumeChangeObserver != null) {
            volumeChangeObserver.stop();
            this.volumeObserver = null;
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        MediaPlayer mediaPlayer;
        super.onWindowVisibilityChanged(i2);
        try {
            if (i2 != 0) {
                if (this.isDestroyed || (mediaPlayer = this.mediaPlayer) == null || !mediaPlayer.isPlaying()) {
                    return;
                }
                pauseVideo();
                return;
            }
            changeTextureViewSize(true);
            if (this.isDestroyed || this.mediaPlayer == null || !this.mIsVideoPrepared) {
                return;
            }
            resumeVideo();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    @Override // com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener
    public void setSoundControlViewStateChangeListener(VideoSoundControlListener.SoundControlViewStateChangeListener soundControlViewStateChangeListener) {
        this.soundImageGone = true;
        ImageView imageView = this.soundControlImageView;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.viewStateChangeListener = soundControlViewStateChangeListener;
    }

    public void setSoundEnable(boolean z2) {
        try {
            if (this.isDestroyed) {
                return;
            }
            this.mIsSoundEnable = z2;
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return;
            }
            try {
                if (z2) {
                    mediaPlayer.setVolume(1.0f, 1.0f);
                    ImageView imageView = this.soundControlImageView;
                    if (imageView != null) {
                        imageView.setImageResource(R.drawable.fl_adx_volume_on);
                    }
                } else {
                    mediaPlayer.setVolume(0.0f, 0.0f);
                    ImageView imageView2 = this.soundControlImageView;
                    if (imageView2 != null) {
                        imageView2.setImageResource(R.drawable.fl_adx_volume_off);
                    }
                    C1230x.a().k(this.mAdxInfo);
                }
                if (((AudioManager) this.mContext.getSystemService(MediaFormat.KEY_AUDIO)).getStreamVolume(3) == 0) {
                    this.systemMute = true;
                    ImageView imageView3 = this.soundControlImageView;
                    if (imageView3 != null) {
                        imageView3.setImageResource(R.drawable.fl_adx_volume_off);
                    }
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        } catch (Throwable th2) {
            LogcatUtil.debug(th2);
        }
    }

    public void setSoundSize(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.soundWidth = i2;
        this.soundHeight = i3;
        this.soundTop = i5;
        this.soundLeft = i4;
        this.soundRight = i6;
        this.soundBottom = i7;
    }

    public void setVideo(final C1188j c1188j) {
        try {
            if (this.isDestroyed) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.mIsSoundEnable = c1188j.f30450O0 == 2;
            this.mAdxInfo = c1188j;
            setTextureView();
            ImageView imageView = new ImageView(this.mContext);
            this.soundControlImageView = imageView;
            imageView.setPadding(DeviceUtil.dip2px(this.soundLeft), DeviceUtil.dip2px(this.soundTop), DeviceUtil.dip2px(this.soundRight), DeviceUtil.dip2px(this.soundBottom));
            addView(this.soundControlImageView, new FrameLayout.LayoutParams(DeviceUtil.dip2px(this.soundWidth), DeviceUtil.dip2px(this.soundHeight)));
            if (this.soundImageGone) {
                this.soundControlImageView.setVisibility(8);
            }
            this.soundControlImageView.setOnClickListener(new View.OnClickListener() { // from class: com.fl.saas.adx.base.widget.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    S2SVideoView.a(this.f30292b, view);
                }
            });
            registerSound();
            if (this.mediaPlayer != null) {
                SafeHandler safeHandler = this.mHandler;
                if (safeHandler != null) {
                    safeHandler.sendEmptyMessage(MSG_AD_VISIBLE_CHECK);
                    return;
                }
                return;
            }
            createMediaView();
            if (this.firstFrameView == null) {
                ImageView imageView2 = new ImageView(this.mContext);
                this.firstFrameView = imageView2;
                imageView2.setBackgroundColor(-16777216);
                this.firstFrameView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                addView(this.firstFrameView, layoutParams);
            }
            if (TextUtils.isEmpty(c1188j.f30534p1)) {
                final WeakReference weakReference = new WeakReference(this);
                C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.widget.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        S2SVideoView.d(weakReference, c1188j);
                    }
                });
            } else {
                FLImageLoader.getInstance(this.mContext).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(this.firstFrameView, c1188j.f30534p1);
            }
            SafeHandler safeHandler2 = this.mHandler;
            if (safeHandler2 != null) {
                safeHandler2.sendEmptyMessageDelayed(MSG_AD_VISIBLE_CHECK, 500L);
            }
            String str = TextUtils.isEmpty(c1188j.f30558x1) ? "" : c1188j.f30558x1;
            if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(c1188j.f30534p1)) {
                str = c1188j.f30534p1;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(this.mContext).inflate(R.layout.fl_adx_video_view_end_frame, (ViewGroup) null);
            this.endFrameView = relativeLayout;
            TextView textView = (TextView) relativeLayout.findViewById(R.id.s2s_video_view_finish_button);
            this.tvBtn = textView;
            textView.setText("重播");
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void setVideoPlayListener(S2SVideoPlayListener s2SVideoPlayListener) {
        this.mPlayListener = s2SVideoPlayListener;
    }

    public S2SVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(getAppContext(context), attributeSet);
        this.hasChangeTextureViewSize = false;
        this.currentTime = -1;
        this.mIsCallPlay = false;
        this.mIsVideoPrepared = false;
        this.mIsVideoCompleted = false;
        this.mIsTextureViewAvailable = false;
        this.mIsFirstCreateTextureView = true;
        this.soundImageGone = false;
        this.mIsSoundEnable = false;
        this.mIs25Preent = false;
        this.mIs50Preent = false;
        this.mIs75Preent = false;
        this.isPlayError = false;
        this.isDestroyed = false;
        this.systemMute = false;
        this.soundWidth = 30;
        this.soundHeight = 30;
        this.soundTop = 5;
        this.soundLeft = 5;
        this.soundRight = 5;
        this.soundBottom = 5;
        this.mContext = getAppContext(context);
        this.mHandler = new SafeHandler(this);
        this.mDurationCountdownHandler = new Handler(Looper.getMainLooper());
        setBackgroundColor(-16777216);
    }

    public S2SVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(getAppContext(context), attributeSet, i2);
        this.hasChangeTextureViewSize = false;
        this.currentTime = -1;
        this.mIsCallPlay = false;
        this.mIsVideoPrepared = false;
        this.mIsVideoCompleted = false;
        this.mIsTextureViewAvailable = false;
        this.mIsFirstCreateTextureView = true;
        this.soundImageGone = false;
        this.mIsSoundEnable = false;
        this.mIs25Preent = false;
        this.mIs50Preent = false;
        this.mIs75Preent = false;
        this.isPlayError = false;
        this.isDestroyed = false;
        this.systemMute = false;
        this.soundWidth = 30;
        this.soundHeight = 30;
        this.soundTop = 5;
        this.soundLeft = 5;
        this.soundRight = 5;
        this.soundBottom = 5;
        this.mContext = getAppContext(context);
        this.mHandler = new SafeHandler(this);
        this.mDurationCountdownHandler = new Handler(Looper.getMainLooper());
        setBackgroundColor(-16777216);
    }
}
