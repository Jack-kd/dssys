package com.ubix.ssp.ad.d;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.UBiXVideoInteractionListener;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class f extends FrameLayout implements View.OnClickListener, View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    private com.ubix.ssp.ad.e.b0.d f45845a;

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.e.t.a.e f45846b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f45847c;

    /* renamed from: d, reason: collision with root package name */
    private ImageView f45848d;

    /* renamed from: e, reason: collision with root package name */
    private long f45849e;

    /* renamed from: f, reason: collision with root package name */
    private long f45850f;

    /* renamed from: g, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.g f45851g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f45852h;

    /* renamed from: i, reason: collision with root package name */
    private UBiXVideoInteractionListener f45853i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f45854j;

    /* renamed from: k, reason: collision with root package name */
    private double f45855k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f45856l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f45857m;

    /* renamed from: n, reason: collision with root package name */
    private int f45858n;

    /* renamed from: o, reason: collision with root package name */
    private int f45859o;

    /* renamed from: p, reason: collision with root package name */
    private String f45860p;

    /* renamed from: q, reason: collision with root package name */
    private com.ubix.ssp.ad.g.k.g f45861q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f45862r;

    /* renamed from: s, reason: collision with root package name */
    private volatile boolean f45863s;

    /* renamed from: t, reason: collision with root package name */
    private Rect f45864t;

    /* renamed from: u, reason: collision with root package name */
    private Rect f45865u;

    /* renamed from: v, reason: collision with root package name */
    volatile boolean f45866v;

    /* renamed from: w, reason: collision with root package name */
    long f45867w;

    /* renamed from: x, reason: collision with root package name */
    private HashMap<String, String> f45868x;

    public class a implements com.ubix.ssp.ad.g.k.j {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f45869a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f45870b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f45871c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.g.k.g f45872d;

        public a(AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, AtomicBoolean atomicBoolean3, com.ubix.ssp.ad.g.k.g gVar) {
            this.f45869a = atomicBoolean;
            this.f45870b = atomicBoolean2;
            this.f45871c = atomicBoolean3;
            this.f45872d = gVar;
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void c(int i2) {
            this.f45869a.set(true);
            RelativeLayout relativeLayout = (RelativeLayout) f.this.findViewById(2020001);
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
            if (f.this.f45846b != null) {
                f.this.f45846b.setVisibility(0);
            }
            View viewFindViewById = f.this.findViewById(200019);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            f.this.f45863s = true;
            com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
            if (gVar != null) {
                gVar.c(i2);
            }
            if (f.this.f45853i != null) {
                f.this.f45853i.onVideoComplete();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void e(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void f(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void g(int i2) {
            if (f.this.f45845a != null) {
                u.e("onVideoPlayPause videoView.playable()=" + f.this.f45845a.a() + ";" + f.this.f45852h);
            }
            if (f.this.f45852h && !this.f45869a.get() && this.f45870b.get()) {
                this.f45870b.set(false);
                com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
                if (gVar != null) {
                    gVar.g(i2);
                }
                if (f.this.f45853i != null) {
                    f.this.f45853i.onVideoPause();
                }
            }
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void h(int i2) {
            View viewFindViewById;
            if (f.this.f45845a != null) {
                u.e("onVideoPlayStarted videoView.playable()=" + f.this.f45845a.a() + ";" + f.this.f45867w);
            }
            if (this.f45869a.get()) {
                return;
            }
            f fVar = f.this;
            if (fVar.f45867w > 0) {
                return;
            }
            if (fVar.f45847c != null) {
                f.this.f45847c.setVisibility(8);
            }
            if (f.this.f45846b != null && f.this.f45845a != null && f.this.f45845a.f46651e) {
                f.this.f45846b.setVisibility(4);
            }
            try {
                if (f.this.f45845a != null && (viewFindViewById = f.this.findViewById(2020001)) != null) {
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    if (layoutParams == null) {
                        viewFindViewById.setLayoutParams(new FrameLayout.LayoutParams(f.this.f45845a.getWidth(), f.this.f45845a.getHeight()));
                    } else if (layoutParams.width != f.this.f45845a.getWidth() && layoutParams.height != f.this.f45845a.getHeight()) {
                        layoutParams.width = f.this.f45845a.getWidth();
                        layoutParams.height = f.this.f45845a.getHeight();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (f.this.f45848d != null) {
                f.this.f45848d.setVisibility(0);
            }
            if (f.this.f45857m) {
                f.this.f45857m = false;
                f fVar2 = f.this;
                fVar2.setVideoMute(fVar2.f45856l);
            }
            f.this.f45852h = true;
            if (f.this.f45845a == null || !f.this.f45845a.a()) {
                return;
            }
            this.f45870b.set(true);
            this.f45871c.set(true);
            com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
            if (gVar != null) {
                gVar.h(i2);
            }
            if (f.this.f45853i != null) {
                f.this.f45853i.onVideoStart();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void i(int i2) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void j(int i2) {
            if (f.this.f45845a != null) {
                u.e("onVideoPlayResume videoView.playable()=" + f.this.f45845a.a() + ";" + this.f45871c.get() + ";hasPlay.get()=" + this.f45870b.get());
                if (f.this.f45852h && !this.f45869a.get() && f.this.f45845a.a()) {
                    this.f45870b.set(true);
                    if (this.f45871c.get()) {
                        com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
                        if (gVar != null) {
                            gVar.j(i2);
                        }
                        if (f.this.f45853i == null) {
                            return;
                        }
                    } else {
                        if (f.this.f45867w <= 0) {
                            this.f45871c.set(true);
                            com.ubix.ssp.ad.g.k.g gVar2 = this.f45872d;
                            if (gVar2 != null) {
                                gVar2.h(i2);
                            }
                            if (f.this.f45853i != null) {
                                f.this.f45853i.onVideoStart();
                                return;
                            }
                            return;
                        }
                        this.f45871c.set(true);
                        com.ubix.ssp.ad.g.k.g gVar3 = this.f45872d;
                        if (gVar3 != null) {
                            gVar3.j(i2);
                        }
                        if (f.this.f45853i == null) {
                            return;
                        }
                    }
                    f.this.f45853i.onVideoResume();
                }
            }
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, int i3) {
            if (this.f45869a.get()) {
                return;
            }
            AdError adErrorH = com.ubix.ssp.ad.e.a0.a0.a.h(3, "缓冲超时");
            com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
            if (gVar != null) {
                gVar.a(i2, adErrorH);
            }
            if (f.this.f45853i != null) {
                f.this.f45853i.onVideoError(adErrorH);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void b(int i2, int i3) {
        }

        @Override // com.ubix.ssp.ad.g.k.j
        public void a(int i2, long j2, long j3) {
            long j4;
            long j5;
            if (f.this.f45845a != null) {
                u.e("onVideoProgressUpdate videoView.playable()=" + f.this.f45845a.a() + ";" + this.f45870b.get());
            }
            f.this.f45849e = j3;
            f.this.f45850f = j2;
            if (f.this.f45852h && this.f45870b.get()) {
                com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
                if (gVar != null) {
                    j4 = j2;
                    j5 = j3;
                    gVar.a(i2, j4, j5);
                } else {
                    j4 = j2;
                    j5 = j3;
                }
                if (f.this.f45853i != null) {
                    f.this.f45853i.onVideoProgressUpdate(j4, j5);
                }
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            u.b("view=" + view);
            com.ubix.ssp.ad.g.k.g gVar = this.f45872d;
            if (gVar != null) {
                gVar.b(i2, f.this, map);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, Bundle bundle) {
        }

        @Override // com.ubix.ssp.ad.g.k.b
        public void a(int i2, View view) {
        }
    }

    public f(Context context, Bundle bundle) {
        super(context);
        this.f45849e = 0L;
        this.f45850f = 0L;
        this.f45852h = false;
        this.f45854j = true;
        this.f45855k = 4.0d;
        this.f45856l = true;
        this.f45857m = true;
        this.f45858n = 2;
        this.f45860p = "";
        this.f45862r = true;
        this.f45863s = false;
        this.f45864t = new Rect();
        this.f45865u = new Rect();
        this.f45866v = false;
        this.f45867w = 0L;
        this.f45868x = new HashMap<>();
        this.f45855k = r.a().a(context);
        this.f45858n = bundle.getInt("AUTO_PLAY", 2);
        this.f45854j = bundle.getBoolean("DO_NOT_RESTRICT_SIZE", false);
        this.f45859o = bundle.getInt("VIDEO_RENDER_TYPE", 0);
        this.f45848d = new ImageView(context);
        this.f45846b = new com.ubix.ssp.ad.e.t.a.e(context);
        this.f45847c = new ImageView(context);
        this.f45846b.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f45846b.setId(200024);
        this.f45847c.setId(2000017);
        this.f45848d.setId(200019);
        this.f45847c.setBackground(q.a("ubix/ic_auto_play.webp"));
        boolean z2 = !bundle.getBoolean("AUTO_MUTE", true);
        this.f45856l = z2;
        this.f45862r = z2;
        this.f45848d.setOnClickListener(this);
        this.f45848d.setVisibility(4);
        addView(this.f45846b);
        addView(this.f45847c);
        addView(this.f45848d);
        String string = bundle.getString("BUTTON_TEXT", bundle.getBoolean("IS_DOWNLOAD", false) ? "立即下载" : "查看详情");
        addView(a(TextUtils.isEmpty(string) ? "查看详情" : string, bundle.getInt("TEXT_SIZE", 10)));
        setOnTouchListener(this);
        setOnClickListener(this);
    }

    public ImageView getCoverImage() {
        return this.f45846b;
    }

    public long getCurrentDuration() {
        return this.f45850f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f45863s) {
            return;
        }
        Context context = getContext();
        int i2 = this.f45858n;
        int i3 = 2;
        boolean z2 = i2 != 3 && (i2 != 2 ? i2 == 1 : com.ubix.ssp.ad.e.a0.c.i(getContext().getApplicationContext()));
        int i4 = this.f45859o;
        if (i4 != 0) {
            i3 = i4;
        } else if (!b.f45794a.isUseTextureView()) {
            i3 = 1;
        }
        com.ubix.ssp.ad.e.b0.d dVar = new com.ubix.ssp.ad.e.b0.d(context, z2, i3, this.f45867w);
        this.f45845a = dVar;
        dVar.setId(200015);
        this.f45845a.setMute(this.f45862r);
        addView(this.f45845a, 0);
        if (this.f45866v) {
            return;
        }
        b(this.f45860p, this.f45861q);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 200019) {
            com.ubix.ssp.ad.g.k.g gVar = this.f45851g;
            if (gVar != null) {
                gVar.b(0, this, this.f45868x);
                return;
            }
            return;
        }
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            this.f45848d.setImageDrawable(q.a(!dVar.f46666t ? "ubix/ic_volume_off.webp" : "ubix/ic_volume_on.webp"));
            boolean z2 = !this.f45845a.f46666t;
            this.f45862r = z2;
            setVideoMute(z2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            long currentPositionWhenPlaying = 0 == dVar.getCurrentPositionWhenPlaying() ? this.f45867w : this.f45845a.getCurrentPositionWhenPlaying();
            this.f45867w = currentPositionWhenPlaying;
            this.f45867w = currentPositionWhenPlaying >= 0 ? currentPositionWhenPlaying : 0L;
            removeView(this.f45845a);
            this.f45845a.p();
            this.f45845a = null;
            this.f45866v = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredHeight;
        int height = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            switch (childAt.getId()) {
                case 200001:
                    measuredHeight = childAt.getMeasuredHeight();
                    break;
                case 200015:
                case 200024:
                case 2020001:
                    childAt.layout(i2, i3, i4, i5);
                    continue;
                case 200019:
                    int iMin = Math.min(i4 - i2, i5 - i3);
                    View viewFindViewById = findViewById(2030001);
                    View viewFindViewById2 = findViewById(200025);
                    int iMax = (int) Math.max(i4 / 14, this.f45855k * 24.0d);
                    if (viewFindViewById != null) {
                        if (viewFindViewById2 != null) {
                            height = viewFindViewById2.getHeight();
                        }
                        int i7 = i4 - (iMin / 16);
                        childAt.layout(i7 - iMax, viewFindViewById.getTop() - height, i7, viewFindViewById.getBottom() - height);
                        continue;
                    } else {
                        int i8 = iMin / 16;
                        int i9 = i4 - i8;
                        int i10 = (i5 - i8) - (iMin / 28);
                        childAt.layout(i9 - iMax, i10 - iMax, i9, i10);
                    }
                case 200025:
                    measuredHeight = r.b(8.0f);
                    break;
                case 2000017:
                    int iMin2 = Math.min(i4 - i2, i5 - i3) / 5;
                    childAt.layout((i4 - iMin2) / 2, (i5 - iMin2) / 2, (i4 + iMin2) / 2, (iMin2 + i5) / 2);
                    continue;
                case 2050001:
                    View viewFindViewById3 = findViewById(200001);
                    View viewFindViewById4 = findViewById(200025);
                    if (viewFindViewById3 != null) {
                        childAt.layout(i2, viewFindViewById3.getTop() - childAt.getMeasuredHeight(), i4, viewFindViewById3.getTop());
                        continue;
                    } else {
                        if (viewFindViewById4 != null) {
                            height = viewFindViewById4.getHeight();
                        }
                        childAt.layout(i2, (i5 - childAt.getMeasuredHeight()) - height, i4, i5 - height);
                    }
                default:
            }
            childAt.layout(i2, i5 - measuredHeight, i4, i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f45854j) {
            return;
        }
        u.e("onMeasure MeasureSpec=" + View.MeasureSpec.getMode(i3));
        if (View.MeasureSpec.getMode(i3) == 0) {
            setMeasuredDimension(View.MeasureSpec.getSize(i2), (View.MeasureSpec.getSize(i2) * 9) / 16);
            com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
            if (dVar == null || dVar.getLayoutParams() == null) {
                return;
            }
            this.f45845a.getLayoutParams().width = -1;
            this.f45845a.getLayoutParams().height = (View.MeasureSpec.getSize(i2) * 9) / 16;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        a(motionEvent);
        return false;
    }

    public void setAutoPlay(boolean z2) {
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            dVar.setAutoPlay(z2);
            if (z2) {
                this.f45845a.j();
            }
        }
    }

    public void setListener(UBiXVideoInteractionListener uBiXVideoInteractionListener) {
        this.f45853i = uBiXVideoInteractionListener;
    }

    public void setVideoMute(boolean z2) {
        this.f45862r = z2;
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            dVar.setMute(z2);
        }
        ImageView imageView = this.f45848d;
        if (imageView != null) {
            imageView.setImageDrawable(q.a(z2 ? "ubix/ic_volume_off.webp" : "ubix/ic_volume_on.webp"));
        }
    }

    public RelativeLayout a(String str, int i2) {
        double dA = r.a().a(getContext());
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setId(2020001);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        TextView textView = new TextView(getContext());
        textView.setId(2000016);
        textView.setGravity(17);
        textView.setTextSize(i2);
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(-1);
        textView.setText(str);
        int i3 = (int) (dA * 6.0d);
        textView.setPadding(i3, i3, i3, i3);
        textView.setBackgroundColor(-12542209);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        relativeLayout.setBackgroundColor(Color.parseColor("#99000000"));
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    public void b() {
        if (this.f45845a != null) {
            setAutoPlay(true);
            this.f45845a.a(1);
            this.f45845a.j();
        }
    }

    public void a() {
        removeAllViews();
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            dVar.p();
        }
    }

    public void b(String str, com.ubix.ssp.ad.g.k.g gVar) {
        this.f45851g = gVar;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean3 = new AtomicBoolean(false);
        com.ubix.ssp.ad.e.b0.d dVar = this.f45845a;
        if (dVar != null) {
            dVar.a(str, "", 1);
            this.f45845a.setVideoImageDisplayType(4);
            this.f45849e = this.f45845a.getDuration();
            this.f45845a.setVideoViewListener(new a(atomicBoolean, atomicBoolean2, atomicBoolean3, gVar));
        }
    }

    public void a(MotionEvent motionEvent) {
        HashMap<String, String> map;
        String str;
        String str2;
        try {
            if (motionEvent.getAction() == 0) {
                this.f45868x.put("__DOWN_X__", motionEvent.getX() + "");
                this.f45868x.put("__DOWN_Y__", motionEvent.getY() + "");
                this.f45868x.put("__RAW_DOWN_X__", motionEvent.getRawX() + "");
                map = this.f45868x;
                str = motionEvent.getRawY() + "";
                str2 = "__RAW_DOWN_Y__";
            } else {
                if (motionEvent.getAction() != 1) {
                    return;
                }
                this.f45868x.put("__UP_X__", motionEvent.getX() + "");
                this.f45868x.put("__UP_Y__", motionEvent.getY() + "");
                this.f45868x.put("__WIDTH__", getWidth() + "");
                this.f45868x.put("__HEIGHT__", getHeight() + "");
                this.f45868x.put("__RAW_UP_X__", motionEvent.getRawX() + "");
                this.f45868x.put("__RAW_UP_Y__", motionEvent.getRawY() + "");
                map = this.f45868x;
                str = motionEvent.getX() + "_" + motionEvent.getY();
                str2 = "__CLICK_XY__";
            }
            map.put(str2, str);
        } catch (Exception unused) {
        }
    }

    public void a(String str, com.ubix.ssp.ad.g.k.g gVar) {
        this.f45860p = str;
        this.f45861q = gVar;
        if (this.f45845a != null) {
            b(str, gVar);
            this.f45866v = true;
        }
    }
}
