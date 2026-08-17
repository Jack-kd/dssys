package com.anythink.network.baidu.impression;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.anythink.network.baidu.impression.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class BDImpressionTracker {

    /* renamed from: h, reason: collision with root package name */
    private static final int f9425h = 100;

    /* renamed from: a, reason: collision with root package name */
    private final com.anythink.network.baidu.impression.b f9426a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<View, BDImpressionInterface> f9427b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<View, com.anythink.network.baidu.impression.a<BDImpressionInterface>> f9428c;

    /* renamed from: d, reason: collision with root package name */
    private final Handler f9429d;

    /* renamed from: e, reason: collision with root package name */
    private final b f9430e;

    /* renamed from: f, reason: collision with root package name */
    private final b.c f9431f;

    /* renamed from: g, reason: collision with root package name */
    private b.e f9432g;

    public class a implements b.e {
        public a() {
        }

        @Override // com.anythink.network.baidu.impression.b.e
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            for (View view : list) {
                BDImpressionInterface bDImpressionInterface = (BDImpressionInterface) BDImpressionTracker.this.f9427b.get(view);
                if (bDImpressionInterface == null) {
                    BDImpressionTracker.this.removeView(view);
                } else {
                    com.anythink.network.baidu.impression.a aVar = (com.anythink.network.baidu.impression.a) BDImpressionTracker.this.f9428c.get(view);
                    if (aVar == null || !bDImpressionInterface.equals(aVar.f9436a)) {
                        BDImpressionTracker.this.f9428c.put(view, new com.anythink.network.baidu.impression.a(bDImpressionInterface));
                    }
                }
            }
            Iterator<View> it = list2.iterator();
            while (it.hasNext()) {
                BDImpressionTracker.this.f9428c.remove(it.next());
            }
            BDImpressionTracker.this.b();
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final ArrayList<View> f9434a = new ArrayList<>();

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry entry : BDImpressionTracker.this.f9428c.entrySet()) {
                View view = (View) entry.getKey();
                com.anythink.network.baidu.impression.a aVar = (com.anythink.network.baidu.impression.a) entry.getValue();
                if (BDImpressionTracker.this.f9431f.a(aVar.f9437b, ((BDImpressionInterface) aVar.f9436a).getImpressionMinTimeViewed())) {
                    ((BDImpressionInterface) aVar.f9436a).recordImpression(view);
                    ((BDImpressionInterface) aVar.f9436a).setImpressionRecorded();
                    this.f9434a.add(view);
                }
            }
            ArrayList<View> arrayList = this.f9434a;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                View view2 = arrayList.get(i2);
                i2++;
                BDImpressionTracker.this.removeView(view2);
            }
            this.f9434a.clear();
            if (BDImpressionTracker.this.f9428c.isEmpty()) {
                return;
            }
            BDImpressionTracker.this.b();
        }
    }

    public BDImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new b.c(), new com.anythink.network.baidu.impression.b(context), new Handler(Looper.getMainLooper()));
    }

    public void addView(View view, BDImpressionInterface bDImpressionInterface) {
        if (this.f9427b.get(view) == bDImpressionInterface) {
            return;
        }
        removeView(view);
        if (bDImpressionInterface.isImpressionRecorded()) {
            return;
        }
        this.f9427b.put(view, bDImpressionInterface);
        this.f9426a.a(view, bDImpressionInterface.getImpressionMinPercentageViewed(), bDImpressionInterface.getImpressionMinVisiblePx());
    }

    public void clear() {
        this.f9427b.clear();
        this.f9428c.clear();
        this.f9426a.a();
        this.f9429d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f9426a.b();
        this.f9432g = null;
    }

    public void removeView(View view) {
        this.f9427b.remove(view);
        a(view);
        this.f9426a.a(view);
    }

    private void a(View view) {
        this.f9428c.remove(view);
    }

    public void b() {
        if (this.f9429d.hasMessages(0)) {
            return;
        }
        this.f9429d.postDelayed(this.f9430e, 100L);
    }

    @Deprecated
    public b.e a() {
        return this.f9432g;
    }

    public BDImpressionTracker(Context context, int i2) {
        this(new WeakHashMap(), new WeakHashMap(), new b.c(), new com.anythink.network.baidu.impression.b(context, i2), new Handler(Looper.getMainLooper()));
    }

    public BDImpressionTracker(Map<View, BDImpressionInterface> map, Map<View, com.anythink.network.baidu.impression.a<BDImpressionInterface>> map2, b.c cVar, com.anythink.network.baidu.impression.b bVar, Handler handler) {
        this.f9427b = map;
        this.f9428c = map2;
        this.f9431f = cVar;
        this.f9426a = bVar;
        a aVar = new a();
        this.f9432g = aVar;
        bVar.a(aVar);
        this.f9429d = handler;
        this.f9430e = new b();
    }
}
