package com.kwad.components.core.webview.tachikoma.e;

import com.kwad.components.core.webview.tachikoma.f.f;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class b {
    private final Set<Integer> auZ = new HashSet();
    private final ConcurrentHashMap<Integer, Set<f>> ava = new ConcurrentHashMap<>();

    public static class a {
        private static final b avb = new b();
    }

    private void cn(int i2) {
        Set<f> set;
        this.auZ.remove(Integer.valueOf(i2));
        if (this.ava.isEmpty() || this.ava.get(Integer.valueOf(i2)) == null || (set = this.ava.get(Integer.valueOf(i2))) == null || set.isEmpty()) {
            return;
        }
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            it.next().zp();
        }
        this.ava.remove(Integer.valueOf(i2));
    }

    public static b zE() {
        return a.avb;
    }

    public final void a(int i2, f fVar) {
        Set<f> set = this.ava.get(Integer.valueOf(i2));
        if (set != null) {
            set.add(fVar);
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(fVar);
        this.ava.put(Integer.valueOf(i2), hashSet);
    }

    public final void b(int i2, String str, String str2) {
        a(i2, str, str2);
    }

    public final boolean cm(int i2) {
        if (this.auZ.contains(Integer.valueOf(i2))) {
            return false;
        }
        this.auZ.add(Integer.valueOf(i2));
        return true;
    }

    public final void co(int i2) {
        cn(i2);
    }

    private void a(int i2, String str, String str2) {
        Set<f> set;
        this.auZ.remove(Integer.valueOf(i2));
        if (this.ava.isEmpty() || this.ava.get(Integer.valueOf(i2)) == null || (set = this.ava.get(Integer.valueOf(i2))) == null || set.isEmpty()) {
            return;
        }
        this.ava.remove(Integer.valueOf(i2));
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            it.next().zo();
        }
    }
}
