package com.byazt.pf;

import android.view.View;
import com.byazt.xci.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1474, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: j, reason: collision with root package name */
    public View f24375j;
    public e jx;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.go.j f24377s;

    /* renamed from: w, reason: collision with root package name */
    public volatile int f24378w;
    public List<hp> hp = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public Map<String, Object> f24376l = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public volatile int f24374a = 0;
    public long eb = -1;

    public jx(com.byazt.go.j jVar) {
        this.f24377s = jVar;
    }

    private void jx() {
        this.f24378w = 0;
        this.f24374a = 0;
    }

    public long hp() {
        return this.eb;
    }

    public void l() {
        this.eb = System.currentTimeMillis();
        ((com.byazt.ey.hp) this.f24377s.hp(com.byazt.ey.hp.class)).hp(false);
        jx();
        hp(0);
    }

    public void hp(View view) {
        this.f24375j = view;
    }

    public void hp(hp hpVar) {
        this.hp.add(hpVar);
    }

    public void hp(e eVar) {
        this.jx = eVar;
        Iterator<hp> it = this.hp.iterator();
        while (it.hasNext()) {
            it.next().hp(this.jx);
        }
    }

    private void hp(int i2) {
        int size = this.hp.size();
        while (i2 < size) {
            int i3 = i2 + 1;
            this.f24378w = i3;
            hp hpVar = this.hp.get(i2);
            hpVar.hp(this.f24375j);
            this.f24374a = hpVar.hp(this.f24376l, this);
            if (this.f24374a != 0) {
                if (this.f24374a == 2) {
                    ((com.byazt.ey.hp) this.f24377s.hp(com.byazt.ey.hp.class)).hp(this.f24376l, this);
                    return;
                }
                return;
            }
            i2 = i3;
        }
    }

    public <T extends hp> T hp(Class<T> cls) {
        return (T) this.f24377s.hp(cls);
    }
}
