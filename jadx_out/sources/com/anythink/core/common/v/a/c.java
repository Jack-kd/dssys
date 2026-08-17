package com.anythink.core.common.v.a;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.anythink.core.common.v.a.f;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f7986a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f7987b = 2;

    /* renamed from: c, reason: collision with root package name */
    private final f f7988c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<View, b> f7989d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<View, d<b>> f7990e;

    /* renamed from: f, reason: collision with root package name */
    private final f.b f7991f;

    /* renamed from: g, reason: collision with root package name */
    private f.d f7992g;

    private c(int i2) {
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        f.b bVar = new f.b(i2);
        f fVar = new f(i2);
        new Handler(Looper.getMainLooper());
        this(weakHashMap, weakHashMap2, bVar, fVar);
    }

    private void b() {
        a();
        this.f7988c.b();
        this.f7992g = null;
    }

    @Deprecated
    private f.d c() {
        return this.f7992g;
    }

    public final void a(View view, b bVar) {
        if (this.f7989d.get(view) == bVar) {
            return;
        }
        a(view);
        if (bVar.isImpressionRecorded()) {
            return;
        }
        this.f7989d.put(view, bVar);
        f fVar = this.f7988c;
        int impressionMinPercentageViewed = bVar.getImpressionMinPercentageViewed();
        fVar.a(view, view, impressionMinPercentageViewed, impressionMinPercentageViewed, bVar.getImpressionMinVisiblePx());
    }

    public c() {
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        f.b bVar = new f.b(1);
        f fVar = new f();
        new Handler(Looper.getMainLooper());
        this(weakHashMap, weakHashMap2, bVar, fVar);
    }

    private void b(View view) {
        this.f7990e.remove(view);
    }

    private c(Map<View, b> map, Map<View, d<b>> map2, f.b bVar, f fVar) {
        this.f7989d = map;
        this.f7990e = map2;
        this.f7991f = bVar;
        this.f7988c = fVar;
        f.d dVar = new f.d() { // from class: com.anythink.core.common.v.a.c.1
            @Override // com.anythink.core.common.v.a.f.d
            public final void a(List<View> list) {
                for (View view : list) {
                    b bVar2 = (b) c.this.f7989d.get(view);
                    if (bVar2 == null) {
                        c.this.a(view);
                    } else {
                        bVar2.recordImpression(view);
                        bVar2.setImpressionRecorded();
                    }
                }
            }
        };
        this.f7992g = dVar;
        fVar.a(dVar);
    }

    public final void a(View view) {
        this.f7989d.remove(view);
        b(view);
        this.f7988c.a(view);
    }

    public final void a() {
        this.f7989d.clear();
        this.f7990e.clear();
        this.f7988c.a();
    }
}
