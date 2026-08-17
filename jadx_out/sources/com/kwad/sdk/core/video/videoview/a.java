package com.kwad.sdk.core.video.videoview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.VideoPlayerStatus;
import com.kwad.sdk.core.video.a.c;
import com.kwad.sdk.core.video.a.e;
import com.kwad.sdk.core.video.a.f;
import com.kwad.sdk.core.view.AdBasePvFrameLayout;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.i;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@Deprecated
/* loaded from: classes4.dex */
public final class a extends AdBasePvFrameLayout implements TextureView.SurfaceTextureListener, c {
    private static AtomicBoolean aZC = new AtomicBoolean(false);
    private int Vl;
    private b aZA;
    private boolean aZB;
    private boolean aZD;
    private boolean aZE;
    private ImageView aZF;
    private boolean aZG;
    private AudioManager aZy;
    private com.kwad.sdk.core.video.a aZz;
    private long amA;
    private com.kwad.sdk.contentalliance.a.a.b amC;
    private c.e amN;
    private c.i amO;
    private c.b amP;
    private c.InterfaceC0617c amQ;
    private c.d amR;
    private c.a amS;
    private com.kwad.sdk.core.video.a.c amy;
    private int amz;
    private SurfaceTexture ana;
    private TextView anb;
    private Surface anc;
    private InterfaceC0618a cK;
    private FrameLayout dG;
    private com.kwad.sdk.contentalliance.a.a.a fy;
    private Context mContext;
    private Map<String, String> mHeaders;
    private String mUrl;
    private final long maxTimeOut;

    /* renamed from: com.kwad.sdk.core.video.videoview.a$a, reason: collision with other inner class name */
    public interface InterfaceC0618a {
        com.kwad.sdk.core.video.a.c a(com.kwad.sdk.contentalliance.a.a.b bVar);
    }

    public a(Context context) {
        this(context, null);
    }

    private ImageView OM() {
        ImageView imageView = new ImageView(this.mContext);
        addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        return imageView;
    }

    private boolean ON() {
        return this.Vl == 6;
    }

    private void OP() {
        if (this.amy == null) {
            f fVar = (f) ServiceProvider.get(f.class);
            boolean z2 = fVar != null && fVar.Fs();
            boolean z3 = fVar != null && fVar.Ft();
            InterfaceC0618a interfaceC0618a = this.cK;
            com.kwad.sdk.core.video.a.c cVarA = interfaceC0618a != null ? interfaceC0618a.a(this.amC) : null;
            if ((z2 && e.HZ() && e.OL()) || cVarA == null) {
                this.amy = e.a(this.mContext, false, z2, z3, 0);
            } else {
                this.amy = cVarA;
            }
            this.amy.setAudioStreamType(3);
            if (this.aZD) {
                return;
            }
            this.amy.setVolume(0.0f, 0.0f);
        }
    }

