package com.octopus.ad.internal.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.material.badge.BadgeDrawable;
import com.octopus.ad.a.g;
import com.octopus.ad.d.d;
import com.octopus.ad.internal.e.h;
import com.octopus.ad.internal.j;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;
import com.octopus.ad.internal.utilities.ImageManager;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.utils.ThreadUtils;
import java.util.HashMap;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public a f34842a;

    /* renamed from: c, reason: collision with root package name */
    public FrameLayout f34844c;

    /* renamed from: f, reason: collision with root package name */
    private final Context f34847f;

    /* renamed from: g, reason: collision with root package name */
    private int f34848g;

    /* renamed from: h, reason: collision with root package name */
    private int f34849h;

    /* renamed from: i, reason: collision with root package name */
    private int f34850i;

    /* renamed from: j, reason: collision with root package name */
    private int f34851j;

    /* renamed from: k, reason: collision with root package name */
    private int f34852k;

    /* renamed from: l, reason: collision with root package name */
    private int f34853l;

    /* renamed from: m, reason: collision with root package name */
    private int f34854m;

    /* renamed from: n, reason: collision with root package name */
    private int f34855n;

    /* renamed from: e, reason: collision with root package name */
    private boolean f34846e = false;

    /* renamed from: b, reason: collision with root package name */
    public com.octopus.ad.internal.b.f f34843b = null;

    /* renamed from: d, reason: collision with root package name */
    public com.octopus.ad.d f34845d = null;

    /* renamed from: o, reason: collision with root package name */
    private int f34856o = -1;

    /* renamed from: p, reason: collision with root package name */
    private boolean f34857p = true;

    /* renamed from: q, reason: collision with root package name */
    private boolean f34858q = false;

    /* renamed from: r, reason: collision with root package name */
    private boolean f34859r = false;

    /* renamed from: s, reason: collision with root package name */
    private boolean f34860s = false;

    /* renamed from: t, reason: collision with root package name */
    private boolean f34861t = false;

    /* renamed from: u, reason: collision with root package name */
    private int f34862u = 0;

    /* renamed from: com.octopus.ad.internal.e.b$2, reason: invalid class name */
    public class AnonymousClass2 implements ImageManager.BitmapLoadedListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f34864a;

        public AnonymousClass2(ImageView imageView) {
            this.f34864a = imageView;
        }

        @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
        public void onBitmapLoadFailed() {
            a aVar = b.this.f34842a;
            if (aVar != null) {
                aVar.b(false);
                b.this.f34842a.n();
            }
        }

        @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
        public void onBitmapLoaded(final Bitmap bitmap) {
            com.octopus.ad.d.d.a(b.this.f34847f, bitmap, new d.a() { // from class: com.octopus.ad.internal.e.b.2.1
                @Override // com.octopus.ad.d.d.a
                public void a(final Bitmap bitmap2) {
                    ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.e.b.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (bitmap2 != null) {
                                    AnonymousClass2.this.f34864a.setBackground(new BitmapDrawable(b.this.f34847f.getResources(), bitmap2));
                                }
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                AnonymousClass2.this.f34864a.setImageBitmap(bitmap);
                                a aVar = b.this.f34842a;
                                if (aVar != null) {
                                    aVar.b(true);
                                    b.this.f34842a.n();
                                }
                            } catch (Exception unused) {
                                a aVar2 = b.this.f34842a;
                                if (aVar2 != null) {
                                    aVar2.b(false);
                                    b.this.f34842a.n();
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public b(a aVar) {
        this.f34847f = new MutableContextWrapper(aVar.getContext());
        this.f34842a = aVar;
        aVar.setAdWebView(this);
    }

    public c c() {
        com.octopus.ad.d dVar;
        return (!this.f34860s || (dVar = this.f34845d) == null) ? this : dVar;
    }

    public boolean d() {
        return this.f34843b.af() == g.a.ADP_REWARD ? this.f34843b.n().get(this.f34856o).first == j.VIDEO : this.f34856o == 0;
    }

    public int e() {
        return this.f34848g;
    }

    public int f() {
        return this.f34849h;
    }

    public int g() {
        return this.f34854m;
    }

    @Override // com.octopus.ad.internal.e.c
    public b getAdWebView() {
        return this;
    }

    @Override // com.octopus.ad.internal.e.c
    public int getCreativeHeight() {
        return this.f34851j;
    }

    @Override // com.octopus.ad.internal.e.c
    public int getCreativeWidth() {
        return this.f34850i;
    }

    @Override // com.octopus.ad.internal.e.c
    public View getView() {
        return this.f34844c;
    }

    public int h() {
        return this.f34855n;
    }

    public boolean i() {
        return this.f34857p;
    }

    @Override // com.octopus.ad.internal.e.c
    public boolean j() {
        return this.f34846e;
    }

    @Override // com.octopus.ad.internal.e.c
    public void k() {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.e.b.3
            @Override // java.lang.Runnable
            public void run() {
                a aVar;
                b bVar = b.this;
                if (bVar.f34844c == null || (aVar = bVar.f34842a) == null || aVar.getMediaType() == p.SPLASH) {
                    return;
                }
                b.this.f34844c.removeAllViews();
                ViewUtil.removeChildFromParent(b.this.f34844c);
            }
        });
    }

    @Override // com.octopus.ad.internal.e.c
    public void l() {
        a aVar;
        if (this.f34844c == null || (aVar = this.f34842a) == null) {
            return;
        }
        if (aVar.d() && this.f34861t) {
            this.f34842a.e(this.f34844c);
        } else {
            this.f34842a.d(this.f34844c);
        }
        this.f34842a.c(this.f34844c);
        this.f34842a.f(this.f34844c);
        p mediaType = this.f34842a.getMediaType();
        p pVar = p.INTERSTITIAL;
        if (mediaType == pVar || this.f34842a.getMediaType() == p.FULLSCREEN) {
            this.f34842a.a(g(), h(), this.f34844c);
        }
        p mediaType2 = this.f34842a.getMediaType();
        p pVar2 = p.REWARD;
        if (mediaType2 == pVar2) {
            this.f34842a.a(h(), g(), h());
        }
        if (this.f34842a.getAdDispatcher() != null) {
            if (this.f34842a.getMediaType() == pVar || this.f34842a.getMediaType() == p.FULLSCREEN || this.f34842a.getMediaType() == pVar2) {
                r();
            }
        }
    }

    public boolean m() {
        return this.f34858q;
    }

    public boolean n() {
        return this.f34859r;
    }

    @Override // com.octopus.ad.internal.e.c
    public void o() {
        k();
    }

    public void p() {
        this.f34846e = true;
    }

    public int q() {
        return this.f34853l;
    }

    public void r() {
        a aVar;
        com.octopus.ad.internal.b.f fVar = this.f34843b;
        if (fVar == null || (aVar = this.f34842a) == null) {
            return;
        }
        fVar.a(aVar.g(), new com.octopus.ad.a() { // from class: com.octopus.ad.internal.e.b.4
            @Override // com.octopus.ad.a
            public void a(boolean z2) {
                a aVar2 = b.this.f34842a;
                if (aVar2 == null || aVar2.getAdDispatcher() == null) {
                    return;
                }
                b.this.f34842a.getAdDispatcher().a(z2);
            }
        });
    }

    public int s() {
        return this.f34852k;
    }

    private void g(int i2) {
        this.f34850i = i2;
    }

    private void h(int i2) {
        this.f34851j = i2;
    }

    public Context a() {
        return this.f34847f;
    }

    public HashMap<String, Object> b() {
        com.octopus.ad.internal.b.f fVar = this.f34843b;
        if (fVar == null) {
            return null;
        }
        return fVar.w();
    }

    public void c(int i2) {
        this.f34862u = i2;
    }

    public void d(int i2) {
        this.f34848g = i2;
    }

    public void e(int i2) {
        this.f34849h = i2;
    }

    public void f(int i2) {
        this.f34852k = i2;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void a(com.octopus.ad.internal.b.f fVar) {
        int i2;
        if (fVar == null) {
            return;
        }
        this.f34843b = fVar;
        h(fVar.o());
        g(fVar.p());
        d(fVar.H());
        e(fVar.G());
        f(fVar.J());
        if (fVar.D()) {
            this.f34854m = fVar.E();
        } else {
            this.f34854m = -1;
        }
        if (fVar.F() != 0) {
            this.f34855n = fVar.F();
        } else {
            this.f34855n = -1;
        }
        if (this.f34854m == -1 && this.f34855n == -1 && fVar.af() != g.a.ADP_REWARD) {
            this.f34854m = 0;
        } else {
            int i3 = this.f34854m;
            if (i3 != -1 && (i2 = this.f34855n) != -1 && i3 > i2) {
                this.f34854m = i2;
            }
        }
        this.f34857p = fVar.A();
        this.f34858q = fVar.x();
        this.f34859r = fVar.y();
        this.f34853l = fVar.I();
        this.f34861t = fVar.N();
        this.f34856o = -1;
        boolean zT = fVar.T();
        FrameLayout frameLayout = new FrameLayout(this.f34847f);
        this.f34844c = frameLayout;
        this.f34844c.setOnTouchListener(new h(frameLayout, zT, new h.a() { // from class: com.octopus.ad.internal.e.b.1
            @Override // com.octopus.ad.internal.e.h.a
            public void a(View view, com.octopus.ad.a.d dVar) {
                b bVar = b.this;
                bVar.a(bVar.f34862u, dVar);
            }
        }));
        b(0);
    }

    public boolean b(int i2) {
        int creativeHeight;
        int creativeWidth;
        com.octopus.ad.internal.b.f fVar = this.f34843b;
        if (fVar != null && this.f34856o != i2) {
            if (!fVar.n().isEmpty() && this.f34843b.n().size() > i2) {
                Pair<j, String> pair = this.f34843b.n().get(i2);
                if (com.octopus.ad.internal.c.p.a((String) pair.second)) {
                    p();
                    return false;
                }
                if (pair.first == j.VIDEO) {
                    if (this.f34845d == null) {
                        this.f34845d = new com.octopus.ad.d(this);
                    }
                    this.f34845d.a((String) pair.second);
                    this.f34860s = true;
                } else {
                    float fP = q.a().p();
                    float fQ = q.a().q();
                    float fR = q.a().r();
                    if (getCreativeWidth() == -1 && getCreativeHeight() == -1) {
                        creativeWidth = -1;
                        creativeHeight = -1;
                    } else {
                        creativeHeight = (int) ((getCreativeHeight() * fR) + 0.5f);
                        creativeWidth = (int) ((getCreativeWidth() * fR) + 0.5f);
                    }
                    if (e() == 0 && f() == 0) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 17);
                        if (this.f34843b.m() == p.SPLASH) {
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1, 17);
                            FrameLayout frameLayout = this.f34844c;
                            if (frameLayout != null) {
                                frameLayout.setLayoutParams(layoutParams2);
                            }
                        } else {
                            a(layoutParams);
                        }
                    } else {
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, BadgeDrawable.TOP_START);
                        layoutParams3.setMargins((int) ((e() * fP) + 0.5f), (int) ((f() * fQ) + 0.5f), 0, 0);
                        if (this.f34843b.m() == p.SPLASH) {
                            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -1, 17);
                            FrameLayout frameLayout2 = this.f34844c;
                            if (frameLayout2 != null) {
                                frameLayout2.setLayoutParams(layoutParams4);
                            }
                        } else {
                            a(layoutParams3);
                        }
                    }
                    a aVar = this.f34842a;
                    if (aVar != null) {
                        aVar.f34756o = true;
                    }
                    ImageView imageView = new ImageView(this.f34847f);
                    ImageManager.with(this.f34847f).getBitmap((String) pair.second, new AnonymousClass2(imageView));
                    FrameLayout frameLayout3 = this.f34844c;
                    if (frameLayout3 != null) {
                        frameLayout3.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
                    }
                    this.f34860s = false;
                }
                this.f34856o = i2;
                return true;
            }
            p();
        }
        return false;
    }

    public boolean a(int i2) {
        return b(this.f34856o + i2);
    }

    private void a(FrameLayout.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.f34844c;
        if (frameLayout != null) {
            a aVar = this.f34842a;
            if (aVar instanceof g) {
                if (((g) aVar).getResizeAdToFitContainer()) {
                    this.f34844c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
                    return;
                } else {
                    this.f34844c.setLayoutParams(layoutParams);
                    return;
                }
            }
            frameLayout.setLayoutParams(layoutParams);
        }
    }

    public void a(int i2, com.octopus.ad.a.d dVar) {
        a aVar;
        if (this.f34843b == null || (aVar = this.f34842a) == null || aVar.getAdDispatcher() == null || this.f34844c == null) {
            return;
        }
        if (this.f34842a.g()) {
            this.f34842a.getAdDispatcher().b();
        }
        this.f34842a.setIsClicked(true);
        this.f34843b.a(this.f34842a.getOpensNativeBrowser());
        this.f34843b.a(this.f34842a.getSplashParent() == null ? this.f34844c : this.f34842a.getSplashParent(), i2, this.f34842a.g(), dVar);
    }
}
