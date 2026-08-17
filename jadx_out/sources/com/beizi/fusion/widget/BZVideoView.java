package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
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
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.beizi.fusion.R;
import com.beizi.fusion.q1;
import com.beizi.fusion.rf;
import com.beizi.fusion.vo;
import com.beizi.fusion.x3;
import com.beizi.fusion.yp;
import java.io.File;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class BZVideoView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private VideoView f17002a;

    /* renamed from: b, reason: collision with root package name */
    private View f17003b;

    /* renamed from: c, reason: collision with root package name */
    private MediaPlayer f17004c;

    /* renamed from: d, reason: collision with root package name */
    private ImageView f17005d;

    /* renamed from: e, reason: collision with root package name */
    private ImageView f17006e;

    /* renamed from: f, reason: collision with root package name */
    private ProgressBar f17007f;

    /* renamed from: g, reason: collision with root package name */
    private l f17008g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView f17009h;

    /* renamed from: i, reason: collision with root package name */
    private int f17010i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f17011j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f17012k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f17013l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f17014m;

    /* renamed from: n, reason: collision with root package name */
    private k f17015n;

    /* renamed from: o, reason: collision with root package name */
    private final m f17016o;

    /* renamed from: p, reason: collision with root package name */
    private final j f17017p;

    /* renamed from: q, reason: collision with root package name */
    private int f17018q;

    /* renamed from: r, reason: collision with root package name */
    private i f17019r;

    /* renamed from: s, reason: collision with root package name */
    private final Handler f17020s;

    /* renamed from: t, reason: collision with root package name */
    private int f17021t;

    /* renamed from: u, reason: collision with root package name */
    private long f17022u;

    /* renamed from: v, reason: collision with root package name */
    private ViewTreeObserver.OnScrollChangedListener f17023v;

    /* renamed from: w, reason: collision with root package name */
    private ScheduledFuture f17024w;

    /* renamed from: x, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f17025x;

    /* renamed from: y, reason: collision with root package name */
    private boolean f17026y;

    /* renamed from: z, reason: collision with root package name */
    private Runnable f17027z;

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                if (message.what == 1 && BZVideoView.this.f17002a != null && (message.obj instanceof File)) {
                    BZVideoView.this.f17002a.setVideoPath(((File) message.obj).getAbsolutePath());
                    BZVideoView.this.a((File) message.obj);
                }
                if (message.what == 2 && BZVideoView.this.f17002a != null && (message.obj instanceof String)) {
                    BZVideoView.this.f17002a.setVideoURI(Uri.parse((String) message.obj));
                }
            } catch (Exception unused) {
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BZVideoView.this.j();
        }
    }

    public class c implements rf.f {
        public c() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                if (BZVideoView.this.f17008g == l.VIDEO_PLAYING || bitmap == null || BZVideoView.this.f17006e == null) {
                    return;
                }
                BZVideoView.this.f17006e.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements yp.e {
        public d() {
        }

        @Override // com.beizi.fusion.yp.e
        public void a(String str) {
            BZVideoView.this.setPlayVideoUrl(str);
        }

        @Override // com.beizi.fusion.yp.e
        public void a() {
            if (BZVideoView.this.f17006e != null) {
                if (BZVideoView.this.f17002a != null) {
                    BZVideoView.this.f17002a.setVisibility(8);
                }
                BZVideoView.this.f17006e.setVisibility(0);
            }
        }
    }

    public class e implements ViewTreeObserver.OnScrollChangedListener {
        public e() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (vo.a() - BZVideoView.this.f17022u < 1000) {
                    return;
                }
                int[] iArr = new int[2];
                if (BZVideoView.this.f17002a != null) {
                    BZVideoView.this.f17002a.getLocationOnScreen(iArr);
                    int i2 = iArr[1];
                    if (i2 >= BZVideoView.this.f17021t || i2 <= 0) {
                        BZVideoView.this.onViewPause(true);
                    } else {
                        BZVideoView.this.onViewResume(true);
                    }
                }
                BZVideoView.this.f17022u = vo.a();
            } catch (Exception unused) {
            }
        }
    }

    public class f implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BZVideoView.this.onViewResume(true);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BZVideoView.this.onViewPause(true);
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BZVideoView.this.onViewPause(true);
            }
        }

        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (BZVideoView.this.h()) {
                    if (!BZVideoView.this.f17026y && BZVideoView.this.f17020s != null) {
                        BZVideoView.this.f17020s.post(new a());
                    }
                    BZVideoView.this.f17026y = true;
                    return;
                }
                if (BZVideoView.this.f17026y && BZVideoView.this.f17020s != null) {
                    BZVideoView.this.f17020s.post(new b());
                }
                BZVideoView.this.f17026y = false;
                if (BZVideoView.this.f17008g != l.VIDEO_PLAYING || BZVideoView.this.f17020s == null) {
                    return;
                }
                BZVideoView.this.f17020s.post(new c());
            } catch (Exception unused) {
            }
        }
    }

    public interface g {
        boolean a();

        boolean b();
    }

    public interface h {
        void a(boolean z2);
    }

    public interface i {
        void a();

        void a(int i2, int i3);

        void b();
    }

    public static class j {

        /* renamed from: a, reason: collision with root package name */
        private final BZVideoView f17037a;

        public /* synthetic */ j(BZVideoView bZVideoView, a aVar) {
            this(bZVideoView);
        }

        private j(BZVideoView bZVideoView) {
            this.f17037a = bZVideoView;
        }
    }

    public static class k {

        /* renamed from: a, reason: collision with root package name */
        private final MediaPlayer f17038a;

        /* renamed from: d, reason: collision with root package name */
        private final b f17041d;

        /* renamed from: e, reason: collision with root package name */
        private Handler f17042e;

        /* renamed from: b, reason: collision with root package name */
        private final int f17039b = 1;

        /* renamed from: f, reason: collision with root package name */
        private boolean f17043f = false;

        /* renamed from: c, reason: collision with root package name */
        private final HandlerThread f17040c = new HandlerThread("VideoProgressHandlerThread");

        public class a extends Handler {
            public a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    if (k.this.f17038a != null) {
                        int currentPosition = k.this.f17038a.getCurrentPosition();
                        if (k.this.f17041d != null) {
                            k.this.f17041d.a(currentPosition);
                        }
                        if (currentPosition < k.this.f17038a.getDuration()) {
                            k.this.c();
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }

        public interface b {
            void a(int i2);
        }

        public k(MediaPlayer mediaPlayer, b bVar) {
            this.f17038a = mediaPlayer;
            this.f17041d = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            try {
                Handler handler = this.f17042e;
                if (handler == null || !handler.hasMessages(1)) {
                    return;
                }
                this.f17042e.removeMessages(1);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            try {
                this.f17043f = false;
                HandlerThread handlerThread = this.f17040c;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                }
                Handler handler = this.f17042e;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            Handler handler;
            try {
                if (!a(this.f17038a) || (handler = this.f17042e) == null) {
                    return;
                }
                handler.sendEmptyMessageDelayed(1, 1000L);
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            try {
                if (this.f17043f) {
                    return;
                }
                this.f17043f = true;
                HandlerThread handlerThread = this.f17040c;
                if (handlerThread != null) {
                    handlerThread.start();
                    this.f17042e = new a(this.f17040c.getLooper());
                }
            } catch (Exception unused) {
            }
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

    public enum l {
        VIDEO_PLAYING,
        VIDEO_PAUSE,
        VIDEO_STANDBY,
        VIDEO_IDLE,
        VIDEO_RESUME
    }

    public class m implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {

        public class a implements k.b {

            /* renamed from: com.beizi.fusion.widget.BZVideoView$m$a$a, reason: collision with other inner class name */
            public class RunnableC0176a implements Runnable {

                /* renamed from: a, reason: collision with root package name */
                final /* synthetic */ int f17053a;

                public RunnableC0176a(int i2) {
                    this.f17053a = i2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (BZVideoView.this.f17007f != null) {
                        BZVideoView.this.f17007f.setProgress(this.f17053a);
                    }
                    if (BZVideoView.this.f17019r != null) {
                        BZVideoView.this.f17019r.a(BZVideoView.this.f17018q, this.f17053a);
                    }
                }
            }

            public a() {
            }

            @Override // com.beizi.fusion.widget.BZVideoView.k.b
            public void a(int i2) {
                try {
                    if (BZVideoView.this.f17007f != null) {
                        BZVideoView.this.f17007f.post(new RunnableC0176a(i2));
                    }
                } catch (Exception unused) {
                }
            }
        }

        private m() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                BZVideoView.this.f17011j = true;
                BZVideoView.this.f17010i = 0;
                BZVideoView.this.f17008g = l.VIDEO_STANDBY;
                if (BZVideoView.this.f17005d != null && BZVideoView.this.f17005d.getVisibility() != 0) {
                    BZVideoView.m(BZVideoView.this);
                    BZVideoView.this.f17005d.setVisibility(0);
                    BZVideoView.this.f17005d.setImageResource(R.mipmap.beizi_icon_video_replay);
                }
                if (BZVideoView.this.f17019r != null) {
                    BZVideoView.this.f17019r.a();
                }
                BZVideoView.this.c();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
            BZVideoView.this.q();
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                BZVideoView.this.f17004c = mediaPlayer;
                BZVideoView.this.f17015n = new k(mediaPlayer, new a());
                if (BZVideoView.this.f17015n != null) {
                    BZVideoView.this.f17015n.d();
                }
                if (mediaPlayer != null) {
                    BZVideoView.this.f17018q = mediaPlayer.getDuration();
                    if (BZVideoView.this.f17007f != null) {
                        BZVideoView.this.f17007f.setMax(BZVideoView.this.f17018q);
                    }
                    if (BZVideoView.this.f17012k) {
                        mediaPlayer.setVolume(0.0f, 0.0f);
                    } else {
                        mediaPlayer.setVolume(1.0f, 1.0f);
                    }
                    if (BZVideoView.this.f17019r != null) {
                        BZVideoView.this.f17019r.b();
                    }
                }
                if (BZVideoView.this.f17008g == l.VIDEO_IDLE) {
                    BZVideoView.this.f17008g = l.VIDEO_STANDBY;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    if (mediaPlayer != null) {
                        mediaPlayer.seekTo(BZVideoView.this.f17010i, 3);
                    }
                } else if (BZVideoView.this.f17002a != null) {
                    BZVideoView.this.f17002a.seekTo(BZVideoView.this.f17010i);
                }
                if (BZVideoView.this.f17008g == l.VIDEO_RESUME) {
                    BZVideoView.this.f17008g = l.VIDEO_STANDBY;
                    BZVideoView.this.k();
                } else if (BZVideoView.this.b()) {
                    BZVideoView.this.a();
                    BZVideoView.this.k();
                } else if (BZVideoView.this.f17005d != null) {
                    BZVideoView.this.f17005d.setImageResource(R.mipmap.beizi_icon_video_replay);
                }
                if (BZVideoView.this.f17003b != null) {
                    BZVideoView.this.f17003b.setVisibility(8);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ m(BZVideoView bZVideoView, a aVar) {
            this();
        }
    }

    public BZVideoView(Context context) {
        super(context);
        this.f17008g = l.VIDEO_IDLE;
        this.f17010i = 0;
        this.f17011j = false;
        this.f17012k = false;
        this.f17013l = false;
        this.f17014m = true;
        a aVar = null;
        this.f17016o = new m(this, aVar);
        this.f17017p = new j(this, aVar);
        this.f17020s = new a(Looper.getMainLooper());
        this.f17023v = new e();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        return true;
    }

    public static /* synthetic */ g m(BZVideoView bZVideoView) {
        bZVideoView.getClass();
        return null;
    }

    private void setPlayVideoFilePath(File file) {
        try {
            if (!g()) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                messageObtain.obj = file;
                this.f17020s.sendMessage(messageObtain);
                return;
            }
            VideoView videoView = this.f17002a;
            if (videoView != null) {
                videoView.setVideoPath(file.getAbsolutePath());
                a(file);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayVideoUrl(String str) {
        try {
            ImageView imageView = this.f17006e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (g()) {
                VideoView videoView = this.f17002a;
                if (videoView != null) {
                    videoView.setVideoURI(Uri.parse(str));
                    return;
                }
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.obj = str;
            this.f17020s.sendMessage(messageObtain);
        } catch (Exception unused) {
        }
    }

    public void addPlayButton() {
        try {
            ImageView imageView = new ImageView(getContext());
            this.f17005d = imageView;
            imageView.setOnClickListener(new b());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(vo.a(getContext(), 60.0f), vo.a(getContext(), 60.0f));
            layoutParams.addRule(13, -1);
            addView(this.f17005d, layoutParams);
        } catch (Exception unused) {
        }
    }

    public boolean alreadyPlay() {
        return this.f17008g == l.VIDEO_PLAYING;
    }

    public j getVideoController() {
        return this.f17017p;
    }

    public void initVideoResource(String str, String str2, boolean z2) {
        try {
            if (z2) {
                n();
            } else {
                o();
            }
            if (this.f17006e != null && !TextUtils.isEmpty(str2)) {
                rf.a(getContext()).a(str2, new c());
            }
            VideoView videoView = this.f17002a;
            if (videoView != null) {
                videoView.setOnPreparedListener(this.f17016o);
                this.f17002a.setOnCompletionListener(this.f17016o);
                this.f17002a.setOnErrorListener(this.f17016o);
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (this.f17002a != null) {
                    this.f17021t = vo.g(getContext());
                    this.f17002a.getViewTreeObserver().addOnScrollChangedListener(this.f17023v);
                }
                yp.c().a(getContext(), str, new d());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        onViewPause(true);
        d();
    }

    public void onViewDestroy() {
        try {
            VideoView videoView = this.f17002a;
            if (videoView != null) {
                videoView.stopPlayback();
                if (this.f17023v != null) {
                    this.f17002a.getViewTreeObserver().removeOnScrollChangedListener(this.f17023v);
                }
            }
            k kVar = this.f17015n;
            if (kVar != null) {
                kVar.b();
            }
            e();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void onViewPause(boolean z2) {
        i();
    }

    public void onViewResume(boolean z2) {
        l();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            onViewResume(true);
        } else if (i2 == 4 || i2 == 8) {
            onViewPause(true);
        }
    }

    public void setMediaConfig(g gVar) {
        if (gVar != null) {
            try {
                if (!gVar.b()) {
                    ImageView imageView = this.f17005d;
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    ProgressBar progressBar = this.f17007f;
                    if (progressBar != null) {
                        progressBar.setVisibility(8);
                    }
                }
                if (this.f17002a != null) {
                    if (gVar.a()) {
                        n();
                        ImageView imageView2 = this.f17009h;
                        if (imageView2 != null) {
                            imageView2.setImageResource(R.drawable.beizi_voice_off);
                            return;
                        }
                        return;
                    }
                    o();
                    ImageView imageView3 = this.f17009h;
                    if (imageView3 != null) {
                        imageView3.setImageResource(R.drawable.beizi_voice_on);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void setPlayProgressCallback(i iVar) {
        this.f17019r = iVar;
    }

    public void switchVoice(h hVar) {
        try {
            if (this.f17012k) {
                o();
            } else {
                n();
            }
            if (hVar != null) {
                hVar.a(this.f17012k);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (this.f17014m) {
                this.f17011j = false;
                a();
                k();
            } else {
                ImageView imageView = this.f17006e;
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private synchronized void d() {
        try {
            ScheduledFuture scheduledFuture = this.f17024w;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                this.f17024w = null;
            }
            this.f17027z = null;
        } catch (Exception unused) {
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void e() {
        d();
    }

    private void f() {
        try {
            this.f17002a = new VideoView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13, -1);
            addView(this.f17002a, layoutParams);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.f17003b = frameLayout;
            frameLayout.setBackgroundColor(Color.parseColor("#000000"));
            addView(this.f17003b, layoutParams);
            this.f17007f = new ProgressBar(getContext(), null, android.R.attr.progressBarStyleHorizontal);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, vo.a(getContext(), 2.0f));
            layoutParams2.addRule(12, -1);
            addView(this.f17007f, layoutParams2);
            ImageView imageView = new ImageView(getContext());
            this.f17006e = imageView;
            addView(imageView, new ViewGroup.LayoutParams(-1, -1));
            this.f17006e.setVisibility(8);
        } catch (Exception unused) {
        }
    }

    private boolean g() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        try {
            VideoView videoView = this.f17002a;
            if (videoView != null && videoView.getVisibility() == 0 && this.f17002a.getParent() != null) {
                if (!q1.i().w() && !this.f17002a.hasWindowFocus()) {
                    return false;
                }
                Rect rect = new Rect();
                if (!this.f17002a.getGlobalVisibleRect(rect)) {
                    return false;
                }
                int iHeight = rect.height() * rect.width();
                int height = this.f17002a.getHeight() * this.f17002a.getWidth();
                return height > 0 && iHeight * 100 >= height * 50;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private void i() {
        try {
            if (this.f17008g == l.VIDEO_PLAYING) {
                this.f17008g = l.VIDEO_PAUSE;
                VideoView videoView = this.f17002a;
                if (videoView != null) {
                    int currentPosition = videoView.getCurrentPosition();
                    if (this.f17010i == 0 || currentPosition != 0) {
                        this.f17010i = currentPosition;
                    }
                    this.f17002a.pause();
                }
                ImageView imageView = this.f17005d;
                if (imageView != null && imageView.getVisibility() != 0) {
                    this.f17005d.setImageResource(R.mipmap.beizi_icon_video_replay);
                    this.f17005d.setVisibility(0);
                }
                k kVar = this.f17015n;
                if (kVar != null) {
                    kVar.a();
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        try {
            if (!this.f17011j && this.f17013l && this.f17008g == l.VIDEO_STANDBY && h()) {
                p();
                ImageView imageView = this.f17005d;
                if (imageView != null && imageView.getVisibility() == 0) {
                    this.f17005d.setVisibility(8);
                }
                k kVar = this.f17015n;
                if (kVar != null) {
                    kVar.c();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void l() {
        try {
            if (!this.f17011j && this.f17013l && h()) {
                l lVar = this.f17008g;
                if (lVar == l.VIDEO_STANDBY) {
                    a();
                    k();
                    return;
                }
                if (lVar == l.VIDEO_PAUSE) {
                    VideoView videoView = this.f17002a;
                    if (videoView != null) {
                        videoView.resume();
                    }
                    this.f17008g = l.VIDEO_RESUME;
                    ImageView imageView = this.f17005d;
                    if (imageView == null || imageView.getVisibility() != 0) {
                        return;
                    }
                    this.f17005d.setVisibility(8);
                }
            }
        } catch (Exception unused) {
        }
    }

    private synchronized void m() {
        try {
            d();
            if (this.f17025x == null) {
                this.f17025x = x3.c().d();
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f17025x;
            if (scheduledThreadPoolExecutor != null && (scheduledThreadPoolExecutor.isShutdown() || this.f17025x.isTerminated())) {
                this.f17025x = x3.c().d();
            }
            f fVar = new f();
            this.f17027z = fVar;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = this.f17025x;
            if (scheduledThreadPoolExecutor2 != null) {
                this.f17024w = scheduledThreadPoolExecutor2.scheduleWithFixedDelay(fVar, 0L, 1000L, TimeUnit.MILLISECONDS);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            throw th;
        }
    }

    private void n() {
        try {
            MediaPlayer mediaPlayer = this.f17004c;
            if (mediaPlayer != null) {
                mediaPlayer.setVolume(0.0f, 0.0f);
            }
            this.f17012k = true;
        } catch (Exception unused) {
        }
    }

    private void o() {
        try {
            MediaPlayer mediaPlayer = this.f17004c;
            if (mediaPlayer != null) {
                mediaPlayer.setVolume(1.0f, 1.0f);
            }
            this.f17012k = false;
        } catch (Exception unused) {
        }
    }

    private void p() {
        try {
            ImageView imageView = this.f17006e;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            VideoView videoView = this.f17002a;
            if (videoView != null) {
                videoView.start();
            }
            this.f17008g = l.VIDEO_PLAYING;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            VideoView videoView = this.f17002a;
            if (videoView != null) {
                videoView.stopPlayback();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void j() {
        try {
            if (this.f17008g == l.VIDEO_PLAYING) {
                i();
            }
            if (this.f17008g == l.VIDEO_STANDBY) {
                if (this.f17011j) {
                    this.f17011j = false;
                }
                a();
                k();
            }
            if (this.f17008g == l.VIDEO_PAUSE) {
                l();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f17013l = true;
    }

    public BZVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17008g = l.VIDEO_IDLE;
        this.f17010i = 0;
        this.f17011j = false;
        this.f17012k = false;
        this.f17013l = false;
        this.f17014m = true;
        a aVar = null;
        this.f17016o = new m(this, aVar);
        this.f17017p = new j(this, aVar);
        this.f17020s = new a(Looper.getMainLooper());
        this.f17023v = new e();
        f();
    }

    public BZVideoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17008g = l.VIDEO_IDLE;
        this.f17010i = 0;
        this.f17011j = false;
        this.f17012k = false;
        this.f17013l = false;
        this.f17014m = true;
        a aVar = null;
        this.f17016o = new m(this, aVar);
        this.f17017p = new j(this, aVar);
        this.f17020s = new a(Looper.getMainLooper());
        this.f17023v = new e();
        f();
    }
}
