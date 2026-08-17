package com.byazt.ip;

import android.net.Uri;
import android.os.Handler;
import com.byazt.rx.BaseConstants;
import java.net.InetAddress;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1124, 30})
/* loaded from: classes.dex */
public class jx {
    public final com.byazt.xq.s<String, l> hp;
    public final Handler jx;

    /* renamed from: l, reason: collision with root package name */
    public final Handler f21166l;

    public interface hp {
        void hp(String str, List<InetAddress> list);
    }

    @com.byazt.kj.hp(hp = {0, 1, 1124, 1055})
    /* renamed from: com.byazt.ip.jx$jx, reason: collision with other inner class name */
    public static class C0274jx {
        public static final jx hp = new jx();
    }

    @com.byazt.kj.hp(hp = {0, 1, 1124, 224})
    public static class l {
        public List<InetAddress> hp;

        /* renamed from: l, reason: collision with root package name */
        public long f21171l;

        private l() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final String str, final hp hpVar, long j2) {
        final l lVar;
        List<InetAddress> listHp;
        a aVarNs;
        try {
            String host = Uri.parse(str).getHost();
            synchronized (this.hp) {
                lVar = this.hp.get(host);
            }
            if (lVar != null) {
                if (System.currentTimeMillis() - lVar.f21171l < com.byazt.jb.hp.jx().hp("dns_expire_min", 10) * BaseConstants.Time.MINUTE) {
                    if (hpVar != null) {
                        hpVar.hp(str, lVar.hp);
                        return;
                    }
                    return;
                }
            }
            Runnable runnable = new Runnable() { // from class: com.byazt.ip.jx.2
                @Override // java.lang.Runnable
                public void run() {
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        String str2 = str;
                        l lVar2 = lVar;
                        hpVar2.hp(str2, lVar2 == null ? null : lVar2.hp);
                    }
                }
            };
            this.jx.postDelayed(runnable, j2);
            if (com.byazt.jb.hp.jx().hp("use_host_dns", 1) != 1 || (aVarNs = com.byazt.yk.jx.ns()) == null) {
                listHp = null;
            } else {
                try {
                    listHp = aVarNs.hp(host);
                } catch (Throwable unused) {
                }
            }
            if (listHp == null || listHp.isEmpty()) {
                try {
                    listHp = com.byazt.yk.jx.cx().hp(host);
                } catch (Throwable unused2) {
                }
            }
            if (listHp != null && !listHp.isEmpty()) {
                hp(host, listHp);
            } else if (lVar != null) {
                listHp = lVar.hp;
            }
            this.jx.removeCallbacks(runnable);
            if (hpVar != null) {
                hpVar.hp(str, listHp);
            }
        } catch (Throwable unused3) {
        }
    }

    private jx() {
        this.hp = new com.byazt.xq.s<>(4, 16, false);
        this.f21166l = new Handler(com.byazt.qv.l.hp());
        this.jx = new Handler(com.byazt.ez.w.hp());
    }

    public static jx hp() {
        return C0274jx.hp;
    }

    public void hp(final String str, final hp hpVar, final long j2) {
        this.f21166l.post(new Runnable() { // from class: com.byazt.ip.jx.1
            @Override // java.lang.Runnable
            public void run() {
                jx.this.l(str, hpVar, j2);
            }
        });
    }

    private void hp(String str, List<InetAddress> list) {
        synchronized (this.hp) {
            try {
                l lVar = this.hp.get(str);
                if (lVar == null) {
                    lVar = new l();
                    this.hp.put(str, lVar);
                }
                lVar.hp = list;
                lVar.f21171l = System.currentTimeMillis();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
