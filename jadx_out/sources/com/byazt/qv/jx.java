package com.byazt.qv;

import com.byazt.ip.eb;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1530, 30})
/* loaded from: classes3.dex */
public class jx implements eb {

    /* renamed from: w, reason: collision with root package name */
    public static final ArrayList<String> f25046w;

    /* renamed from: e, reason: collision with root package name */
    public boolean f25048e;
    public int eb;
    public eb gu;
    public final String hp;
    public List<com.byazt.fu.jx> jx;

    /* renamed from: l, reason: collision with root package name */
    public final long f25050l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f25051q;

    /* renamed from: s, reason: collision with root package name */
    public long f25052s;

    /* renamed from: a, reason: collision with root package name */
    public Map<String, String> f25047a = null;

    /* renamed from: j, reason: collision with root package name */
    public final Object f25049j = new Object();

    static {
        ArrayList<String> arrayList = new ArrayList<>(6);
        f25046w = arrayList;
        arrayList.add(c.f37366e);
        arrayList.add(c.f37367f);
        arrayList.add(c.f37369h);
        arrayList.add(c.f37370i);
        arrayList.add(c.f37368g);
        arrayList.add(c.f37371j);
    }

    public jx(String str, List<com.byazt.fu.jx> list, long j2) {
        this.hp = str;
        this.jx = list;
        this.f25050l = j2;
    }

    public boolean a() {
        return System.currentTimeMillis() - this.f25052s < l.f25054l;
    }

    public boolean eb() {
        return this.f25048e;
    }

    public boolean hp(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    public void j() throws InterruptedException {
        synchronized (this.f25049j) {
            try {
                if (this.f25048e && this.f25047a == null) {
                    this.f25049j.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.ip.eb
    public void jx() {
        eb ebVar = this.gu;
        if (ebVar != null) {
            ebVar.jx();
        }
    }

    @Override // com.byazt.ip.eb
    public int l() throws IOException {
        return this.eb;
    }

    public Map<String, String> q() {
        return this.f25047a;
    }

    public List<com.byazt.fu.jx> s() {
        return this.jx;
    }

    public boolean w() {
        return this.f25051q;
    }

    public void hp() throws Exception {
        if (this.f25047a != null) {
            return;
        }
        try {
            this.f25048e = true;
            this.gu = com.byazt.yk.jx.hp(this.hp, this.jx);
            synchronized (this.f25049j) {
                try {
                    if (this.gu != null) {
                        HashMap map = new HashMap();
                        this.f25047a = map;
                        hp(this.gu, map);
                        this.eb = this.gu.l();
                        this.f25052s = System.currentTimeMillis();
                        this.f25051q = hp(this.eb);
                    }
                    this.f25048e = false;
                    this.f25049j.notifyAll();
                } finally {
                }
            }
        } catch (Throwable th) {
            synchronized (this.f25049j) {
                try {
                    if (this.gu != null) {
                        HashMap map2 = new HashMap();
                        this.f25047a = map2;
                        hp(this.gu, map2);
                        this.eb = this.gu.l();
                        this.f25052s = System.currentTimeMillis();
                        this.f25051q = hp(this.eb);
                    }
                    this.f25048e = false;
                    this.f25049j.notifyAll();
                    throw th;
                } finally {
                }
            }
        }
    }

    private void hp(eb ebVar, Map<String, String> map) {
        if (ebVar == null || map == null) {
            return;
        }
        ArrayList<String> arrayList = f25046w;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList.get(i2);
            i2++;
            String str2 = str;
            map.put(str2, ebVar.hp(str2));
        }
    }

    @Override // com.byazt.ip.eb
    public String hp(String str) {
        Map<String, String> map = this.f25047a;
        if (map != null) {
            return map.get(str);
        }
        eb ebVar = this.gu;
        if (ebVar != null) {
            return ebVar.hp(str);
        }
        return null;
    }
}
