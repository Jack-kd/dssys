package com.byazt.am;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

@com.byazt.kj.hp(hp = {0, 1, 214, 34})
/* loaded from: classes2.dex */
public abstract class l {
    public static volatile boolean hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile long f18040l;

    /* renamed from: j, reason: collision with root package name */
    public Handler f18041j;
    public final Queue<hp> jx = new LinkedList();

    @com.byazt.kj.hp(hp = {0, 1, 214, 123})
    public static class hp {
        public final long hp;

        /* renamed from: l, reason: collision with root package name */
        public final String f18042l;

        private hp(long j2, String str) {
            this.hp = j2;
            this.f18042l = str;
        }
    }

    private synchronized boolean l(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iL = l();
        long jJx = jx();
        if (this.jx.size() <= 0 || this.jx.size() < iL) {
            this.jx.offer(new hp(jCurrentTimeMillis, str));
        } else {
            long jAbs = Math.abs(jCurrentTimeMillis - this.jx.peek().hp);
            if (jAbs <= jJx) {
                l(jJx - jAbs);
                return true;
            }
            this.jx.poll();
            this.jx.offer(new hp(jCurrentTimeMillis, str));
        }
        return false;
    }

    public boolean j() {
        return hp;
    }

    public abstract long jx();

    public abstract int l();

    public synchronized String w() {
        String str;
        try {
            HashMap map = new HashMap();
            for (hp hpVar : this.jx) {
                if (map.containsKey(hpVar.f18042l)) {
                    map.put(hpVar.f18042l, Integer.valueOf(((Integer) map.get(hpVar.f18042l)).intValue() + 1));
                } else {
                    map.put(hpVar.f18042l, 1);
                }
            }
            str = "";
            int i2 = Integer.MIN_VALUE;
            for (String str2 : map.keySet()) {
                int iIntValue = ((Integer) map.get(str2)).intValue();
                if (i2 < iIntValue) {
                    str = str2;
                    i2 = iIntValue;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }

    public synchronized boolean hp(String str) {
        try {
            if (l(str)) {
                hp(true);
                hp(f18040l);
            } else {
                hp(false);
            }
        } catch (Throwable th) {
            throw th;
        }
        return hp;
    }

    private void hp(long j2) {
        if (this.f18041j == null) {
            this.f18041j = new Handler(Looper.getMainLooper());
        }
        this.f18041j.postDelayed(new Runnable() { // from class: com.byazt.am.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.hp(false);
            }
        }, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(boolean z2) {
        hp = z2;
    }

    private synchronized void l(long j2) {
        f18040l = j2;
    }
}
