package com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.beizi.fusion.R;
import com.beizi.fusion.aq;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.VideoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.je;
import com.beizi.fusion.jf;
import com.beizi.fusion.jn;
import com.beizi.fusion.kf;
import com.beizi.fusion.ne;
import com.beizi.fusion.oe;
import com.beizi.fusion.sh;
import com.beizi.fusion.zi;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ScopeVideoView extends ScopeViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private VideoView f12881e;

    /* renamed from: f, reason: collision with root package name */
    private MediaPlayer f12882f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f12883g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f12884h;

    /* renamed from: i, reason: collision with root package name */
    private ProgressBar f12885i;

    /* renamed from: j, reason: collision with root package name */
    private i f12886j;

    /* renamed from: k, reason: collision with root package name */
    private ImageView f12887k;

    /* renamed from: l, reason: collision with root package name */
    private View f12888l;

    /* renamed from: m, reason: collision with root package name */
    private int f12889m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f12890n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f12891o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f12892p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f12893q;

    /* renamed from: r, reason: collision with root package name */
    private h f12894r;

    /* renamed from: s, reason: collision with root package name */
    private d f12895s;

    /* renamed from: t, reason: collision with root package name */
    private final j f12896t;

    /* renamed from: u, reason: collision with root package name */
    private final jf f12897u;

    /* renamed from: v, reason: collision with root package name */
    private final g f12898v;

    /* renamed from: w, reason: collision with root package name */
    private final Handler f12899w;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Exception {
            super.handleMessage(message);
            if (message.what == 1 && ScopeVideoView.this.f12881e != null && (message.obj instanceof File)) {
                ScopeVideoView.this.f12881e.setVideoPath(((File) message.obj).getAbsolutePath());
                ScopeVideoView.this.a((File) message.obj);
            }
            if (message.what == 2 && ScopeVideoView.this.f12881e != null && (message.obj instanceof String)) {
                ScopeVideoView.this.f12881e.setVideoURI(Uri.parse((String) message.obj));
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ScopeVideoView.this.h();
        }
    }

    public class c implements View.OnClickListener {

        public class a implements e {
            public a() {
            }

            @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.e
            public void a(boolean z2) {
                if (z2) {
                    ScopeVideoView.this.f12887k.setImageResource(R.drawable.asnp_voice_off);
                } else {
                    ScopeVideoView.this.f12887k.setImageResource(R.drawable.asnp_voice_on);
                }
            }
        }

        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ScopeVideoView.this.switchVoice(new a());
        }
    }

    public interface d {
        boolean a();

        boolean b();

        boolean c();

        int d();
    }

    public interface e {
        void a(boolean z2);
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        private final ScopeVideoView f12906a;

        public /* synthetic */ g(ScopeVideoView scopeVideoView, a aVar) {
            this(scopeVideoView);
        }

        private g(ScopeVideoView scopeVideoView) {
            this.f12906a = scopeVideoView;
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        private final MediaPlayer f12907a;

        /* renamed from: c, reason: collision with root package name */
        private final jf f12909c;

        /* renamed from: e, reason: collision with root package name */
        private final b f12911e;

        /* renamed from: f, reason: collision with root package name */
        private View f12912f;

        /* renamed from: g, reason: collision with root package name */
        private Handler f12913g;

        /* renamed from: b, reason: collision with root package name */
        private final int f12908b = 1;

        /* renamed from: h, reason: collision with root package name */
        private boolean f12914h = false;

        /* renamed from: d, reason: collision with root package name */
        private final HandlerThread f12910d = new HandlerThread("VideoProgressHandlerThread");

        public class a extends Handler {
            public a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    if (h.this.f12907a != null) {
                        h hVar = h.this;
                        int iB = hVar.b(hVar.f12907a);
                        if (h.this.f12909c != null) {
                            h.this.f12909c.a(kf.a.VIDEO_PROCESS, h.this.f12912f, Integer.valueOf(iB));
                        }
                        if (h.this.f12911e != null) {
                            h.this.f12911e.a(iB);
                        }
                        if (iB < h.this.f12907a.getDuration()) {
                            h.this.c();
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }

        public interface b {
            void a(int i2);
        }

        public h(View view, MediaPlayer mediaPlayer, jf jfVar, b bVar) {
            this.f12907a = mediaPlayer;
            this.f12912f = view;
            this.f12909c = jfVar;
            this.f12911e = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int b(MediaPlayer mediaPlayer) {
            if (mediaPlayer != null) {
                try {
                    return mediaPlayer.getCurrentPosition();
                } catch (IllegalStateException unused) {
                }
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            Handler handler;
            if (!a(this.f12907a) || (handler = this.f12913g) == null) {
                return;
            }
            handler.sendEmptyMessageDelayed(1, 1000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            if (this.f12914h) {
                return;
            }
            this.f12914h = true;
            this.f12910d.start();
            this.f12913g = new a(this.f12910d.getLooper());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            Handler handler = this.f12913g;
            if (handler == null || !handler.hasMessages(1)) {
                return;
            }
            this.f12913g.removeMessages(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f12914h = false;
            this.f12910d.quitSafely();
            Handler handler = this.f12913g;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f12912f = null;
        }

        private boolean a(MediaPlayer mediaPlayer) {
            if (mediaPlayer == null) {
                return false;
            }
            try {
                return mediaPlayer.isPlaying();
            } catch (IllegalStateException unused) {
                return false;
            }
        }
    }

    public enum i {
        VIDEO_PLAYING,
        VIDEO_PAUSE,
        VIDEO_STANDBY,
        VIDEO_IDLE,
        VIDEO_RESUME
    }

    public class j implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {

        public class a implements h.b {

            /* renamed from: com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView$j$a$a, reason: collision with other inner class name */
            public class RunnableC0149a implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f12924a;

                public RunnableC0149a(int i2) {
                    this.f12924a = i2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ScopeVideoView.this.f12885i.setProgress(this.f12924a);
                }
            }

            public a() {
            }

            @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.h.b
            public void a(int i2) {
                ScopeVideoView.this.f12885i.post(new RunnableC0149a(i2));
            }
        }

        private j() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            ScopeVideoView.this.f12890n = true;
            ScopeVideoView.this.f12889m = 0;
            ScopeVideoView.this.f12897u.a(kf.a.VIDEO_FINISHED, ScopeVideoView.this, Integer.valueOf(mediaPlayer.getDuration()));
            ScopeVideoView.this.f12886j = i.VIDEO_STANDBY;
            if (ScopeVideoView.this.f12883g.getVisibility() != 0 && (ScopeVideoView.this.f12895s == null || ScopeVideoView.this.f12895s.b())) {
                ScopeVideoView.this.f12883g.setVisibility(0);
                ScopeVideoView.this.f12883g.setImageResource(R.drawable.asnp_video_replay_icon);
            }
            ScopeVideoView.this.e();
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
            ScopeVideoView.this.m();
            jf jfVar = ScopeVideoView.this.f12897u;
            kf.a aVar = kf.a.VIDEO_ERROR;
            ScopeVideoView scopeVideoView = ScopeVideoView.this;
            jfVar.a(aVar, scopeVideoView, Integer.valueOf(scopeVideoView.a(mediaPlayer)));
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
            if (ScopeVideoView.this.f12888l != null) {
                ScopeVideoView scopeVideoView = ScopeVideoView.this;
                scopeVideoView.removeView(scopeVideoView.f12888l);
            }
            ScopeVideoView.this.f12882f = mediaPlayer;
            ScopeVideoView scopeVideoView2 = ScopeVideoView.this;
            scopeVideoView2.f12894r = new h(scopeVideoView2, mediaPlayer, scopeVideoView2.f12897u, new a());
            ScopeVideoView.this.f12894r.d();
            ScopeVideoView.this.f12885i.setMax(mediaPlayer.getDuration());
            if (ScopeVideoView.this.f12891o) {
                mediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                mediaPlayer.setVolume(1.0f, 1.0f);
            }
            if (ScopeVideoView.this.f12886j == i.VIDEO_IDLE) {
                ScopeVideoView.this.f12886j = i.VIDEO_STANDBY;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                ScopeVideoView.this.f12882f.seekTo(ScopeVideoView.this.f12889m, 3);
            } else {
                ScopeVideoView.this.f12882f.seekTo(ScopeVideoView.this.f12889m);
            }
            if (ScopeVideoView.this.f12886j == i.VIDEO_RESUME) {
                ScopeVideoView.this.f12886j = i.VIDEO_STANDBY;
                ScopeVideoView.this.i();
            } else if (!ScopeVideoView.this.d()) {
                ScopeVideoView.this.f12883g.setImageResource(android.R.drawable.ic_media_play);
            } else {
                ScopeVideoView.this.c();
                ScopeVideoView.this.i();
            }
        }

        public /* synthetic */ j(ScopeVideoView scopeVideoView, a aVar) {
            this();
        }
    }

    public ScopeVideoView(Context context) {
        super(context);
        this.f12886j = i.VIDEO_IDLE;
        this.f12889m = 0;
        this.f12890n = false;
        this.f12891o = false;
        this.f12892p = false;
        this.f12893q = false;
        a aVar = null;
        this.f12896t = new j(this, aVar);
        this.f12897u = new jf();
        this.f12898v = new g(this, aVar);
        this.f12899w = new a(Looper.getMainLooper());
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayVideoFilePath(File file) throws Exception {
        if (!g()) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.obj = file;
            this.f12899w.sendMessage(messageObtain);
            return;
        }
        VideoView videoView = this.f12881e;
        if (videoView != null) {
            videoView.setVideoPath(file.getAbsolutePath());
            a(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayVideoUrl(String str) {
        if (g()) {
            VideoView videoView = this.f12881e;
            if (videoView != null) {
                videoView.setVideoURI(Uri.parse(str));
                return;
            }
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.obj = str;
        this.f12899w.sendMessage(messageObtain);
    }

    public boolean alreadyPlay() {
        return this.f12886j == i.VIDEO_PLAYING;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void bindRenderModel(RenderModel renderModel) {
        super.bindRenderModel(renderModel);
        ViewModel viewModel = renderModel.getViewModel();
        if (viewModel != null) {
            this.f12893q = viewModel.getReplay() == 1;
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void fillContent(je.a aVar) {
        a(aVar);
    }

    public g getVideoController() {
        return this.f12898v;
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewDestroy() {
        VideoView videoView = this.f12881e;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        h hVar = this.f12894r;
        if (hVar != null) {
            hVar.b();
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewPause(boolean z2) {
        c(false);
        this.f12897u.b();
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void onViewResume(boolean z2) {
        d(false);
        this.f12897u.a();
    }

    public void registerVideoObserver(kf kfVar) {
        jf jfVar = this.f12897u;
        if (jfVar != null) {
            jfVar.a(kfVar);
        }
    }

    @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeViewGroup, com.beizi.fusion.je
    public void setExpressRoot(ScopeExpressContainer scopeExpressContainer) {
        super.setExpressRoot(scopeExpressContainer);
        ScopeExpressContainer.d.a(scopeExpressContainer, this);
    }

    public void setMediaConfig(d dVar) {
        if (dVar != null) {
            this.f12895s = dVar;
            if (!dVar.b()) {
                this.f12883g.setVisibility(8);
                this.f12885i.setVisibility(8);
            }
            if (this.f12881e != null) {
                if (dVar.a()) {
                    j();
                    this.f12887k.setImageResource(R.drawable.asnp_voice_off);
                } else {
                    k();
                    this.f12887k.setImageResource(R.drawable.asnp_voice_on);
                }
            }
        }
    }

    public void switchVoice(e eVar) {
        if (this.f12891o) {
            k();
        } else {
            j();
        }
        if (eVar != null) {
            eVar.a(this.f12891o);
        }
    }

    public class f implements ne, oe {

        /* renamed from: a, reason: collision with root package name */
        private boolean f12904a;

        private f() {
            this.f12904a = false;
        }

        @Override // com.beizi.fusion.ne
        public synchronized void a(String str, File file) {
            if (file != null) {
                if (file.exists()) {
                    try {
                        file.setLastModified(System.currentTimeMillis());
                    } catch (IllegalArgumentException | SecurityException unused) {
                    }
                    if (!this.f12904a) {
                        ScopeVideoView.this.setPlayVideoFilePath(file);
                    }
                    ScopeVideoView.this.f12897u.a(kf.a.VIDEO_PREPARED, ScopeVideoView.this, 0);
                }
            }
        }

        @Override // com.beizi.fusion.oe
        public synchronized void b(String str) {
            this.f12904a = true;
            ScopeVideoView.this.setPlayVideoUrl(str);
        }

        public /* synthetic */ f(ScopeVideoView scopeVideoView, a aVar) {
            this();
        }

        @Override // com.beizi.fusion.ne
        public void a(String str) {
            if (this.f12904a) {
                return;
            }
            ScopeVideoView.this.f12897u.a(kf.a.VIDEO_ERROR, ScopeVideoView.this, 0);
        }
    }

    private synchronized void c(boolean z2) {
        d dVar;
        if (z2) {
            try {
                this.f12892p = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.f12886j == i.VIDEO_PLAYING) {
            this.f12886j = i.VIDEO_PAUSE;
            int currentPosition = this.f12881e.getCurrentPosition();
            if (this.f12889m == 0 || currentPosition != 0) {
                this.f12889m = currentPosition;
            }
            this.f12881e.pause();
            if (this.f12883g.getVisibility() != 0 && ((dVar = this.f12895s) == null || dVar.b())) {
                this.f12883g.setImageResource(android.R.drawable.ic_media_play);
                this.f12883g.setVisibility(0);
            }
            h hVar = this.f12894r;
            if (hVar != null) {
                hVar.a();
            }
        }
    }

    private synchronized void d(boolean z2) {
        if (z2) {
            try {
                this.f12892p = true;
            } finally {
            }
        }
        if (!this.f12890n && this.f12892p) {
            i iVar = this.f12886j;
            if (iVar == i.VIDEO_STANDBY) {
                c();
                i();
            } else if (iVar == i.VIDEO_PAUSE) {
                this.f12881e.resume();
                this.f12886j = i.VIDEO_RESUME;
                if (this.f12883g.getVisibility() == 0) {
                    this.f12883g.setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        d dVar = this.f12895s;
        if (dVar != null) {
            this.f12893q = dVar.c();
        }
        if (!this.f12893q) {
            this.f12884h.setVisibility(0);
            return;
        }
        this.f12890n = false;
        c();
        i();
    }

    private void f() {
        this.f12881e = new VideoView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View view = new View(getContext());
        this.f12888l = view;
        view.setBackgroundColor(-1);
        layoutParams.addRule(13, -1);
        addView(this.f12881e, layoutParams);
        addView(this.f12888l, new ViewGroup.LayoutParams(-1, -1));
        this.f12885i = new ProgressBar(getContext(), null, android.R.attr.progressBarStyleHorizontal);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, jn.a.a(getContext(), 2.0f));
        layoutParams2.addRule(12, -1);
        addView(this.f12885i, layoutParams2);
        ImageView imageView = new ImageView(getContext());
        this.f12884h = imageView;
        addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        this.f12884h.setVisibility(8);
        a();
        b();
    }

    private boolean g() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        if (!this.f12890n && this.f12892p && this.f12886j == i.VIDEO_STANDBY && jn.a.a(this.f12881e, 50)) {
            l();
            if (this.f12883g.getVisibility() == 0) {
                this.f12883g.setVisibility(8);
            }
        }
    }

    private void j() {
        MediaPlayer mediaPlayer = this.f12882f;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        }
        this.f12891o = true;
    }

    private void k() {
        MediaPlayer mediaPlayer = this.f12882f;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
        this.f12891o = false;
    }

    private synchronized void l() {
        try {
            if (this.f12889m == 0) {
                this.f12897u.a(kf.a.VIDEO_START, this, 0);
            }
            this.f12884h.setVisibility(8);
            this.f12881e.start();
            this.f12886j = i.VIDEO_PLAYING;
            h hVar = this.f12894r;
            if (hVar != null) {
                hVar.c();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void m() {
        this.f12881e.stopPlayback();
    }

    public void h() {
        if (this.f12886j == i.VIDEO_PLAYING) {
            c(true);
        }
        if (this.f12886j == i.VIDEO_STANDBY) {
            if (this.f12890n) {
                this.f12890n = false;
            }
            c();
            i();
        }
        if (this.f12886j == i.VIDEO_PAUSE) {
            d(true);
        }
    }

    private void b() {
        ImageView imageView = new ImageView(getContext());
        this.f12887k = imageView;
        imageView.setOnClickListener(new c());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(jn.a.a(getContext(), 20.0f), jn.a.a(getContext(), 20.0f));
        layoutParams.leftMargin = jn.a.a(getContext(), 5.0f);
        layoutParams.topMargin = jn.a.a(getContext(), 5.0f);
        this.f12887k.setImageResource(R.drawable.asnp_voice_off);
        addView(this.f12887k, layoutParams);
        this.f12887k.setVisibility(8);
    }

    private void a() {
        ImageView imageView = new ImageView(getContext());
        this.f12883g = imageView;
        imageView.setOnClickListener(new b());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(jn.a.a(getContext(), 50.0f), jn.a.a(getContext(), 50.0f));
        layoutParams.addRule(13, -1);
        addView(this.f12883g, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        d dVar = this.f12895s;
        if (dVar == null) {
            return false;
        }
        int iD = dVar.d();
        return iD == 0 || (iD == 1 && zi.b(getContext()));
    }

    public ScopeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12886j = i.VIDEO_IDLE;
        this.f12889m = 0;
        this.f12890n = false;
        this.f12891o = false;
        this.f12892p = false;
        this.f12893q = false;
        a aVar = null;
        this.f12896t = new j(this, aVar);
        this.f12897u = new jf();
        this.f12898v = new g(this, aVar);
        this.f12899w = new a(Looper.getMainLooper());
        f();
    }

    private String a(AssetModel assetModel) {
        if (assetModel != null && assetModel.getVideo() != null) {
            VideoModel video = assetModel.getVideo();
            String url = video.getUrl();
            String adm = video.getAdm();
            String curl = video.getCurl();
            return !TextUtils.isEmpty(url) ? url : !TextUtils.isEmpty(adm) ? adm : !TextUtils.isEmpty(curl) ? curl : "";
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f12892p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file) throws Exception {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(10000L, 2);
                if (frameAtTime != null) {
                    this.f12884h.setImageBitmap(frameAtTime);
                    this.f12884h.setVisibility(0);
                }
                androidx.core.content.res.a.a(mediaMetadataRetriever);
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public ScopeVideoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12886j = i.VIDEO_IDLE;
        this.f12889m = 0;
        this.f12890n = false;
        this.f12891o = false;
        this.f12892p = false;
        this.f12893q = false;
        a aVar = null;
        this.f12896t = new j(this, aVar);
        this.f12897u = new jf();
        this.f12898v = new g(this, aVar);
        this.f12899w = new a(Looper.getMainLooper());
        f();
    }

    private void a(je.a aVar) {
        RenderModel renderModel = this.f12927b;
        if (renderModel != null && renderModel.getViewModel() != null) {
            if (this.f12927b.getViewModel().isMute()) {
                j();
            } else {
                k();
            }
        }
        VideoView videoView = this.f12881e;
        if (videoView != null) {
            videoView.setOnPreparedListener(this.f12896t);
            this.f12881e.setOnCompletionListener(this.f12896t);
            this.f12881e.setOnErrorListener(this.f12896t);
            String strA = a(this.f12928c);
            if (TextUtils.isEmpty(strA)) {
                if (aVar != null) {
                    aVar.a(this.f12927b.getId());
                }
            } else {
                if (aVar != null) {
                    aVar.b(this.f12927b.getId());
                }
                f fVar = new f(this, null);
                aq.b().a(getContext(), strA, sh.TEMPORARY, fVar, fVar);
            }
        }
    }

    public ScopeVideoView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f12886j = i.VIDEO_IDLE;
        this.f12889m = 0;
        this.f12890n = false;
        this.f12891o = false;
        this.f12892p = false;
        this.f12893q = false;
        a aVar = null;
        this.f12896t = new j(this, aVar);
        this.f12897u = new jf();
        this.f12898v = new g(this, aVar);
        this.f12899w = new a(Looper.getMainLooper());
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            try {
                return mediaPlayer.getCurrentPosition();
            } catch (IllegalStateException unused) {
            }
        }
        return 0;
    }
}
