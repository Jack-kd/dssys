package com.byazt.mdk;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.jw.a;
import com.byazt.jw.eb;
import com.byazt.jw.j;
import com.byazt.jw.q;
import com.byazt.jw.w;
import com.byazt.ymw.sz;
import com.byazt.ymw.u;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 919, 34})
/* loaded from: classes3.dex */
public class l implements eb {

    /* renamed from: j, reason: collision with root package name */
    public static volatile com.byazt.lpy.hp f22953j;
    public w hp;
    public q jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f22954l;

    public l(com.byazt.jw.hp hpVar) {
        hp(hpVar);
    }

    private boolean a() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static com.byazt.lpy.hp w() {
        if (f22953j == null) {
            synchronized (l.class) {
                try {
                    if (f22953j == null) {
                        f22953j = new com.byazt.ykv.hp();
                    }
                } finally {
                }
            }
        }
        return f22953j;
    }

    @Override // com.byazt.jw.eb
    public j j() {
        w wVar = this.hp;
        if (wVar == null) {
            return null;
        }
        return wVar.j();
    }

    @Override // com.byazt.jw.eb
    public q jx() {
        return this.jx;
    }

    public void l(w wVar) {
        this.hp = wVar;
        this.f22954l = wVar.getContext();
        this.jx = new com.byazt.fxy.l(this.hp);
    }

    public l() {
    }

    @Override // com.byazt.jw.eb
    public w l() {
        w wVar = this.hp;
        if (wVar == null) {
            return null;
        }
        return wVar;
    }

    @Override // com.byazt.jw.eb
    public void l(boolean z2) {
        w wVar = this.hp;
        if (wVar != null) {
            wVar.hp(z2);
        }
    }

    public void hp(w wVar) {
        l(wVar);
    }

    private void l(final com.byazt.jw.l lVar) {
        w wVar = this.hp;
        if (wVar != null && this.jx != null) {
            final j jVarJ = wVar.j();
            if (lVar == null || jVarJ == null || this.hp.getContext() == null || jVarJ.s() == null) {
                return;
            }
            if (this.hp.gu()) {
                if (hp(this.hp.getContext(), jVarJ)) {
                    this.jx.hp(lVar);
                    return;
                }
                a();
                if (a()) {
                    jVarJ.s().execute(new com.byazt.ykv.l("dispatchEvent") { // from class: com.byazt.mdk.l.2
                        @Override // java.lang.Runnable
                        public void run() {
                            l.this.hp(lVar, jVarJ.e());
                        }
                    });
                    return;
                } else {
                    hp(lVar, jVarJ.e());
                    return;
                }
            }
            this.jx.hp(lVar);
            return;
        }
        u.l("log_error", "dispatch event configManager is null");
    }

    @Override // com.byazt.jw.eb
    public void hp(a aVar) {
        w wVar = this.hp;
        if (wVar != null) {
            if (aVar == null) {
                aVar = com.byazt.ka.l.hp;
            }
            wVar.hp(aVar);
        }
    }

    private boolean hp(Context context, j jVar) {
        if (context == null || jVar == null) {
            return false;
        }
        if (jVar.e() == 1) {
            return jVar.zy();
        }
        try {
            return sz.hp(context);
        } catch (Throwable unused) {
            return true;
        }
    }

    @Override // com.byazt.jw.eb
    public void hp(final boolean z2) {
        final j jVarJ;
        w wVar = this.hp;
        if (wVar == null || (jVarJ = wVar.j()) == null || this.hp.getContext() == null || jVarJ.s() == null) {
            return;
        }
        if (this.hp.gu()) {
            if (hp(this.hp.getContext(), jVarJ)) {
                q qVar = this.jx;
                if (qVar != null) {
                    qVar.hp(z2);
                    return;
                }
                return;
            }
            if (a()) {
                jVarJ.s().execute(new com.byazt.ykv.l("start") { // from class: com.byazt.mdk.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        w unused = l.this.hp;
                        l.this.hp(jVarJ.e(), z2);
                    }
                });
                return;
            } else {
                hp(jVarJ.e(), z2);
                return;
            }
        }
        q qVar2 = this.jx;
        if (qVar2 != null) {
            qVar2.hp(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, boolean z2) {
        if (i2 == 0 || i2 == 2) {
            com.byazt.tnk.hp.hp(this.hp, z2);
        } else if (i2 == 1) {
            com.byazt.tnk.l.hp(this.hp, z2);
        }
    }

    @Override // com.byazt.jw.eb
    public void hp(com.byazt.jw.l lVar) {
        l(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.jw.l lVar, int i2) {
        if (i2 == 0 || i2 == 2) {
            com.byazt.tnk.hp.hp(lVar, this.hp);
        } else if (i2 == 1) {
            com.byazt.tnk.l.hp(lVar, this.hp);
        }
    }

    @Override // com.byazt.jw.eb
    public void hp(final String str, final List<String> list, final boolean z2, Map<String, String> map, final JSONObject jSONObject) {
        w wVar = this.hp;
        if (wVar == null) {
            u.l("log_error", "track configManager is null");
            return;
        }
        final j jVarJ = wVar.j();
        if (jVarJ == null || this.hp.getContext() == null || jVarJ.s() == null || !jVarJ.a()) {
            return;
        }
        if (jVarJ.e() == 1) {
            if (list == null || list.isEmpty()) {
                return;
            }
        } else if (jVarJ.e() == 0 && (TextUtils.isEmpty(str) || list == null || list.isEmpty())) {
            return;
        }
        if (this.hp.gu() && !hp(this.hp.getContext(), jVarJ)) {
            if (a()) {
                jVarJ.s().execute(new com.byazt.ykv.l("trackFailed") { // from class: com.byazt.mdk.l.3
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp(str, (List<String>) list, z2, jVarJ.e(), jSONObject);
                    }
                });
                return;
            } else {
                hp(str, list, z2, jVarJ.e(), jSONObject);
                return;
            }
        }
        com.byazt.hjr.hp.hp(this.hp).hp(str, list, z2, map, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, List<String> list, boolean z2, int i2, JSONObject jSONObject) {
        if (i2 == 0) {
            com.byazt.tnk.hp.hp(str, list, z2, this.hp, jSONObject);
        } else if (i2 == 1) {
            com.byazt.tnk.l.hp(str, list, z2, this.hp);
        }
    }

    @Override // com.byazt.jw.eb
    public void hp(final String str) {
        w wVar = this.hp;
        if (wVar == null) {
            com.byazt.giz.jx.hp("log_error", "trackFailedUrls configManager is null", wVar);
            return;
        }
        final j jVarJ = wVar.j();
        if (jVarJ == null || this.hp.getContext() == null || jVarJ.s() == null || !jVarJ.a()) {
            return;
        }
        if (jVarJ.e() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        if (this.hp.gu() && !hp(this.hp.getContext(), jVarJ)) {
            if (a()) {
                jVarJ.s().execute(new com.byazt.ykv.l("trackFailed") { // from class: com.byazt.mdk.l.4
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.hp(str, jVarJ.e());
                    }
                });
                return;
            } else {
                hp(str, jVarJ.e());
                return;
            }
        }
        com.byazt.hjr.hp.hp(this.hp).hp(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, int i2) {
        if (i2 == 0) {
            com.byazt.tnk.hp.hp(str, this.hp);
        } else if (i2 == 1) {
            com.byazt.tnk.l.hp(str, this.hp);
        }
    }

    @Override // com.byazt.jw.eb
    public void hp() {
        q qVar = this.jx;
        if (qVar != null) {
            qVar.hp();
        }
    }
}
