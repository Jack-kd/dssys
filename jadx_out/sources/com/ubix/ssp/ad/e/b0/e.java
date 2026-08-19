package com.ubix.ssp.ad.e.b0;

import android.content.Context;
import android.media.AudioManager;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.b0.h.f;
import com.ubix.ssp.ad.g.k.j;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes5.dex */
public abstract class e extends FrameLayout implements View.OnClickListener, View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f46640a = false;

    /* renamed from: b, reason: collision with root package name */
    public static int f46641b;

    /* renamed from: c, reason: collision with root package name */
    public static com.ubix.ssp.ad.e.b0.h.f f46642c;

    /* renamed from: A, reason: collision with root package name */
    protected volatile c f46643A;

    /* renamed from: B, reason: collision with root package name */
    public j f46644B;

    /* renamed from: C, reason: collision with root package name */
    private b f46645C;

    /* renamed from: D, reason: collision with root package name */
    protected ArrayList<Integer> f46646D;

    /* renamed from: E, reason: collision with root package name */
    private long f46647E;

    /* renamed from: F, reason: collision with root package name */
    protected boolean f46648F;

    /* renamed from: G, reason: collision with root package name */
    public a f46649G;

    /* renamed from: d, reason: collision with root package name */
    public boolean f46650d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f46651e;

    /* renamed from: f, reason: collision with root package name */
    public int f46652f;

    /* renamed from: g, reason: collision with root package name */
    public int f46653g;

    /* renamed from: h, reason: collision with root package name */
    public com.ubix.ssp.ad.e.b0.a f46654h;

    /* renamed from: i, reason: collision with root package name */
    public int f46655i;

    /* renamed from: j, reason: collision with root package name */
    public int f46656j;

    /* renamed from: k, reason: collision with root package name */
    public com.ubix.ssp.ad.e.b0.b f46657k;

    /* renamed from: l, reason: collision with root package name */
    public int f46658l;

    /* renamed from: m, reason: collision with root package name */
    protected long f46659m;

    /* renamed from: n, reason: collision with root package name */
    protected int f46660n;

    /* renamed from: o, reason: collision with root package name */
    public com.ubix.ssp.ad.e.b0.k.a f46661o;

    /* renamed from: p, reason: collision with root package name */
    public com.ubix.ssp.ad.e.b0.j.a f46662p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f46663q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f46664r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f46665s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f46666t;

    /* renamed from: u, reason: collision with root package name */
    public int f46667u;

    /* renamed from: v, reason: collision with root package name */
    public int f46668v;

    /* renamed from: w, reason: collision with root package name */
    protected volatile Timer f46669w;

    /* renamed from: x, reason: collision with root package name */
    protected int f46670x;

    /* renamed from: y, reason: collision with root package name */
    protected int f46671y;

    /* renamed from: z, reason: collision with root package name */
    protected AudioManager f46672z;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        private final e f46673a;

        public a(e eVar) {
            this.f46673a = eVar;
        }

        public void a() {
            u.b("onPrepared  [" + hashCode() + "] " + e.this.f46647E);
            e eVar = e.this;
            eVar.f46652f = 3;
            if (!eVar.f46664r) {
                eVar.setState(5);
                return;
            }
            f();
            if (e.this.f46654h != null) {
                u.b("play current url:" + e.this.f46654h.a());
                if (e.this.f46654h.a().toString().toLowerCase().contains("mp3") || e.this.f46654h.a().toString().toLowerCase().contains("wma") || e.this.f46654h.a().toString().toLowerCase().contains("aac") || e.this.f46654h.a().toString().toLowerCase().contains("m4a") || e.this.f46654h.a().toString().toLowerCase().contains("wav")) {
                    b(false);
                }
            }
        }

        public void b() {
            e eVar = e.this;
            if (eVar.f46648F || eVar.getState() == 5) {
                return;
            }
            e eVar2 = e.this;
            eVar2.f46657k.a(eVar2.f46666t);
        }

        public void c() {
            u.b("onStateAutoComplete  [" + hashCode() + "] ");
            e eVar = e.this;
            eVar.f46652f = 6;
            eVar.g();
            j jVar = e.this.f46644B;
            if (jVar != null) {
                jVar.c(0);
            }
            e eVar2 = e.this;
            eVar2.f46648F = true;
            eVar2.f46664r = false;
        }

        public void d() {
            u.b("onStateError  [" + hashCode() + "] ");
            e eVar = e.this;
            eVar.f46652f = 7;
            eVar.g();
            e eVar2 = e.this;
            j jVar = eVar2.f46644B;
            if (jVar != null) {
                jVar.a(0, eVar2.f46652f);
            }
        }

        public void e() {
            u.b("onStatePause [" + hashCode() + "] " + e.this.f46648F + " seekto" + e.this.f46647E);
            e eVar = e.this;
            if (eVar.f46648F) {
                eVar.f46657k.a(eVar.f46647E);
                return;
            }
            eVar.f46647E = 0 == eVar.getCurrentPositionWhenPlaying() ? e.this.f46647E : e.this.getCurrentPositionWhenPlaying();
            e eVar2 = e.this;
            eVar2.f46647E = eVar2.f46647E >= 0 ? e.this.f46647E : 0L;
            u.b("onStatePause resumePosition=" + e.this.f46647E + " [" + hashCode() + "] ");
            e eVar3 = e.this;
            eVar3.f46652f = 5;
            j jVar = eVar3.f46644B;
            if (jVar != null) {
                jVar.g(0);
            }
            try {
                e eVar4 = e.this;
                if (eVar4.f46672z != null && eVar4.f46645C != null) {
                    e eVar5 = e.this;
                    eVar5.f46672z.abandonAudioFocus(eVar5.f46645C);
                }
                e.this.f46657k.a(0.0f, 0.0f);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public void f() {
            u.b("onStatePlaying  [" + hashCode() + "] " + e.this.f46647E);
            e eVar = e.this;
            int i2 = eVar.f46652f;
            if (i2 == 3 || i2 == 5) {
                long j2 = eVar.f46647E;
                if (j2 > 0) {
                    e.this.f46657k.a(j2);
                } else {
                    e eVar2 = e.this;
                    eVar2.f46657k.a(eVar2.f46666t);
                }
            }
            e.this.f46652f = 4;
        }

        public void a(int i2) {
        }

        public void b(int i2, int i3) {
            u.b("onInfo what - " + i2 + " extra - " + i3 + ";" + e.this.f46652f + ";" + e.this.f46651e);
            if (i2 == 3 || i2 == 9090) {
                e eVar = e.this;
                if (eVar.f46651e) {
                    j jVar = eVar.f46644B;
                    if (jVar != null) {
                        jVar.j(0);
                    }
                } else {
                    this.f46673a.f46651e = true;
                    j jVar2 = eVar.f46644B;
                    if (jVar2 != null) {
                        jVar2.h(0);
                    }
                }
                int i4 = e.this.f46652f;
                if (i4 == 3 || i4 == 4 || i4 == 2) {
                    b(true);
                }
            }
        }

        public void c(int i2, int i3) {
            if (i2 * i3 == 0) {
                return;
            }
            e eVar = e.this;
            com.ubix.ssp.ad.e.b0.k.a aVar = eVar.f46661o;
            if (aVar != null) {
                int i4 = eVar.f46658l;
                if (i4 != 0) {
                    aVar.setRotation(i4);
                }
                e.this.f46661o.a(i2, i3);
            }
            e eVar2 = e.this;
            com.ubix.ssp.ad.e.b0.j.a aVar2 = eVar2.f46662p;
            if (aVar2 != null) {
                int i5 = eVar2.f46658l;
                if (i5 != 0) {
                    aVar2.setRotation(i5);
                }
                e.this.f46662p.a(i2, i3);
            }
        }

        public void a(int i2, int i3) {
            u.b("onError " + i2 + " - " + i3 + " [" + hashCode() + "] ");
            if (i2 == 38 || i3 == -38 || i2 == -38 || i3 == 38 || i3 == -19) {
                return;
            }
            d();
        }

        public void b(boolean z2) {
            e eVar = e.this;
            if (!eVar.a(eVar.f46646D)) {
                u.b("onStatePlaying  [" + hashCode() + "]   isRealPlaying " + z2);
                e eVar2 = e.this;
                if (eVar2.f46652f == 3) {
                    long jA = eVar2.f46654h != null ? f.a(eVar2.getContext(), e.this.f46654h.a()) : 0L;
                    if (jA != 0) {
                        e.this.f46657k.a(jA);
                    } else {
                        e eVar3 = e.this;
                        eVar3.f46657k.a(eVar3.f46666t);
                    }
                }
                e.this.f46652f = 4;
            }
            if (z2) {
                e.this.o();
                this.f46673a.f46651e = true;
                try {
                    e eVar4 = e.this;
                    if (eVar4.f46666t) {
                        return;
                    }
                    if (eVar4.f46672z == null) {
                        eVar4.f46672z = (AudioManager) eVar4.getContext().getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
                    }
                    e eVar5 = e.this;
                    eVar5.f46672z.requestAudioFocus(eVar5.f46645C, 3, 2);
                    e.this.f46657k.a(1.0f, 1.0f);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public void a(boolean z2) {
            e eVar;
            long duration;
            if (z2) {
                eVar = e.this;
                duration = eVar.getDuration();
            } else {
                eVar = e.this;
                duration = eVar.getCurrentPositionWhenPlaying();
            }
            eVar.f46647E = duration;
            u.b("onAutoCompletion  [" + hashCode() + "] " + e.this.f46647E);
            e.this.g();
            c();
            try {
                f.a(e.this.getContext()).getWindow().clearFlags(128);
                e eVar2 = e.this;
                eVar2.f46672z.abandonAudioFocus(eVar2.f46645C);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            e eVar3 = e.this;
            if (eVar3.f46654h != null) {
                f.a(eVar3.getContext(), e.this.f46654h.a(), 0L);
            }
        }
    }

    public static class b implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a, reason: collision with root package name */
        SoftReference<e> f46675a;

        public b(e eVar) {
            this.f46675a = new SoftReference<>(eVar);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i2) {
            StringBuilder sb;
            String str;
            e eVar;
            String str2;
            SoftReference<e> softReference;
            e eVar2;
            if (i2 != -3) {
                try {
                    if (i2 == -2) {
                        SoftReference<e> softReference2 = this.f46675a;
                        if (softReference2 == null || (eVar = softReference2.get()) == null) {
                            return;
                        }
                        if (eVar.f46652f != 4 || eVar.f46664r) {
                            str2 = "AUDIO_FOCUS_LOSS_TRANSIENT pause play -false";
                        } else {
                            eVar.f46652f = 5;
                            str2 = "AUDIO_FOCUS_LOSS_TRANSIENT pause play true";
                        }
                        u.b(str2);
                        return;
                    }
                    if (i2 != -1) {
                        if (i2 != 1 || (softReference = this.f46675a) == null || (eVar2 = softReference.get()) == null || eVar2.f46652f == 4 || !eVar2.f46650d) {
                            return;
                        }
                        eVar2.f46652f = 4;
                        eVar2.f46657k.a(this.f46675a.get().f46666t);
                        return;
                    }
                    sb = new StringBuilder();
                    str = "AUDIO_FOCUS_LOSS [";
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            } else {
                sb = new StringBuilder();
                str = "AUDIO_FOCUS_LOSS_TRANSIENT_CAN_DUCK [";
            }
            sb.append(str);
            sb.append(hashCode());
            sb.append("]");
            u.b(sb.toString());
        }
    }

    public static class c extends TimerTask {

        /* renamed from: a, reason: collision with root package name */
        WeakReference<e> f46676a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (c.this.a() != null && c.this.a().f46652f == 4 && c.this.a().f46651e) {
                        long currentPositionWhenPlaying = c.this.a().getCurrentPositionWhenPlaying();
                        long duration = c.this.a().getDuration();
                        int i2 = (int) ((100 * currentPositionWhenPlaying) / (duration == 0 ? 1L : duration));
                        if (c.this.a().f46644B != null) {
                            c.this.a().f46644B.a(i2, currentPositionWhenPlaying, duration);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public c(e eVar) {
            this.f46676a = new WeakReference<>(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e a() {
            WeakReference<e> weakReference = this.f46676a;
            if (weakReference == null || weakReference.get() == null) {
                return null;
            }
            return this.f46676a.get();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (a() != null) {
                a().post(new a());
            }
        }
    }

    public static class d implements com.ubix.ssp.ad.e.b0.h.s.c {
        @Override // com.ubix.ssp.ad.e.b0.h.s.c
        public String a(String str) {
            return str.hashCode() + "";
        }
    }

    public e(Context context, int i2) {
        this(context, i2, 0L);
    }

    private void d() {
        u.b("addSurfaceView [" + this.f46660n + "] ");
        com.ubix.ssp.ad.e.b0.j.a aVar = this.f46662p;
        if (aVar == null) {
            this.f46662p = new com.ubix.ssp.ad.e.b0.j.a(getContext());
        } else {
            removeView(aVar);
        }
        this.f46662p.setId(900131);
        this.f46662p.setSurfaceViewCallback(this.f46657k);
        addView(this.f46662p, new FrameLayout.LayoutParams(-1, -1, 17));
        setBackgroundColor(-16777216);
    }

    private void e() {
        u.b("addTextureView [" + this.f46660n + "] ");
        com.ubix.ssp.ad.e.b0.k.a aVar = this.f46661o;
        if (aVar != null) {
            removeView(aVar);
        }
        com.ubix.ssp.ad.e.b0.k.a aVar2 = new com.ubix.ssp.ad.e.b0.k.a(getContext().getApplicationContext());
        this.f46661o = aVar2;
        aVar2.setId(900130);
        this.f46661o.setSurfaceTextureListener(this.f46657k);
        addView(this.f46661o, new FrameLayout.LayoutParams(-1, -1, 17));
        setBackgroundColor(-16777216);
    }

    public boolean f() {
        return true;
    }

    public void g() {
        u.b("---cancelProgressTimer");
        if (this.f46669w != null) {
            this.f46669w.cancel();
            this.f46669w = null;
        }
        if (this.f46643A != null) {
            this.f46643A.cancel();
            this.f46643A = null;
        }
    }

    public long getCurrentPositionWhenPlaying() {
        int i2 = this.f46652f;
        if (i2 != 4 && i2 != 5) {
            return 0L;
        }
        try {
            return this.f46657k.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public long getDuration() {
        try {
            return this.f46657k.b();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public a getMediaPlayerCallback() {
        return this.f46649G;
    }

    public int getState() {
        return this.f46652f;
    }

    public void h() {
        this.f46670x = getContext().getResources().getDisplayMetrics().widthPixels;
        this.f46671y = getContext().getResources().getDisplayMetrics().heightPixels;
        this.f46652f = -1;
        this.f46667u = -1;
        this.f46649G = new a(this);
        l();
    }

    public void i() {
        if (this.f46657k != null) {
            try {
                int i2 = this.f46652f;
                if (i2 == 5 || i2 == 0) {
                    return;
                }
                setState(5);
                this.f46657k.d();
                g();
            } catch (Exception e2) {
                u.b(e2.toString());
            }
        }
    }

    public void j() {
        com.ubix.ssp.ad.e.b0.b bVar = this.f46657k;
        if (bVar != null) {
            try {
                if (this.f46648F) {
                    bVar.a(this.f46647E);
                    return;
                }
                if (this.f46652f != 4) {
                    u.b("----state:" + getState() + ";" + this.f46647E);
                    setState(4);
                    long j2 = this.f46647E;
                    if (0 != j2) {
                        this.f46657k.a(j2);
                    } else {
                        this.f46657k.a(this.f46666t);
                        this.f46644B.h(0);
                    }
                    o();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void k() {
        u.a("onStartPlayError");
        m();
        l();
    }

    public void l() {
        u.b("startVideo [" + this.f46660n + "]--");
        try {
            this.f46657k = new com.ubix.ssp.ad.e.b0.c(this);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f46672z = (AudioManager) getContext().getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
        if (this.f46668v == 1) {
            d();
        } else {
            e();
        }
        this.f46652f = 1;
        this.f46667u = 1;
        u.b("onStatePreparing  [" + this.f46660n + "] ");
    }

    public void m() {
        u.b("--reset  [" + this.f46660n + "] ");
        int i2 = this.f46652f;
        if (i2 == 4 || i2 == 5) {
            long currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
            if (this.f46654h != null) {
                f.a(getContext(), this.f46654h.a(), currentPositionWhenPlaying);
            }
        }
        g();
        n();
        ((AudioManager) getContext().getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO)).abandonAudioFocus(this.f46645C);
        com.ubix.ssp.ad.e.b0.b bVar = this.f46657k;
        if (bVar != null) {
            bVar.e();
        }
    }

    public void n() {
        u.b("onStateNormal  [" + this.f46660n + "] ");
        this.f46652f = 0;
        this.f46667u = 0;
        g();
    }

    public void o() {
        u.b("---startProgressTimer" + this.f46667u);
        if (this.f46667u == 6) {
            return;
        }
        g();
        this.f46669w = new Timer();
        this.f46643A = new c(this);
        this.f46669w.schedule(this.f46643A, 0L, 300L);
    }

    public void setAutoPlay(boolean z2) {
        this.f46664r = z2;
    }

    public void setCanRePlay(boolean z2) {
        this.f46665s = z2;
    }

    public void setDisplayViewType(int i2) {
        this.f46668v = i2;
    }

    public void setIsMuteStart(boolean z2) {
        this.f46666t = z2;
    }

    public void setIsShowPlayButton(boolean z2) {
        this.f46663q = z2;
    }

    public void setMute(boolean z2) {
        b bVar;
        try {
            this.f46666t = z2;
            if (!z2) {
                if (this.f46672z == null) {
                    this.f46672z = (AudioManager) getContext().getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
                }
                this.f46672z.requestAudioFocus(this.f46645C, 3, 2);
                this.f46657k.a(1.0f, 1.0f);
                return;
            }
            AudioManager audioManager = this.f46672z;
            if (audioManager != null && (bVar = this.f46645C) != null) {
                audioManager.abandonAudioFocus(bVar);
            }
            this.f46657k.a(0.0f, 0.0f);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setState(int i2) {
        this.f46652f = i2;
        a(i2, 0, 0);
    }

    public void setVideoImageDisplayType(int i2) {
        f46641b = i2;
    }

    public void setVideoViewListener(j jVar) {
        this.f46644B = jVar;
    }

    public e(Context context, int i2, long j2) {
        super(context);
        this.f46652f = -1;
        this.f46653g = -1;
        this.f46655i = 0;
        this.f46656j = 0;
        this.f46658l = 0;
        this.f46659m = 0L;
        this.f46663q = false;
        this.f46664r = false;
        this.f46665s = false;
        this.f46666t = false;
        this.f46667u = -1;
        this.f46668v = 1;
        this.f46645C = new b(this);
        this.f46646D = null;
        this.f46648F = false;
        this.f46647E = j2;
        setDisplayViewType(i2);
        a(context);
        h();
    }

    public void a(int i2, int i3, int i4) {
        u.b("state:" + i2);
        if (i2 == 0) {
            n();
            return;
        }
        if (i2 == 4) {
            this.f46649G.b(false);
            return;
        }
        if (i2 == 5) {
            this.f46649G.e();
        } else if (i2 == 6) {
            this.f46649G.c();
        } else {
            if (i2 != 7) {
                return;
            }
            this.f46649G.d();
        }
    }

    public static void a(Context context) {
        if (f46642c == null) {
            f46642c = new f.b(context.getApplicationContext()).a(k.f(context.getApplicationContext())).a(new d()).a();
        }
    }

    public void a(com.ubix.ssp.ad.e.b0.a aVar, int i2) {
        this.f46660n = hashCode();
        this.f46654h = aVar;
        this.f46653g = i2;
        n();
        if (this.f46657k.c()) {
            return;
        }
        this.f46657k.a(aVar);
    }

    public void a(String str, String str2) {
        u.b("ori :" + str);
        if (str.startsWith("http")) {
            str = f46642c.d(str);
        }
        u.b("new :" + str);
        a(new com.ubix.ssp.ad.e.b0.a(str, str2), 0);
    }

    public void a(String str, String str2, int i2) {
        if (str.startsWith("http")) {
            str = f46642c.d(str);
        }
        a(new com.ubix.ssp.ad.e.b0.a(str, str2), i2);
    }

    public boolean a(List<Integer> list) {
        return com.ubix.ssp.ad.e.a0.y.c.a((View) this, true, false, list) || com.ubix.ssp.ad.e.a0.y.c.a(this);
    }
}