    private void OQ() {
        this.dG.removeView(this.aZz);
        this.dG.addView(this.aZz, 0, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    private void OR() {
        if (!com.kwad.framework.c.a.pe.booleanValue() || this.amy == null || this.dG == null) {
            return;
        }
        if (this.anb == null) {
            this.anb = new TextView(this.mContext);
        }
        this.dG.removeView(this.anb);
        this.anb.setText(String.valueOf(this.amy.getMediaPlayerType()));
        this.anb.setTextColor(SupportMenu.CATEGORY_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 53;
        this.dG.addView(this.anb, r1.getChildCount() - 1, layoutParams);
    }

    private void OS() {
        com.kwad.sdk.contentalliance.a.a.a aVar;
        this.dG.setKeepScreenOn(true);
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar == null) {
            com.kwad.sdk.core.d.c.w("KSVideoPlayerViewView", "mMediaPlayer is null");
            return;
        }
        cVar.b(this.amN);
        this.amy.a(this.amO);
        this.amy.a(this.amP);
        this.amy.a(this.amQ);
        this.amy.c(this.amR);
        this.amy.a(this.amS);
        try {
            com.kwad.sdk.contentalliance.a.a.b bVar = this.amC;
            if (bVar != null && (aVar = this.fy) != null) {
                bVar.aKK = aVar;
            }
            this.amy.b(bVar);
            if (this.anc == null) {
                this.anc = new Surface(this.ana);
            }
            this.amy.setSurface(this.anc);
            if (this.amy.prepareAsync()) {
                this.Vl = 1;
                this.aZA.onPlayStateChanged(1);
                com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "STATE_PREPARING");
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            com.kwad.sdk.core.d.c.e("KSVideoPlayerViewView", "打开播放器发生错误", e2);
        }
    }

    private void OT() {
        AudioManager audioManager = this.aZy;
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
            this.aZy = null;
        }
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            cVar.release();
            this.amy = null;
            com.kwad.sdk.core.video.a.a.a.fs("videoFinishPlay");
        }
        by.runOnUiThread(new bi() { // from class: com.kwad.sdk.core.video.videoview.a.7
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                a.this.dG.removeView(a.this.aZz);
            }
        });
        Surface surface = this.anc;
        if (surface != null) {
            surface.release();
            this.anc = null;
        }
        SurfaceTexture surfaceTexture = this.ana;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.ana = null;
        }
        this.Vl = 0;
    }

    private void fn(AdTemplate adTemplate) {
        i iVar = (i) ServiceProvider.get(i.class);
        if (iVar != null) {
            iVar.load(this.aZF, com.kwad.sdk.core.response.helper.e.eS(adTemplate), adTemplate);
        }
    }

    private void init() {
        this.aZF = OM();
        this.dG = new FrameLayout(this.mContext);
        addView(this.dG, new FrameLayout.LayoutParams(-1, -1));
    }

    private boolean isPreparing() {
        return this.Vl == 1;
    }

    private void setPlayType(int i2) {
        VideoPlayerStatus videoPlayerStatus;
        com.kwad.sdk.contentalliance.a.a.b bVar = this.amC;
        if (bVar == null || (videoPlayerStatus = bVar.videoPlayerStatus) == null) {
            return;
        }
        videoPlayerStatus.mVideoPlayerType = i2;
    }

    private void xu() {
        if (this.aZz == null) {
            com.kwad.sdk.core.video.a aVar = new com.kwad.sdk.core.video.a(this.mContext);
            this.aZz = aVar;
            aVar.setSurfaceTextureListener(this);
        }
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final boolean OO() {
        return this.Vl == 7;
    }

    public final void OU() throws Throwable {
        if (this.aZB) {
            if (isPlaying() || ON() || OO() || isPaused()) {
                ai.e(this.mContext, this.mUrl, getCurrentPosition());
            } else if (isCompleted()) {
                ai.e(this.mContext, this.mUrl, 0L);
            }
        }
        OT();
        b bVar = this.aZA;
        if (bVar != null) {
            bVar.reset();
        }
        this.aZG = false;
    }

    public final void a(@NonNull com.kwad.sdk.contentalliance.a.a.b bVar, Map<String, String> map) {
        this.amC = bVar;
        this.mUrl = bVar.videoUrl;
        this.mHeaders = null;
        fn(bVar.adTemplate);
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final int getBufferPercentage() {
        return this.amz;
    }

    public final b getController() {
        return this.aZA;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final long getCurrentPosition() {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            return cVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final long getDuration() {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            return cVar.getDuration();
        }
        return 0L;
    }

    public final int getMaxVolume() {
        AudioManager audioManager = this.aZy;
        if (audioManager != null) {
            return audioManager.getStreamMaxVolume(3);
        }
        return 0;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final int getMediaPlayerType() {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            return cVar.getMediaPlayerType();
        }
        return 0;
    }

    public final b getVideoController() {
        return this.aZA;
    }

    public final int getVolume() {
        AudioManager audioManager = this.aZy;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return 0;
    }

    public final boolean isCompleted() {
        return this.Vl == 9;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final boolean isIdle() {
        return this.Vl == 0;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final boolean isPaused() {
        return this.Vl == 5;
    }

    public final boolean isPlaying() {
        return this.Vl == 4;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        SurfaceTexture surfaceTexture2 = this.ana;
        if (surfaceTexture2 != null) {
            this.aZz.setSurfaceTexture(surfaceTexture2);
        } else {
            this.ana = surfaceTexture;
            OS();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final void pause() {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar == null) {
            return;
        }
        int i2 = this.Vl;
        if (i2 == 4) {
            cVar.pause();
            com.kwad.sdk.core.video.a.a.a.fs("videoPausePlay");
            this.Vl = 5;
            this.aZA.onPlayStateChanged(5);
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "STATE_PAUSED");
            return;
        }
        if (i2 == 6) {
            cVar.pause();
            com.kwad.sdk.core.video.a.a.a.fs("videoPausePlay");
            this.Vl = 7;
            this.aZA.onPlayStateChanged(7);
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "STATE_BUFFERING_PAUSED");
        }
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final void release() throws Throwable {
        if (isPreparing()) {
            this.aZG = true;
            postDelayed(new bi() { // from class: com.kwad.sdk.core.video.videoview.a.8
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() throws Throwable {
                    if (a.this.aZG) {
                        a.this.OU();
                    }
                }
            }, 10000L);
            return;
        }
        if (this.aZB) {
            if (isPlaying() || ON() || OO() || isPaused()) {
                ai.e(this.mContext, this.mUrl, getCurrentPosition());
            } else if (isCompleted()) {
                ai.e(this.mContext, this.mUrl, 0L);
            }
        }
        OT();
        b bVar = this.aZA;
        if (bVar != null) {
            bVar.reset();
        }
        this.aZG = false;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final void restart() {
        int i2 = this.Vl;
        if (i2 == 5) {
            this.amy.start();
            com.kwad.sdk.core.video.a.a.a.fs("videoResumePlay");
            this.Vl = 4;
            this.aZA.onPlayStateChanged(4);
            setPlayType(2);
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "STATE_PLAYING");
            return;
        }
        if (i2 == 7) {
            this.amy.start();
            com.kwad.sdk.core.video.a.a.a.fs("videoResumePlay");
            this.Vl = 6;
            this.aZA.onPlayStateChanged(6);
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "STATE_BUFFERING_PLAYING");
            return;
        }
        if (i2 == 9 || i2 == -1) {
            this.amy.reset();
            OS();
            setPlayType(3);
        } else {
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "KSVideoPlayer在状态为 " + this.Vl + " 时不能调用restart()方法.");
        }
    }

    public final void seekTo(int i2) {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            cVar.seekTo(i2);
        }
    }

    public final void setController(b bVar) {
        this.dG.removeView(this.aZA);
        this.aZA = bVar;
        bVar.reset();
        this.dG.addView(this.aZA, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void setExternalPlayerListener(InterfaceC0618a interfaceC0618a) {
        this.cK = interfaceC0618a;
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final void setKsPlayLogParam(@NonNull com.kwad.sdk.contentalliance.a.a.a aVar) {
        this.fy = aVar;
    }

    public final void setLooping(boolean z2) {
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            cVar.setLooping(z2);
        }
    }

    public final void setPortraitFullscreen(boolean z2) {
        this.aZE = z2;
    }

    public final void setVideoSoundEnable(boolean z2) {
        this.aZD = z2;
        com.kwad.sdk.core.video.a.c cVar = this.amy;
        if (cVar != null) {
            if (z2) {
                cVar.setVolume(1.0f, 1.0f);
            } else {
                cVar.setVolume(0.0f, 0.0f);
            }
        }
    }

    public final void setVolume(int i2) {
        AudioManager audioManager = this.aZy;
        if (audioManager != null) {
            audioManager.setStreamVolume(3, i2, 0);
        }
    }

    @Override // com.kwad.sdk.core.video.videoview.c
    public final void start() {
        VideoPlayerStatus videoPlayerStatus;
        if (this.Vl != 0) {
            com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "KSVideoPlayer只有在状态为STATE_IDLE时才能调用start方法.");
            return;
        }
        OP();
        xu();
        OQ();
        OR();
        com.kwad.sdk.contentalliance.a.a.b bVar = this.amC;
        if (bVar != null && (videoPlayerStatus = bVar.videoPlayerStatus) != null) {
            if (videoPlayerStatus.mVideoPlayerType == 0) {
                setPlayType(1);
            } else {
                setPlayType(3);
            }
        }
        com.kwad.sdk.core.video.a.a.a.fs("videoStartPlay");
    }

    private a(Context context, AttributeSet attributeSet) {
        super(context, null);
        this.Vl = 0;
        this.aZB = false;
        this.aZD = false;
        this.aZE = false;
        this.maxTimeOut = 10000L;
        this.amN = new c.e() { // from class: com.kwad.sdk.core.video.videoview.a.1
            @Override // com.kwad.sdk.core.video.a.c.e
            public final void a(com.kwad.sdk.core.video.a.c cVar) {
                try {
                    a.this.Vl = 2;
                    a.this.aZA.onPlayStateChanged(a.this.Vl);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onPrepared ——> STATE_PREPARED");
                    if (a.this.aZG) {
                        a.this.release();
                        return;
                    }
                    cVar.start();
                    if (a.this.aZB) {
                        cVar.seekTo((int) ai.ab(a.this.mContext, a.this.mUrl));
                    }
                    if (a.this.amA != 0) {
                        cVar.seekTo((int) a.this.amA);
                    }
                } catch (Throwable th) {
                    ServiceProvider.reportSdkCaughtException(th);
                }
            }
        };
        this.amO = new c.i() { // from class: com.kwad.sdk.core.video.videoview.a.2
            @Override // com.kwad.sdk.core.video.a.c.i
            public final void n(int i2, int i3) {
                if (!a.this.aZE || i3 <= i2) {
                    a.this.aZz.adaptVideoSize(i2, i3);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onVideoSizeChanged ——> width：" + i2 + "， height：" + i3);
                }
            }
        };
        this.amP = new c.b() { // from class: com.kwad.sdk.core.video.videoview.a.3
            @Override // com.kwad.sdk.core.video.a.c.b
            public final void tK() {
                if (a.this.Vl != 9) {
                    a.this.Vl = 9;
                    a.this.aZA.onPlayStateChanged(a.this.Vl);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onCompletion ——> STATE_COMPLETED");
                    a.this.dG.setKeepScreenOn(false);
                }
            }
        };
        this.amQ = new c.InterfaceC0617c() { // from class: com.kwad.sdk.core.video.videoview.a.4
            @Override // com.kwad.sdk.core.video.a.c.InterfaceC0617c
            public final boolean o(int i2, int i3) {
                if (i2 == -38) {
                    return true;
                }
                a.this.Vl = -1;
                a.this.aZA.q(i2, i3);
                a.this.aZA.onPlayStateChanged(a.this.Vl);
                com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onError ——> STATE_ERROR ———— what：" + i2 + ", extra: " + i3);
                return true;
            }
        };
        this.amR = new c.d() { // from class: com.kwad.sdk.core.video.videoview.a.5
            @Override // com.kwad.sdk.core.video.a.c.d
            public final boolean m(int i2, int i3) {
                if (i2 == 3) {
                    a.this.Vl = 4;
                    a.this.aZA.onPlayStateChanged(a.this.Vl);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> MEDIA_INFO_VIDEO_RENDERING_START：STATE_PLAYING");
                    return true;
                }
                if (i2 == 701) {
                    if (a.this.Vl == 5 || a.this.Vl == 7) {
                        a.this.Vl = 7;
                        com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> MEDIA_INFO_BUFFERING_START：STATE_BUFFERING_PAUSED");
                    } else {
                        a.this.Vl = 6;
                        com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> MEDIA_INFO_BUFFERING_START：STATE_BUFFERING_PLAYING");
                    }
                    a.this.aZA.onPlayStateChanged(a.this.Vl);
                    return true;
                }
                if (i2 == 702) {
                    if (a.this.Vl == 6) {
                        a.this.Vl = 4;
                        a.this.aZA.onPlayStateChanged(a.this.Vl);
                        com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> MEDIA_INFO_BUFFERING_END： STATE_PLAYING");
                    }
                    if (a.this.Vl != 7) {
                        return true;
                    }
                    a.this.Vl = 5;
                    a.this.aZA.onPlayStateChanged(a.this.Vl);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> MEDIA_INFO_BUFFERING_END： STATE_PAUSED");
                    return true;
                }
                if (i2 == 10001) {
                    if (a.this.aZz == null) {
                        return true;
                    }
                    a.this.aZz.setRotation(i3);
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "视频旋转角度：" + i3);
                    return true;
                }
                if (i2 == 801) {
                    com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "视频不能seekTo，为直播视频");
                    return true;
                }
                com.kwad.sdk.core.d.c.i("KSVideoPlayerViewView", "onInfo ——> what：" + i2);
                return true;
            }
        };
        this.amS = new c.a() { // from class: com.kwad.sdk.core.video.videoview.a.6
            @Override // com.kwad.sdk.core.video.a.c.a
            public final void br(int i2) {
                a.this.amz = i2;
            }
        };
        this.mContext = context;
        init();
    }
}
