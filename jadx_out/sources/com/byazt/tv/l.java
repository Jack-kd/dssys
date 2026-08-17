package com.byazt.tv;

import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import com.byazt.na.LottieAnimationView;
import com.byazt.uah.l;
import com.byazt.um.eb;
import com.byazt.um.jx;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF, 34})
/* loaded from: classes3.dex */
public class l implements eb {

    /* renamed from: a, reason: collision with root package name */
    public long f26032a;
    public final com.byazt.cw.l gu;

    /* renamed from: j, reason: collision with root package name */
    public boolean f26034j;
    public LottieAnimationView jl;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f26035l;

    /* renamed from: q, reason: collision with root package name */
    public final eb f26036q;
    public final String hp = "UpieVideoPlayer";

    /* renamed from: w, reason: collision with root package name */
    public int f26038w = 0;
    public volatile boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f26037s = false;

    /* renamed from: e, reason: collision with root package name */
    public final Map<eb.hp, eb.hp> f26033e = new ConcurrentHashMap();

    public l(eb ebVar, com.byazt.uah.hp hpVar, com.byazt.tw.l lVar, com.byazt.cw.l lVar2) {
        this.f26036q = ebVar;
        this.f26035l = hpVar.j();
        this.jx = hpVar.w();
        this.gu = lVar2;
        if (lVar2 instanceof UpieVideoView) {
            LottieAnimationView lottieAnimationView = ((UpieVideoView) lVar2).getLottieAnimationView();
            this.jl = lottieAnimationView;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVideoStats(lVar);
            }
        }
        hp(hpVar.hp());
    }

    public static /* synthetic */ int hp(l lVar) {
        int i2 = lVar.f26038w;
        lVar.f26038w = i2 + 1;
        return i2;
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(final eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        eb.hp hpVar2 = new eb.hp() { // from class: com.byazt.tv.l.5
            @Override // com.byazt.um.eb.hp
            public void onBufferEnd(eb ebVar, int i2) {
                hpVar.onBufferEnd(l.this, i2);
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferStart(eb ebVar, int i2, int i3, int i4) {
                hpVar.onBufferStart(l.this, i2, i3, i4);
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferingUpdate(eb ebVar, int i2) {
                hpVar.onBufferingUpdate(l.this, i2);
            }

            @Override // com.byazt.um.eb.hp
            public void onCompletion(eb ebVar) {
                hpVar.onCompletion(l.this);
            }

            @Override // com.byazt.um.eb.hp
            public void onError(eb ebVar, jx jxVar) {
                l.this.hp(jxVar);
            }

            @Override // com.byazt.um.eb.hp
            public void onMonitorLog(eb ebVar, JSONObject jSONObject, String str) {
                hpVar.onMonitorLog(l.this, jSONObject, str);
            }

            @Override // com.byazt.um.eb.hp
            public void onPause(eb ebVar) {
                hpVar.onPause(l.this);
            }

            @Override // com.byazt.um.eb.hp
            public void onPlayPositionUpdate(eb ebVar, long j2, long j3) {
                hpVar.onPlayPositionUpdate(l.this, j2, j3);
            }

            @Override // com.byazt.um.eb.hp
            public void onPrepared(eb ebVar) {
                com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.l.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.f26037s = true;
                        if (!l.this.eb) {
                            l.this.f26036q.pause();
                        }
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        hpVar.onPrepared(l.this);
                        l.this.hp();
                    }
                });
            }

            @Override // com.byazt.um.eb.hp
            public void onRelease(eb ebVar) {
                hpVar.onRelease(l.this);
            }

            @Override // com.byazt.um.eb.hp
            public void onRenderStart(eb ebVar, final long j2) {
                com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.l.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        hpVar.onRenderStart(l.this, j2);
                    }
                });
            }

            @Override // com.byazt.um.eb.hp
            public void onResume(eb ebVar) {
                hpVar.onResume(l.this);
            }

            @Override // com.byazt.um.eb.hp
            public void onSeekCompletion(eb ebVar, boolean z2) {
                hpVar.onSeekCompletion(l.this, z2);
            }

            @Override // com.byazt.um.eb.hp
            public void onStart(eb ebVar) {
                hpVar.onStart(l.this);
            }

            @Override // com.byazt.um.eb.hp
            public void onVideoSizeChanged(eb ebVar, int i2, int i3) {
                eb.hp hpVar3 = hpVar;
                l lVar = l.this;
                hpVar3.onVideoSizeChanged(lVar, lVar.f26035l, l.this.jx);
            }
        };
        this.f26033e.put(hpVar, hpVar2);
        this.f26036q.addIVideoPlayerCallback(hpVar2);
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        return this.f26036q.getBufferCount();
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        return this.f26036q.getCurrentPosition();
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        return this.f26036q.getSurfaceHolder();
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        return this.f26036q.getSurfaceTexture();
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        return this.f26036q.getTotalBufferTime();
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        return this.f26036q.getUpdateProgressInterval();
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        return this.f26036q.getVideoDuration();
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        return this.jx;
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        return this.f26035l;
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        return !this.f26034j && this.f26036q.isCompleted();
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        return this.f26036q.isFirstFrameSuccess();
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        return this.f26036q.isLooping();
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        return !this.f26034j && this.f26036q.isPaused();
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        return !this.f26034j && this.f26036q.isPlaying();
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        return !this.f26034j && this.f26036q.isPrepared();
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        return !this.f26034j && this.f26036q.isReleased();
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        return !this.f26034j && this.f26036q.isStarted();
    }

    @Override // com.byazt.um.eb
    public void pause() {
        this.f26036q.pause();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.eb();
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).l();
        }
    }

    @Override // com.byazt.um.eb
    public void play() {
        this.f26036q.play();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.l();
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).hp();
        }
    }

    @Override // com.byazt.um.eb
    public void release() {
        this.f26036q.release();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).l();
        }
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        eb.hp hpVarRemove = this.f26033e.remove(hpVar);
        if (hpVarRemove != null) {
            this.f26036q.removeIVideoPlayerCallback(hpVarRemove);
        }
    }

    @Override // com.byazt.um.eb
    public void reset() {
        this.f26036q.reset();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.eb();
            this.jl.setProgress(0.0f);
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).l();
        }
    }

    @Override // com.byazt.um.eb
    public void restart() {
        this.f26036q.restart();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.jl.setProgress(0.0f);
            this.jl.hp();
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).hp();
        }
    }

    @Override // com.byazt.um.eb
    public void seekTo(long j2) {
        this.f26036q.seekTo(j2);
        hp(j2);
    }

    @Override // com.byazt.um.eb
    public void setDataSource(zy zyVar) {
        this.f26036q.setDataSource(zyVar);
    }

    @Override // com.byazt.um.eb
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.f26036q.setDisplay(surfaceHolder);
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
        this.f26036q.setLoop(z2);
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
        this.f26036q.setPlaySpeedRatio(f2);
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.setSpeed(f2);
        }
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(boolean z2) {
        this.f26036q.setQuietPlay(z2);
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
        this.f26036q.setSeekMode(i2);
    }

    @Override // com.byazt.um.eb
    public void setSurface(SurfaceTexture surfaceTexture) {
        this.f26036q.setSurface(surfaceTexture);
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(boolean z2) {
        this.f26036q.setSurfaceValid(z2);
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        this.f26036q.setUpdateProgressInterval(i2);
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, long j2, boolean z3) {
        this.f26036q.start(z2, j2, z3);
        this.f26032a = j2;
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).hp();
        }
    }

    @Override // com.byazt.um.eb
    public void stop() {
        this.f26036q.stop();
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            lottieAnimationView.eb();
        }
        com.byazt.cw.l lVar = this.gu;
        if (lVar instanceof UpieVideoView) {
            ((UpieVideoView) lVar).l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            hp(new com.byazt.tw.jx(60008, 10000, "lottieJsonUrl为空"));
        } else {
            com.byazt.wb.l.jx(new Runnable() { // from class: com.byazt.tv.l.1
                @Override // java.lang.Runnable
                public void run() {
                    String strHp = com.byazt.uah.l.hp().hp(str);
                    if (TextUtils.isEmpty(strHp)) {
                        com.byazt.uah.l.hp().hp(str, new l.hp<String>() { // from class: com.byazt.tv.l.1.1
                            @Override // com.byazt.uah.l.hp
                            public void hp(String str2) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                l.this.hp(str2, str);
                            }

                            @Override // com.byazt.uah.l.hp
                            public void hp(int i2, String str2) {
                                if (i2 == 10006) {
                                    l.this.hp(new com.byazt.tw.jx(60008, i2, str2));
                                    return;
                                }
                                l.hp(l.this);
                                if (l.this.f26038w <= 3) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    l.this.hp(str);
                                } else {
                                    l.this.hp(new com.byazt.tw.jx(60008, i2, str2));
                                }
                            }
                        });
                    } else {
                        l.this.hp(strHp, str);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final jx jxVar) {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.l.2
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f26034j) {
                    return;
                }
                l.this.f26034j = true;
                jxVar.getCode();
                jxVar.getExtraCode();
                jxVar.getMsg();
                Iterator it = l.this.f26033e.entrySet().iterator();
                while (it.hasNext()) {
                    ((eb.hp) ((Map.Entry) it.next()).getKey()).onError(l.this, jxVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str, final String str2) {
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.l.3
            @Override // java.lang.Runnable
            public void run() {
                l.this.eb = true;
                if (l.this.jl != null) {
                    l.this.jl.hp(str, str2);
                }
                l.this.hp();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.l.4
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f26037s && l.this.eb) {
                    l.this.f26036q.play();
                    if (l.this.jl != null) {
                        l.this.jl.hp();
                        if (l.this.f26032a > 0) {
                            l lVar = l.this;
                            lVar.hp(lVar.f26032a);
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) {
        LottieAnimationView lottieAnimationView = this.jl;
        if (lottieAnimationView != null) {
            long duration = lottieAnimationView.getDuration();
            if (duration <= 0) {
                duration = getVideoDuration();
            }
            if (duration > 0) {
                this.jl.setProgress((j2 % duration) / duration);
            }
        }
    }
}
