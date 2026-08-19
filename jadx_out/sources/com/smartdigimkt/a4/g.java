package com.smartdigimkt.a4;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f39329c;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f39328b = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f39327a = new ArrayList();

    public g(h hVar) {
        this.f39329c = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (Map.Entry entry : this.f39329c.f39333d.entrySet()) {
            View view = (View) entry.getKey();
            int i2 = ((e) entry.getValue()).f39320a;
            int i3 = ((e) entry.getValue()).f39321b;
            Integer num = ((e) entry.getValue()).f39324e;
            View view2 = ((e) entry.getValue()).f39323d;
            if (this.f39329c.f39334e.a(view2, view, i2, num)) {
                this.f39327a.add(view);
                try {
                    view.getViewTreeObserver().removeOnPreDrawListener(this.f39329c.f39332c);
                } catch (Throwable unused) {
                }
            } else if (!this.f39329c.f39334e.a(view2, view, i3, null)) {
                this.f39328b.add(view);
            }
        }
        b bVar = this.f39329c.f39335f;
        if (bVar != null) {
            ArrayList arrayList = this.f39327a;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                View view3 = (View) obj;
                a aVar = (a) bVar.f39315a.f39317b.get(view3);
                if (aVar == null) {
                    c cVar = bVar.f39315a;
                    cVar.f39317b.remove(view3);
                    cVar.f39318c.remove(view3);
                    cVar.f39316a.f39333d.remove(view3);
                } else {
                    aVar.recordImpression(view3);
                    aVar.setImpressionRecorded();
                }
            }
        }
        this.f39327a.clear();
        this.f39328b.clear();
        this.f39329c.f39338i = false;
    }
}
