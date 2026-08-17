package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class da {

    /* renamed from: a, reason: collision with root package name */
    protected final String f13391a;

    /* renamed from: b, reason: collision with root package name */
    protected final int f13392b;

    /* renamed from: c, reason: collision with root package name */
    protected final float[] f13393c;

    /* renamed from: d, reason: collision with root package name */
    protected final long f13394d;

    /* renamed from: e, reason: collision with root package name */
    protected final EnumC1130d f13395e;

    /* renamed from: f, reason: collision with root package name */
    protected final om f13396f;

    /* renamed from: g, reason: collision with root package name */
    private final List f13397g;

    /* renamed from: h, reason: collision with root package name */
    private final ScopeVideoView.d f13398h;

    /* renamed from: i, reason: collision with root package name */
    private final Map f13399i;

    public static class b implements ScopeVideoView.d {

        /* renamed from: a, reason: collision with root package name */
        private final boolean f13400a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f13401b;

        /* renamed from: c, reason: collision with root package name */
        private final int f13402c;

        /* renamed from: d, reason: collision with root package name */
        private final boolean f13403d;

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.d
        public boolean a() {
            return this.f13400a;
        }

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.d
        public boolean b() {
            return this.f13403d;
        }

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.d
        public boolean c() {
            return this.f13401b;
        }

        @Override // com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.render.ScopeVideoView.d
        public int d() {
            return this.f13402c;
        }

        private b(d dVar) {
            this.f13400a = dVar.f13417i;
            this.f13401b = dVar.f13416h;
            this.f13402c = dVar.f13415g;
            this.f13403d = dVar.f13418j;
        }
    }

    public enum c {
        ALWAYS(0),
        WIFI_ONLY(1),
        NEVER(2);


        /* renamed from: a, reason: collision with root package name */
        private final int f13408a;

        c(int i2) {
            this.f13408a = i2;
        }

        public int b() {
            return this.f13408a;
        }
    }

    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        private String f13409a;

        /* renamed from: b, reason: collision with root package name */
        private int f13410b;

        /* renamed from: d, reason: collision with root package name */
        private long f13412d;

        /* renamed from: e, reason: collision with root package name */
        private String f13413e;

        /* renamed from: f, reason: collision with root package name */
        private List f13414f;

        /* renamed from: k, reason: collision with root package name */
        private Map f13419k;

        /* renamed from: c, reason: collision with root package name */
        private float[] f13411c = {0.0f, 0.0f};

        /* renamed from: g, reason: collision with root package name */
        private int f13415g = c.ALWAYS.b();

        /* renamed from: h, reason: collision with root package name */
        private boolean f13416h = false;

        /* renamed from: i, reason: collision with root package name */
        private boolean f13417i = true;

        /* renamed from: j, reason: collision with root package name */
        private boolean f13418j = true;

        public abstract EnumC1130d a();

        public abstract da l(d dVar);

        public da a(String str) {
            this.f13409a = str;
            return l(this);
        }

        public d b(String str) {
            this.f13413e = str;
            return this;
        }

        public d a(int i2) {
            this.f13410b = i2;
            return this;
        }

        public d a(float f2, float f3) {
            this.f13411c = new float[]{f2, f3};
            return this;
        }

        public d a(long j2) {
            this.f13412d = j2;
            return this;
        }

        public d a(List list) {
            this.f13414f = list;
            return this;
        }

        public d a(Map map) {
            this.f13419k = map;
            return this;
        }
    }

    public da(d dVar) {
        this.f13391a = dVar.f13409a;
        this.f13392b = dVar.f13410b;
        this.f13393c = dVar.f13411c;
        this.f13394d = dVar.f13412d;
        this.f13395e = dVar.a();
        this.f13397g = dVar.f13414f;
        if (dVar.f13419k != null) {
            this.f13399i = new HashMap(dVar.f13419k);
        } else {
            this.f13399i = new HashMap();
        }
        if (TextUtils.isEmpty(dVar.f13413e)) {
            this.f13396f = null;
        } else {
            this.f13396f = new om(dVar.f13413e);
        }
        this.f13398h = new b(dVar);
    }

    public int a() {
        int i2 = this.f13392b;
        if (i2 > 0) {
            return i2;
        }
        return 1;
    }

    public EnumC1130d b() {
        return this.f13395e;
    }

    public Map c() {
        return this.f13399i;
    }

    public float[] d() {
        return this.f13393c;
    }

    public ScopeVideoView.d e() {
        return this.f13398h;
    }

    public om f() {
        return this.f13396f;
    }

    public String g() {
        return this.f13391a;
    }

    public long h() {
        return this.f13394d;
    }
}
