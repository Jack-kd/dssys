package com.sigmob.sdk.videoplayer;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.nativead.C1357m;
import com.sigmob.sdk.nativead.InterfaceC1356l;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAds;
import java.lang.reflect.InvocationTargetException;
import java.util.Timer;
import java.util.TimerTask;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class f extends RelativeLayout implements View.OnClickListener, View.OnTouchListener, SeekBar.OnSeekBarChangeListener, h {

    /* renamed from: V, reason: collision with root package name */
    private static final String f39036V = "android.media.VOLUME_CHANGED_ACTION";

    /* renamed from: W, reason: collision with root package name */
    private static final String f39037W = "android.media.EXTRA_VOLUME_STREAM_TYPE";

    /* renamed from: a, reason: collision with root package name */
    public static final String f39038a = "VideoPlayerView";

    /* renamed from: b, reason: collision with root package name */
    public static final int f39039b = -1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f39040c = 0;

    /* renamed from: d, reason: collision with root package name */
    public static final int f39041d = 1;

    /* renamed from: e, reason: collision with root package name */
    public static final int f39042e = 2;

    /* renamed from: f, reason: collision with root package name */
    public static final int f39043f = 3;

    /* renamed from: g, reason: collision with root package name */
    public static final int f39044g = 4;

    /* renamed from: h, reason: collision with root package name */
    public static final int f39045h = 5;

    /* renamed from: i, reason: collision with root package name */
    public static final int f39046i = 6;

    /* renamed from: j, reason: collision with root package name */
    public static final int f39047j = 7;

    /* renamed from: k, reason: collision with root package name */
    public static final int f39048k = 1;

    /* renamed from: l, reason: collision with root package name */
    public static final int f39049l = 2;

    /* renamed from: m, reason: collision with root package name */
    public static final int f39050m = 3;

    /* renamed from: n, reason: collision with root package name */
    public static final int f39051n = 0;

    /* renamed from: o, reason: collision with root package name */
    public static final int f39052o = 80;

    /* renamed from: p, reason: collision with root package name */
    public static boolean f39053p = true;

    /* renamed from: q, reason: collision with root package name */
    public static int f39054q = 6;

    /* renamed from: r, reason: collision with root package name */
    public static int f39055r = 1;

    /* renamed from: s, reason: collision with root package name */
    public static boolean f39056s = false;

    /* renamed from: t, reason: collision with root package name */
    public static boolean f39057t = true;

    /* renamed from: u, reason: collision with root package name */
    public static int f39058u;

    /* renamed from: A, reason: collision with root package name */
    public int f39059A;

    /* renamed from: B, reason: collision with root package name */
    public Class f39060B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f39061C;

    /* renamed from: D, reason: collision with root package name */
    public i f39062D;

    /* renamed from: E, reason: collision with root package name */
    public int f39063E;

    /* renamed from: F, reason: collision with root package name */
    public int f39064F;

    /* renamed from: G, reason: collision with root package name */
    public int f39065G;

    /* renamed from: H, reason: collision with root package name */
    public long f39066H;

    /* renamed from: I, reason: collision with root package name */
    public ImageView f39067I;

    /* renamed from: J, reason: collision with root package name */
    public ImageView f39068J;

    /* renamed from: K, reason: collision with root package name */
    public ImageView f39069K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f39070L;

    /* renamed from: M, reason: collision with root package name */
    protected long f39071M;

    /* renamed from: N, reason: collision with root package name */
    protected Timer f39072N;

    /* renamed from: O, reason: collision with root package name */
    protected int f39073O;

    /* renamed from: P, reason: collision with root package name */
    protected int f39074P;

    /* renamed from: Q, reason: collision with root package name */
    protected AudioManager f39075Q;

    /* renamed from: R, reason: collision with root package name */
    protected a f39076R;

    /* renamed from: S, reason: collision with root package name */
    protected boolean f39077S;

    /* renamed from: T, reason: collision with root package name */
    l f39078T;

    /* renamed from: U, reason: collision with root package name */
    public AudioManager.OnAudioFocusChangeListener f39079U;
    private ViewGroup aa;
    private ViewGroup ab;
    private ViewGroup ac;
    private ViewGroup ad;
    private ViewGroup ae;
    private ViewGroup af;
    private ViewGroup ag;
    private ViewGroup ah;
    private ProgressBar ai;
    private ImageView aj;
    private InterfaceC1356l ak;
    private boolean al;
    private InterfaceC1382b am;
    private ImageView an;
    private int ao;
    private int ap;
    private c aq;
    private boolean ar;
    private View as;
    private boolean at;
    private View au;

    /* renamed from: v, reason: collision with root package name */
    public f f39080v;

    /* renamed from: w, reason: collision with root package name */
    public int f39081w;

    /* renamed from: x, reason: collision with root package name */
    public int f39082x;

    /* renamed from: y, reason: collision with root package name */
    public g f39083y;

    /* renamed from: z, reason: collision with root package name */
    public int f39084z;

    /* renamed from: com.sigmob.sdk.videoplayer.f$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f39086a;

        static {
            int[] iArr = new int[e.values().length];
            f39086a = iArr;
            try {
                iArr[e.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39086a[e.RETRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39086a[e.VOLUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39086a[e.FULLSCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39086a[e.BIGRETRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39086a[e.BACK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int i2 = f.this.f39081w;
            if (i2 == 4 || i2 == 5) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f39107b.a();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            long currentPositionWhenPlaying = f.this.getCurrentPositionWhenPlaying();
            long duration = f.this.getDuration();
            f.this.a((int) ((100 * currentPositionWhenPlaying) / (duration == 0 ? 1L : duration)), currentPositionWhenPlaying, duration);
        }
    }

    public interface b {
        void onVolumeChanged(int i2);
    }

    public class c extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        b f39088a;

        public c(b bVar) {
            this.f39088a = bVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int streamVolume;
            if (!f.f39036V.equals(intent.getAction()) || intent.getIntExtra(f.f39037W, -1) != 3 || this.f39088a == null || (streamVolume = ((AudioManager) f.this.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO)).getStreamVolume(3)) < 0) {
                return;
            }
            this.f39088a.onVolumeChanged(streamVolume);
        }
    }

    public f(Context context) {
        super(context.getApplicationContext());
        this.f39081w = -1;
        this.f39082x = -1;
        this.f39084z = 0;
        this.f39059A = 0;
        this.f39061C = true;
        this.f39063E = -1;
        this.f39064F = 0;
        this.f39065G = -1;
        this.f39066H = 0L;
        this.f39070L = false;
        this.f39071M = 0L;
        this.f39079U = new AudioManager.OnAudioFocusChangeListener() { // from class: com.sigmob.sdk.videoplayer.f.1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i2) {
                StringBuilder sb;
                String str;
                if (i2 == -2) {
                    sb = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS_TRANSIENT [";
                } else {
                    if (i2 != -1) {
                        return;
                    }
                    f.this.E();
                    sb = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS [";
                }
                sb.append(str);
                sb.append(hashCode());
                sb.append("]");
                SigmobLog.i(sb.toString());
            }
        };
        this.al = true;
        this.ar = false;
        a(context.getApplicationContext());
    }

    private void F() {
        try {
            i iVar = this.f39062D;
            if (iVar != null) {
                iVar.f();
            }
            Class cls = this.f39060B;
            this.f39062D = cls == null ? new j(this) : (i) cls.getConstructor(f.class).newInstance(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void A() {
    }

    public void B() {
    }

    public void C() {
        int i2;
        f fVar = this.f39080v;
        if (fVar == null || (i2 = fVar.f39081w) == 0) {
            k();
            return;
        }
        if (i2 == 5) {
            InterfaceC1356l interfaceC1356l = this.ak;
            if (interfaceC1356l != null) {
                interfaceC1356l.onVideoResume();
            }
            this.f39080v.f();
            this.f39080v.f39062D.a();
            return;
        }
        if (i2 == 3) {
            InterfaceC1356l interfaceC1356l2 = this.ak;
            if (interfaceC1356l2 != null) {
                interfaceC1356l2.onVideoStart();
            }
            this.f39080v.f39062D.a();
            this.f39080v.f();
        }
    }

    public void D() {
        f fVar = this.f39080v;
        if (fVar == null) {
            return;
        }
        int i2 = fVar.f39081w;
        if (i2 == 6 || i2 == 0 || i2 == 1 || i2 == 7) {
            E();
        } else if (i2 != 5) {
            fVar.g();
            this.f39080v.f39062D.d();
        }
    }

    public void E() {
        SigmobLog.i("releaseAllVideos");
        f fVar = this.f39080v;
        if (fVar == null) {
            return;
        }
        fVar.j();
        this.f39080v = null;
    }

    public void b() {
        SigmobLog.d("onStateNormal stat" + this.f39081w + " [" + hashCode() + "] ");
        this.f39081w = 0;
        a(this.aj, 0);
        a(this.ab, 0);
        r();
        i iVar = this.f39062D;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void c() {
        SigmobLog.d("onStatePreparing  [" + hashCode() + "] ");
        this.f39081w = 1;
        s();
    }

    public void d() {
        this.f39070L = true;
        k();
    }

    public void e() {
        if (this.f39081w == 3) {
            this.f39062D.a();
        } else {
            this.f39070L = false;
            k();
        }
    }

    public void f() {
        SigmobLog.d("onStatePlaying  [" + hashCode() + "] ");
        a(this.aj, 4);
        a(this.ab, 4);
        if (this.f39081w == 3) {
            long j2 = this.f39066H;
            if (j2 != 0) {
                this.f39062D.a(j2);
                this.f39066H = 0L;
            }
        }
        this.f39081w = 4;
        n();
    }

    public void g() {
        SigmobLog.i("onStatePause  [" + hashCode() + "] ");
        this.f39081w = 5;
        a(this.ab, 0);
        InterfaceC1356l interfaceC1356l = this.ak;
        if (interfaceC1356l != null) {
            interfaceC1356l.onVideoPause();
        }
        r();
    }

    public ViewGroup getAppContainer() {
        return this.ah;
    }

    public Context getApplicationContext() {
        Context applicationContext;
        Context context = getContext();
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext;
    }

    public ImageView getBlurImageView() {
        return this.an;
    }

    public View getBottomLayoutView() {
        return this.au;
    }

    public long getCurrentPositionWhenPlaying() {
        int i2 = this.f39081w;
        if (i2 != 4 && i2 != 5) {
            return 0L;
        }
        try {
            return this.f39062D.g();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public long getDuration() {
        i iVar = this.f39062D;
        if (iVar == null) {
            return 0L;
        }
        try {
            return iVar.j();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public int getLayoutId() {
        return ResourceUtil.getLayoutId(getContext(), "sig_video_player_layout");
    }

    public ViewGroup getSigAdView() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        while (!(viewGroup instanceof C1357m)) {
            viewGroup = (ViewGroup) getParent();
            if (viewGroup == null) {
                return viewGroup;
            }
        }
        return viewGroup;
    }

    public Bitmap getTextureBitmap() {
        l lVar = this.f39078T;
        if (lVar == null) {
            return null;
        }
        return lVar.getBitmap();
    }

    public ImageView getThumbView() {
        return this.aj;
    }

    public View getTopLayoutView() {
        return this.as;
    }

    public int getVideoHeight() {
        return this.ao;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public g getVideoPlayerDataSource() {
        return this.f39083y;
    }

    public int getVideoSurferViewHeight() {
        l lVar = this.f39078T;
        if (lVar == null) {
            return 0;
        }
        return lVar.getHeight();
    }

    public int getVideoWidth() {
        return this.ap;
    }

    public void h() {
        SigmobLog.d("onStateError  [" + hashCode() + "] ");
        this.f39081w = 7;
        r();
        a(this.f39082x == 1 ? this.ab : this.ad, 0);
    }

    public void i() {
        SigmobLog.i("onStateAutoComplete  [" + hashCode() + "] ");
        this.f39081w = 6;
        r();
        ProgressBar progressBar = this.ai;
        if (progressBar != null) {
            progressBar.setProgress(100);
        }
    }

    public void j() {
        SigmobLog.d("reset  [" + hashCode() + "] ");
        r();
        s();
        B();
        z();
        A();
        b();
        this.aa.removeAllViews();
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        i iVar = this.f39062D;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void k() {
        SigmobLog.d("startVideo [" + hashCode() + "] ");
        setCurrentVideoAdView(this);
        try {
            F();
            a(this.ad, 4);
            a(this.af, 4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            windowC.setFlags(16777216, 16777216);
            windowC.addFlags(128);
        }
        l();
        c();
    }

    public void l() {
        l lVar = this.f39078T;
        if (lVar != null) {
            this.aa.removeView(lVar);
        }
        l lVar2 = new l(getContext().getApplicationContext());
        this.f39078T = lVar2;
        lVar2.setSurfaceTextureListener(this.f39062D);
        this.aa.addView(this.f39078T, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void m() {
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            ((ViewGroup) windowC.findViewById(R.id.content)).removeView(this);
        }
    }

    public void n() {
        r();
        this.f39072N = new Timer();
        a aVar = new a();
        this.f39076R = aVar;
        this.f39072N.schedule(aVar, 0L, 300L);
        C1383c.f(com.sigmob.sdk.b.e());
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void o() {
        SigmobLog.d("onPrepared  [" + hashCode() + "] ");
        this.f39081w = 3;
        setSoundChange(this.al);
        InterfaceC1356l interfaceC1356l = this.ak;
        if (interfaceC1356l != null) {
            interfaceC1356l.onVideoLoad();
        }
        if (!this.f39070L) {
            InterfaceC1356l interfaceC1356l2 = this.ak;
            if (interfaceC1356l2 != null) {
                interfaceC1356l2.onVideoStart();
            }
            SigmobLog.d("mediaInterface start");
            f();
            this.f39062D.a();
            this.f39070L = false;
        } else if (this.ar) {
            this.aj.setImageBitmap(this.f39078T.getBitmap());
        }
        String lowerCase = this.f39083y.a().toString().toLowerCase();
        if (lowerCase.contains("mp3") || lowerCase.contains("wma") || lowerCase.contains("aac") || lowerCase.contains("m4a") || lowerCase.contains("wav")) {
            f();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        onTouch(view, null);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        int i4 = this.f39082x;
        if (i4 == 1 || i4 == 2) {
            super.onMeasure(i2, i3);
            return;
        }
        if (this.f39084z == 0 || this.f39059A == 0) {
            super.onMeasure(i2, i3);
            return;
        }
        int size = View.MeasureSpec.getSize(i2);
        int i5 = (int) ((size * this.f39059A) / this.f39084z);
        setMeasuredDimension(size, i5);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i5, com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_32BIT));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        if (z2) {
            getDuration();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        r();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        SigmobLog.d("bottomProgress onStopTrackingTouch [" + hashCode() + "] ");
        n();
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        int i2 = this.f39081w;
        if (i2 == 4 || i2 == 5) {
            long progress = (seekBar.getProgress() * getDuration()) / 100;
            this.f39065G = seekBar.getProgress();
            this.f39062D.a(progress);
            SigmobLog.d("seekTo " + progress + " [" + hashCode() + "] ");
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() != 1) {
            return false;
        }
        if (view == this.ac) {
            int i2 = this.f39082x;
            if (i2 == 0) {
                t();
                return false;
            }
            if (i2 != 1) {
                return false;
            }
            u();
            return false;
        }
        if (view == this.ae) {
            setSoundChange(!this.al);
            return false;
        }
        if (view == this.ad || view == this.af) {
            InterfaceC1356l interfaceC1356l = this.ak;
            if (interfaceC1356l != null) {
                interfaceC1356l.a();
            }
            k();
            return false;
        }
        if (view != this.ab) {
            return false;
        }
        int i3 = this.f39081w;
        if (i3 != 0) {
            if (i3 == 4) {
                SigmobLog.d("pauseVideo [" + hashCode() + "] ");
                this.f39062D.d();
                g();
            } else if (i3 == 5) {
                InterfaceC1356l interfaceC1356l2 = this.ak;
                if (interfaceC1356l2 != null) {
                    interfaceC1356l2.onVideoResume();
                }
                this.f39062D.a();
                f();
            } else if (i3 != 6) {
                if (i3 == 3) {
                    this.f39062D.a();
                    f();
                    InterfaceC1356l interfaceC1356l3 = this.ak;
                    if (interfaceC1356l3 != null) {
                        interfaceC1356l3.onVideoStart();
                    }
                }
            }
            return true;
        }
        if (!f39057t && !this.f39083y.a().toString().startsWith(com.sigmob.sdk.base.n.f36463z) && !this.f39083y.a().toString().startsWith(ServiceReference.DELIMITER) && !C1383c.a(getContext())) {
            y();
            return true;
        }
        k();
        return true;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void p() {
        Runtime.getRuntime().gc();
        InterfaceC1356l interfaceC1356l = this.ak;
        if (interfaceC1356l != null) {
            interfaceC1356l.onVideoCompleted();
        }
        SigmobLog.d("onAutoCompletion  [" + hashCode() + "] ");
        r();
        B();
        z();
        A();
        i();
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        s();
        this.f39080v = null;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void q() {
    }

    public void r() {
        Timer timer = this.f39072N;
        if (timer != null) {
            timer.cancel();
            this.f39072N = null;
        }
        a aVar = this.f39076R;
        if (aVar != null) {
            aVar.cancel();
            this.f39076R = null;
        }
        C1383c.g(com.sigmob.sdk.b.e());
    }

    public void s() {
        ProgressBar progressBar = this.ai;
        if (progressBar == null) {
            return;
        }
        progressBar.setProgress(0);
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        ViewGroup viewGroup = this.ag;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnClickListener(onClickListener);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setBufferProgress(int i2) {
    }

    public void setCurrentVideoAdView(f fVar) {
        this.f39080v = fVar;
    }

    public void setHolderImageResource(int i2) {
    }

    public void setMediaInterface(Class cls) {
        j();
        this.f39060B = cls;
    }

    @Override // android.view.View
    public void setRotation(float f2) {
        this.f39078T.setRotation(f2);
    }

    public void setScreen(int i2) {
        if (i2 == 0) {
            v();
        } else if (i2 == 1) {
            w();
        } else {
            if (i2 != 2) {
                return;
            }
            x();
        }
    }

    public void setSoundChange(boolean z2) {
        ImageView imageView;
        Context context;
        String str;
        Context contextE = com.sigmob.sdk.b.e();
        this.al = z2;
        if (z2) {
            C1383c.g(contextE);
            i iVar = this.f39062D;
            if (iVar != null) {
                iVar.a(0.0f);
            }
            imageView = this.f39069K;
            context = getContext();
            str = "sig_image_video_mute";
        } else {
            C1383c.f(contextE);
            i iVar2 = this.f39062D;
            if (iVar2 != null) {
                iVar2.a(1.0f);
            }
            imageView = this.f39069K;
            context = getContext();
            str = "sig_image_video_unmute";
        }
        imageView.setImageResource(ResourceUtil.getDrawableId(context, str));
    }

    public void setState(int i2) {
        a(i2, 0, 0);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        l lVar = this.f39078T;
        if (lVar == null) {
            return;
        }
        lVar.setSurfaceTexture(surfaceTexture);
    }

    public void setTextureViewRotation(int i2) {
        l lVar;
        f fVar = this.f39080v;
        if (fVar == null || (lVar = fVar.f39078T) == null) {
            return;
        }
        lVar.setRotation(i2);
    }

    public void setUp(String str) {
        a(new g(str, (String) null), 0);
    }

    public void setVideoAdStatusListener(InterfaceC1356l interfaceC1356l) {
        this.ak = interfaceC1356l;
    }

    public void setVideoAdViewListener(InterfaceC1382b interfaceC1382b) {
        this.am = interfaceC1382b;
    }

    public void setVideoImageDisplayType(int i2) {
        l lVar;
        f39058u = i2;
        f fVar = this.f39080v;
        if (fVar == null || (lVar = fVar.f39078T) == null) {
            return;
        }
        lVar.requestLayout();
    }

    public void t() {
        InterfaceC1382b interfaceC1382b = this.am;
        if (interfaceC1382b != null) {
            interfaceC1382b.g();
        }
        w();
        this.f39068J.setImageResource(ResourceUtil.getDrawableId(getContext(), "sig_image_video_small"));
    }

    public void u() {
        this.f39071M = System.currentTimeMillis();
        InterfaceC1382b interfaceC1382b = this.am;
        if (interfaceC1382b != null) {
            interfaceC1382b.f();
        }
        v();
        this.f39068J.setImageResource(ResourceUtil.getDrawableId(getContext(), "sig_image_video_fullscreen"));
    }

    public void v() {
        this.f39082x = 0;
    }

    public void w() {
        this.f39082x = 1;
    }

    public void x() {
        this.f39082x = 2;
    }

    public void y() {
    }

    public void z() {
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39081w = -1;
        this.f39082x = -1;
        this.f39084z = 0;
        this.f39059A = 0;
        this.f39061C = true;
        this.f39063E = -1;
        this.f39064F = 0;
        this.f39065G = -1;
        this.f39066H = 0L;
        this.f39070L = false;
        this.f39071M = 0L;
        this.f39079U = new AudioManager.OnAudioFocusChangeListener() { // from class: com.sigmob.sdk.videoplayer.f.1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i2) {
                StringBuilder sb;
                String str;
                if (i2 == -2) {
                    sb = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS_TRANSIENT [";
                } else {
                    if (i2 != -1) {
                        return;
                    }
                    f.this.E();
                    sb = new StringBuilder();
                    str = "AUDIOFOCUS_LOSS [";
                }
                sb.append(str);
                sb.append(hashCode());
                sb.append("]");
                SigmobLog.i(sb.toString());
            }
        };
        this.al = true;
        this.ar = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i2) {
        ImageView imageView;
        int drawableId;
        if (i2 == 0 || this.al) {
            imageView = this.f39069K;
            drawableId = ResourceUtil.getDrawableId(getContext(), "sig_image_video_mute");
        } else {
            imageView = this.f39069K;
            drawableId = ResourceUtil.getDrawableId(getContext(), "sig_image_video_unmute");
        }
        imageView.setImageResource(drawableId);
    }

    public void a() {
        E();
        r();
        if (this.aq == null) {
            return;
        }
        getContext().unregisterReceiver(this.aq);
        this.aq = null;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void c(int i2, int i3) {
        this.ao = i3;
        this.ap = i2;
        l lVar = this.f39078T;
        if (lVar == null) {
            return;
        }
        int i4 = this.f39064F;
        if (i4 != 0) {
            lVar.setRotation(i4);
        }
        this.f39078T.a(i2, i3);
    }

    public void a(float f2) {
        int i2;
        if (this.f39080v != null) {
            int i3 = this.f39081w;
            if ((i3 != 4 && i3 != 5) || (i2 = this.f39082x) == 1 || i2 == 2) {
                return;
            }
            t();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void b(int i2, int i3) {
        String str;
        SigmobLog.d("onInfo what - " + i2 + " extra - " + i3);
        if (i2 == 3) {
            int i4 = this.f39081w;
            if (i4 == 3 || i4 == 2) {
                f();
                return;
            }
            return;
        }
        if (i2 == 701) {
            if (this.f39081w == 4) {
                this.at = true;
                this.f39062D.d();
                g();
            }
            str = "MEDIA_INFO_BUFFERING_START";
        } else {
            if (i2 != 702) {
                return;
            }
            if (this.at) {
                this.at = false;
                this.f39062D.a();
                f();
            }
            str = "MEDIA_INFO_BUFFERING_END";
        }
        SigmobLog.d(str);
    }

    public void a(float f2, int i2) {
    }

    public void b(boolean z2) {
        this.ar = z2;
    }

    public void a(float f2, String str, long j2, String str2, long j3) {
    }

    public void a(int i2) {
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void a(int i2, int i3) {
        SigmobLog.e("onError: what = " + i2 + ", extra = " + i3);
        if (this.ak != null) {
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_PLAY_VIDEO;
            windAdError.setMessage("what = " + i2 + ", extra = " + i3);
            this.ak.onVideoError(windAdError);
        }
        if (i2 == 38 || i3 == -38 || i2 == -38 || i3 == 38 || i3 == -19) {
            return;
        }
        h();
        this.f39062D.f();
    }

    public void a(int i2, int i3, int i4) {
        if (i2 == 0) {
            b();
            return;
        }
        if (i2 == 1) {
            c();
            return;
        }
        if (i2 == 2) {
            a(i3, i4);
            return;
        }
        if (i2 == 4) {
            f();
            return;
        }
        if (i2 == 5) {
            g();
        } else if (i2 == 6) {
            i();
        } else {
            if (i2 != 7) {
                return;
            }
            h();
        }
    }

    public void a(int i2, long j2) {
        this.f39081w = 2;
        this.f39066H = j2;
        this.f39083y.f39091b = i2;
        this.f39062D.a((Surface) null);
        this.f39062D.f();
        this.f39062D.c();
    }

    public void a(int i2, long j2, long j3) {
        ProgressBar progressBar;
        if (!this.f39077S) {
            int i3 = this.f39065G;
            if (i3 != -1) {
                if (i3 > i2) {
                    return;
                } else {
                    this.f39065G = -1;
                }
            } else if (i2 != 0 && (progressBar = this.ai) != null) {
                progressBar.setProgress(i2);
            }
        }
        InterfaceC1356l interfaceC1356l = this.ak;
        if (interfaceC1356l != null) {
            interfaceC1356l.a(j2, j3);
        }
    }

    public void a(Context context) {
        View.inflate(context, getLayoutId(), this);
        this.ae = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_sound_rl"));
        this.ab = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_start_rl"));
        this.ac = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_fullscreen_rl"));
        this.ad = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_replay_rl"));
        this.f39069K = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_sound_btn"));
        this.f39067I = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_start_btn"));
        this.f39068J = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_fullscreen_btn"));
        this.aa = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_surface_container"));
        this.ah = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_app_container"));
        this.ai = (ProgressBar) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_bottom_progress"));
        this.af = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_big_replay"));
        this.aj = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_thumb"));
        this.an = (ImageView) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_blurImageView"));
        this.ag = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_native_video_back_rl"));
        this.as = findViewById(ResourceUtil.getId(getContext(), "sig_native_video_layout_top"));
        this.au = findViewById(ResourceUtil.getId(getContext(), "sig_native_video_layout_bottom"));
        this.ad.setOnClickListener(this);
        this.ae.setOnClickListener(this);
        this.ab.setOnClickListener(this);
        this.ac.setOnClickListener(this);
        this.af.setOnClickListener(this);
        this.f39073O = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f39074P = getContext().getResources().getDisplayMetrics().heightPixels;
        this.aq = new c(new b() { // from class: com.sigmob.sdk.videoplayer.n
            @Override // com.sigmob.sdk.videoplayer.f.b
            public final void onVolumeChanged(int i2) {
                this.f39106a.b(i2);
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f39036V);
        com.sigmob.sdk.base.utils.h.a(context, this.aq, intentFilter);
        this.f39081w = -1;
    }

    private void a(View view, int i2) {
        if (view == null) {
            return;
        }
        view.setVisibility(i2);
    }

    public void a(ViewGroup viewGroup) {
        try {
            f fVar = (f) getClass().getConstructor(Context.class).newInstance(getContext());
            fVar.setId(getId());
            viewGroup.addView(fVar);
            fVar.a(this.f39083y.c(), 0, this.f39060B);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }

    public void a(e eVar, boolean z2) {
        switch (AnonymousClass2.f39086a[eVar.ordinal()]) {
            case 1:
                a(this.ab, z2 ? 0 : 4);
                break;
            case 2:
                a(this.ad, z2 ? 0 : 4);
                break;
            case 3:
                a(this.ae, z2 ? 0 : 4);
                break;
            case 4:
                a(this.ac, z2 ? 0 : 4);
                break;
            case 5:
                a(this.af, z2 ? 0 : 4);
                break;
            case 6:
                a(this.ag, z2 ? 0 : 4);
                break;
        }
    }

    public void a(g gVar, int i2) {
        a(gVar, i2, (Class) null);
    }

    public void a(g gVar, int i2, Class cls) {
        if (System.currentTimeMillis() - this.f39071M < 200) {
            return;
        }
        this.f39083y = gVar;
        this.f39082x = i2;
        b();
        this.f39060B = cls;
    }

    public void a(g gVar, long j2) {
        this.f39081w = 2;
        this.f39066H = j2;
        this.f39083y = gVar;
        this.f39062D.a((Surface) null);
        this.f39062D.f();
        this.f39062D.c();
    }

    public void a(String str, String str2) {
        a(new g(str, str2), 0);
    }

    public void a(String str, String str2, int i2) {
        a(new g(str, str2), i2);
    }

    public void a(String str, String str2, int i2, Class cls) {
        a(new g(str, str2), i2, cls);
    }

    public void a(String str, String str2, long j2) {
        a(new g(str, str2), j2);
    }

    public void a(boolean z2) {
        a(this.ac, z2 ? 0 : 4);
    }
}
