package com.byazt.xgv;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.uid.eb;
import com.byazt.ymw.vv;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1189, 30})
/* loaded from: classes3.dex */
public class jx {
    public final Queue<l> hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.yb.jx f27647j;
    public final AtomicBoolean jx;

    /* renamed from: l, reason: collision with root package name */
    public int f27648l;

    @com.byazt.kj.hp(hp = {0, 1, 1189, 219})
    public static class hp {
        public static final jx hp = new jx();
    }

    public interface l {
        void hp() throws Exception;
    }

    private jx() {
        this.hp = new ConcurrentLinkedQueue();
        this.jx = new AtomicBoolean(false);
        com.byazt.yb.jx jxVar = new com.byazt.yb.jx() { // from class: com.byazt.xgv.jx.1
            @Override // com.byazt.yb.jx
            public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                    if (s.u().nu()) {
                        jx.this.hp(this);
                        return;
                    }
                    if (jx.this.f27648l == 0 && i2 != 0) {
                        jx.this.hp.size();
                        jx.this.l();
                    }
                    jx.this.f27648l = i2;
                }
            }
        };
        this.f27647j = jxVar;
        ((jl) com.byazt.ym.j.getService("device_info_new")).registerNetworkMonitor(jxVar);
        this.f27648l = vv.jx(sz.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        while (!this.hp.isEmpty()) {
            l lVarPoll = this.hp.poll();
            if (lVarPoll != null) {
                l(lVarPoll);
            }
        }
    }

    public static jx hp() {
        return hp.hp;
    }

    private void l(final l lVar) {
        com.byazt.uid.w.l(new eb("pl download retry") { // from class: com.byazt.xgv.jx.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    lVar.hp();
                } catch (Exception e2) {
                    jx.this.hp(lVar, e2);
                }
            }
        });
    }

    public void hp(l lVar) {
        if (s.u().nu()) {
            hp(this.f27647j);
        } else {
            if (this.jx.get()) {
                return;
            }
            this.f27648l = 0;
            this.hp.offer(lVar);
            this.hp.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(l lVar, Exception exc) {
        Log.getStackTraceString(exc);
    }

    public void hp(com.byazt.yb.jx jxVar) {
        this.jx.set(true);
        ((jl) com.byazt.ym.j.getService("device_info_new")).removeNetworkMonitor(jxVar);
        this.hp.clear();
    }
}
