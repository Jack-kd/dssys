package com.kwad.components.core.offline.b.c;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.kwad.components.core.video.DetailVideoView;
import com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener;
import com.kwad.components.offline.api.core.video.IKsMediaPlayer;
import com.kwad.components.offline.api.core.video.IKsMediaPlayerView;
import com.kwad.components.offline.api.core.video.IMediaPlayer;
import com.kwad.components.offline.api.core.video.listener.OfflineVideoPlayStateListener;
import com.kwad.components.offline.api.core.video.listener.ReleaseCallback;
import com.kwad.components.offline.api.core.video.listener.VideoMuteStateChangeListener;
import com.kwad.components.offline.api.core.video.mdoel.KsPlayerLogParams;
import com.kwad.components.offline.api.core.video.mdoel.PlayVideoInfo;
import com.kwad.sdk.core.video.a.c;
import com.kwad.sdk.utils.az;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;

/* loaded from: classes4.dex */
final class a implements IKsMediaPlayer {
    private boolean CE;
    private OfflineOnAudioConflictListener CH;
    private IMediaPlayer.OnInfoListener acA;
    private boolean acB;
    private com.kwad.components.core.video.b acw;
    private c acx;
    private VideoMuteStateChangeListener acy;
    private c.d acz;
    private Context mContext;
    private DetailVideoView mDetailVideoView;
    private boolean qO = true;
    private int acC = -1;

