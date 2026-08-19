package com.byazt.gog;

import com.byazt.gog.l;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1654, 38})
/* loaded from: classes2.dex */
public class j implements hp {
    public final ConcurrentHashMap<Integer, hp> hp = new ConcurrentHashMap<>();

    public void hp(hp hpVar) {
        if (hpVar != null) {
            this.hp.put(Integer.valueOf(hpVar.hashCode()), hpVar);
        }
    }

    @Override // com.byazt.gog.hp
    public void jx(long j2, long j3, String str, String str2) {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new l.hp().hp(next.getValue()).hp("onDownloadFailed").hp(j2).l(j3).l(str).jx(str2).hp();
            }
        }
    }

    public void l() {
        if (this.hp.isEmpty()) {
            return;
        }
        this.hp.clear();
    }

    @Override // com.byazt.gog.hp
    public void hp() {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new l.hp().hp(next.getValue()).hp("onIdle").hp();
            }
        }
    }

    @Override // com.byazt.gog.hp
    public void l(long j2, long j3, String str, String str2) {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new l.hp().hp(next.getValue()).hp("onDownloadPaused").hp(j2).l(j3).l(str).jx(str2).hp();
            }
        }
    }

    @Override // com.byazt.gog.hp
    public void hp(long j2, long j3, String str, String str2) {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new l.hp().hp(next.getValue()).hp("onDownloadActive").hp(j2).l(j3).l(str).jx(str2).hp();
            }
        }
    }

    @Override // com.byazt.gog.hp
    public void hp(String str, String str2) {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                next.getValue().hp(str, str2);
                new l.hp().hp(next.getValue()).hp("onInstalled").l(str).jx(str2).hp();
            }
        }
    }

    @Override // com.byazt.gog.hp
    public void hp(long j2, String str, String str2) {
        Iterator<Map.Entry<Integer, hp>> it = this.hp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, hp> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new l.hp().hp(next.getValue()).hp("onDownloadFinished").hp(j2).l(str).jx(str2).hp();
            }
        }
    }
}