    private OfflineOnAudioConflictListener tH() {
        if (this.CH == null) {
            this.CH = new OfflineOnAudioConflictListener() { // from class: com.kwad.components.core.offline.b.c.a.3
                @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
                public final void onAudioBeOccupied() {
                    if (a.this.qO) {
                        a.this.CE = true;
                        a.b(a.this, false);
                    }
                    by.runOnUiThread(new bi() { // from class: com.kwad.components.core.offline.b.c.a.3.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            a.this.acw.setAudioEnabled(false);
                            if (a.this.acy != null) {
                                a.this.acy.onMuteStateChanged(true);
                            }
                        }
                    });
                }

                @Override // com.kwad.components.offline.api.core.api.OfflineOnAudioConflictListener
                public final void onAudioBeReleased() {
                    a.this.CE = false;
                }
            };
        }
        return this.CH;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void addOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acw.a(d.a(getMediaPlayer(), onInfoListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void addOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.acw.a(d.a(getMediaPlayer(), onPreparedListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void clear() {
        this.acw.clear();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean getAlphaVideoValid() {
        return this.acw.getAlphaVideoValid();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getBufferPercentage() {
        return this.acw.getBufferPercentage();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final String getCurrentPlayingUrl() {
        return this.acw.getCurrentPlayingUrl();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getCurrentPosition() {
        return this.acw.getCurrentPosition();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getDuration() {
        return this.acw.getDuration();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getMaxVolume() {
        return 0;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final IMediaPlayer getMediaPlayer() {
        com.kwad.sdk.core.video.a.c cVarXm = this.acw.xm();
        if (cVarXm == null) {
            return null;
        }
        c cVar = this.acx;
        if (cVar == null || cVar.tJ() != cVarXm) {
            this.acx = new c().b(cVarXm);
        }
        return this.acx;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getMediaPlayerType() {
        return this.acw.getMediaPlayerType();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final long getPlayDuration() {
        return this.acw.getPlayDuration();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final String getStateString(int i2) {
        return com.kwad.components.core.video.b.getStateString(i2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVideoHeight() {
        return this.acw.getVideoHeight();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVideoWidth() {
        return this.acw.getVideoWidth();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final int getVolume() {
        return 0;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void initMediaPlayer(@NonNull PlayVideoInfo playVideoInfo, @NonNull IKsMediaPlayerView iKsMediaPlayerView) {
        if (!(iKsMediaPlayerView instanceof b)) {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
            return;
        }
        DetailVideoView detailVideoViewTI = ((b) iKsMediaPlayerView).tI();
        this.mDetailVideoView = detailVideoViewTI;
        this.mContext = detailVideoViewTI.getContext().getApplicationContext();
        this.acw.a(d.a(playVideoInfo), this.mDetailVideoView);
        int i2 = this.acC;
        if (i2 != -1) {
            setVideoAdaptStrategy(i2);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPlaying() {
        return this.acw.isPlaying();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPrepared() {
        return this.acw.isPrepared();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean isPreparing() {
        return this.acw.isPreparing();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void notifyOnInfoListener(IMediaPlayer iMediaPlayer, int i2, int i3) {
        if (iMediaPlayer instanceof c) {
            this.acw.a(((c) iMediaPlayer).tJ(), i2, i3);
        } else {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void onPlayStateChanged(int i2) {
        this.acw.onPlayStateChanged(i2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final boolean pause() {
        return this.acw.pause();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void prepareAsync() {
        this.acw.prepareAsync();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acA = onInfoListener;
        if (this.acz == null) {
            c.d dVar = new c.d() { // from class: com.kwad.components.core.offline.b.c.a.2
                @Override // com.kwad.sdk.core.video.a.c.d
                public final boolean m(int i2, int i3) {
                    if (a.this.acA != null) {
                        return a.this.acA.onInfo(a.this.getMediaPlayer(), i2, i3);
                    }
                    return false;
                }
            };
            this.acz = dVar;
            this.acw.a(dVar);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerVideoMuteStateListener(VideoMuteStateChangeListener videoMuteStateChangeListener) {
        this.acy = videoMuteStateChangeListener;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void registerVideoPlayStateListener(OfflineVideoPlayStateListener offlineVideoPlayStateListener) {
        this.acw.c(d.a(offlineVideoPlayStateListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release(ReleaseCallback releaseCallback, boolean z2) {
        this.acw.a(d.a(releaseCallback), z2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void releaseAsync() {
        Context context = this.mContext;
        if (context != null) {
            com.kwad.components.core.t.a.aO(context).b(this.CH);
        }
        this.acw.releaseAsync();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void removeInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.acw.b(d.a(getMediaPlayer(), onInfoListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void resetAndPlay(PlayVideoInfo playVideoInfo) {
        com.kwad.components.core.video.b bVar = this.acw;
        d.a(playVideoInfo);
        bVar.xp();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void restart() {
        this.acw.restart();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void resume() {
        this.acw.resume();
        if (this.qO || (this.acB && this.CE)) {
            Context context = this.mContext;
            if (context != null) {
                com.kwad.components.core.t.a.aO(context).bd(this.acB);
            }
            if (this.acB && this.CE) {
                this.CE = false;
                setAudioEnabled(true);
                this.qO = true;
            } else if (this.CE) {
                setAudioEnabled(false);
            }
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void seekTo(long j2) {
        this.acw.seekTo(j2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setAudioEnabled(final boolean z2) {
        Context context;
        if (z2 && (context = this.mContext) != null) {
            com.kwad.components.core.t.a.aO(context).bd(true);
        }
        if (z2 == this.qO) {
            com.kwad.sdk.core.video.a.a.a.fs("autoVoice");
        } else {
            this.qO = z2;
            by.runOnUiThread(new bi() { // from class: com.kwad.components.core.offline.b.c.a.1
                @Override // com.kwad.sdk.utils.bi
                public final void doTask() {
                    a.this.acw.setAudioEnabled(z2);
                    if (a.this.acy != null) {
                        a.this.acy.onMuteStateChanged(!z2);
                    }
                }
            });
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setClickCoordForOpaque(float f2, float f3) {
        this.acw.setClickCoordForOpaque(f2, f3);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setDataSource(@NonNull PlayVideoInfo playVideoInfo) {
        this.acw.b(d.a(playVideoInfo));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setForceGetAudioFocus(boolean z2) {
        this.acB = z2;
        Context context = this.mContext;
        if (context != null) {
            com.kwad.components.core.t.a.aO(context).a(tH());
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setIsAlphaVideoPlayer(boolean z2) {
        this.acw.setIsAlphaVideoPlayer(z2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setRadius(float f2, float f3, float f4, float f5) {
        this.acw.setRadius(f2, f3, f4, f5);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setSpeed(float f2) {
        this.acw.setSpeed(f2);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setSurface(Surface surface) {
        this.acw.setSurface(surface);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setTKPlayer() {
        this.acw.setTKPlayer();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setVideoAdaptStrategy(int i2) {
        this.acC = i2;
        DetailVideoView detailVideoView = this.mDetailVideoView;
        if (detailVideoView != null) {
            detailVideoView.g(true, i2);
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void setVolume(float f2, float f3) {
        this.acw.setVolume(f2, f3);
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void start() {
        this.acw.start();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void stopAndPrepareAsync() {
        this.acw.stopAndPrepareAsync();
    }

    public final com.kwad.components.core.video.b tG() {
        return this.acw;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void unRegisterOnInfoListener() {
        this.acA = null;
        c.d dVar = this.acz;
        if (dVar != null) {
            this.acw.b(dVar);
            this.acz = null;
        }
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void unRegisterVideoPlayStateListener(OfflineVideoPlayStateListener offlineVideoPlayStateListener) {
        this.acw.d(d.a(offlineVideoPlayStateListener));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void updateKsPlayLogParam(KsPlayerLogParams ksPlayerLogParams) {
        this.acw.a(d.a(ksPlayerLogParams));
    }

    public static /* synthetic */ boolean b(a aVar, boolean z2) {
        aVar.qO = false;
        return false;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release(ReleaseCallback releaseCallback) {
        this.acw.a(d.a(releaseCallback));
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void start(long j2) {
        this.acw.start(j2);
    }

    public final a a(@NonNull com.kwad.components.core.video.b bVar) {
        az.checkNotNull(bVar);
        this.acw = bVar;
        return this;
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void release() {
        this.acw.release();
    }

    @Override // com.kwad.components.offline.api.core.video.IKsMediaPlayer
    public final void initMediaPlayer(@NonNull PlayVideoInfo playVideoInfo, boolean z2, boolean z3, @NonNull IKsMediaPlayerView iKsMediaPlayerView) {
        if (!(iKsMediaPlayerView instanceof b)) {
            com.kwad.sdk.core.d.c.e("KsMediaPlayer", "videoView not instanceof KsMediaPlayerView");
        } else {
            this.acw.a(d.a(playVideoInfo), z2, z3, ((b) iKsMediaPlayerView).tI());
        }
    }
}
