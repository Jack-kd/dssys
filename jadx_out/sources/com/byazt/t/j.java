package com.byazt.t;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.w;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 38})
/* loaded from: classes3.dex */
public class j {
    public Handler hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.w.w f25631l;
    public AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f25630j = new AtomicBoolean(false);

    public j(Handler handler) {
        this.hp = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long j() {
        return com.byazt.y.zy.l(0L);
    }

    public static long l() {
        if (jl.zy() != null) {
            return jl.zy().hp();
        }
        return 0L;
    }

    private void l(com.byazt.zv.l lVar, JSONObject jSONObject, long j2, long j3) throws JSONException {
        lVar.jl("1");
        com.byazt.w.q.hp().hp(lVar);
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(j3 - j2));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("cleanspace_download_after_quite_clean", jSONObject, lVar);
    }

    public void hp(com.byazt.w.w wVar) {
        this.f25631l = wVar;
    }

    public boolean hp() {
        return this.f25630j.get();
    }

    public void hp(boolean z2) {
        this.f25630j.set(z2);
    }

    public void hp(final int i2, final long j2, long j3, w.hp hpVar) {
        final w.hp hpVar2;
        this.f25630j.set(false);
        if (hpVar == null) {
            return;
        }
        if (com.byazt.y.w.a(i2) && com.byazt.y.w.w(i2)) {
            long jJx = com.byazt.y.w.jx(i2);
            this.jx.set(false);
            final String downloadUrl = this.f25631l.f26873l.getDownloadUrl();
            com.byazt.zv.l lVarL = com.byazt.w.a.hp().l(downloadUrl);
            if (lVarL == null) {
                com.byazt.w.w wVar = this.f25631l;
                lVarL = new com.byazt.zv.l(wVar.f26873l, wVar.jx, wVar.f26872j, 0);
                com.byazt.w.a.hp().hp(lVarL);
            }
            final com.byazt.zv.l lVar = lVarL;
            lVar.w(false);
            if (jl.zy() != null) {
                jl.zy();
                lVar.l();
            }
            com.byazt.k.j.hp().hp(lVar.hp());
            boolean zJ = com.byazt.y.w.j(i2);
            if (j3 > 0) {
                hp(i2, downloadUrl, j3, lVar, j2, hpVar);
                hpVar2 = hpVar;
            } else if (zJ) {
                hpVar2 = hpVar;
                hp(downloadUrl, lVar, new w.l() { // from class: com.byazt.t.j.1
                    @Override // com.byazt.t.w.l
                    public void hp(long j4) throws Throwable {
                        j.this.hp(i2, downloadUrl, j4, lVar, j2, hpVar2);
                    }
                });
            } else {
                hpVar2 = hpVar;
                jJx = 0;
            }
            this.hp.postDelayed(new Runnable() { // from class: com.byazt.t.j.2
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.jx.get()) {
                        return;
                    }
                    j.this.jx.set(true);
                    hpVar2.hp();
                }
            }, jJx);
            return;
        }
        hpVar.hp();
    }

    private void hp(String str, com.byazt.zv.l lVar, final w.l lVar2) {
        if (lVar2 == null) {
            return;
        }
        com.byazt.qv.l.hp(str, new com.byazt.ip.e() { // from class: com.byazt.t.j.3
            @Override // com.byazt.ip.e
            public void hp(Map<String, String> map) throws JSONException {
                if (j.this.jx.get()) {
                    return;
                }
                j.this.jx.set(true);
                long jHp = j.this.hp(map);
                if (jHp > 0) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("apk_size", Long.valueOf(jHp));
                        jSONObject.putOpt("available_space", Long.valueOf(j.j()));
                    } catch (JSONException unused) {
                    }
                }
                lVar2.hp(jHp);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long hp(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return 0L;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if ("content-length".equalsIgnoreCase(key)) {
                    return Long.parseLong(value);
                }
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r13, java.lang.String r14, long r15, final com.byazt.zv.l r17, long r18, final com.byazt.t.w.hp r20) throws java.lang.Throwable {
        /*
            r12 = this;
            r0 = r15
            r7 = r20
            java.util.concurrent.atomic.AtomicBoolean r2 = r12.jx
            r8 = 1
            r2.set(r8)
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto L77
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            java.lang.String r3 = "apk_size"
            java.lang.Long r4 = java.lang.Long.valueOf(r0)     // Catch: org.json.JSONException -> L1d
            r2.putOpt(r3, r4)     // Catch: org.json.JSONException -> L1d
        L1d:
            double r3 = com.byazt.y.w.hp(r13)
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            double r0 = (double) r0
            double r3 = r3 * r0
            java.lang.Double r0 = java.lang.Double.valueOf(r3)
            long r0 = r0.longValue()
            long r3 = com.byazt.y.w.l(r13)
            long r0 = r0 + r3
            long r3 = r0 - r18
            long r5 = j()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 >= 0) goto L77
            r0 = r12
            r1 = r17
            r0.hp(r1, r2, r3, r5)
            hp(r1)
            r9 = r3
            r3 = r5
            long r5 = j()
            int r11 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r11 >= 0) goto L73
            r1.j(r8)
            java.lang.String r2 = r1.hp()
            com.byazt.k.j r3 = com.byazt.k.j.hp()
            com.byazt.t.j$4 r4 = new com.byazt.t.j$4
            r4.<init>()
            r3.hp(r2, r4)
            r0 = r12
            r3 = r14
            r2 = r1
            r4 = r9
            r1 = r13
            boolean r13 = r0.hp(r1, r2, r3, r4)
            r1 = r2
            if (r13 == 0) goto L78
            r1.w(r8)
            goto L78
        L73:
            r0 = r12
            r0.l(r1, r2, r3, r5)
        L77:
            r13 = 0
        L78:
            if (r13 != 0) goto L84
            android.os.Handler r13 = r12.hp
            com.byazt.t.j$5 r1 = new com.byazt.t.j$5
            r1.<init>()
            r13.post(r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.t.j.hp(int, java.lang.String, long, com.byazt.zv.l, long, com.byazt.t.w$hp):void");
    }

    private boolean hp(int i2, @NonNull com.byazt.zv.l lVar, String str, long j2) throws JSONException {
        if (!com.byazt.y.w.a(i2)) {
            return false;
        }
        if (jl.zy() != null) {
            return jl.zy().hp(i2, str, true, j2);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("show_dialog_result", 3);
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("cleanspace_window_show", jSONObject, lVar);
        return false;
    }

    public static boolean hp(final DownloadInfo downloadInfo, long j2) {
        int id = downloadInfo.getId();
        if (!com.byazt.y.w.a(id) || jl.zy() == null) {
            return false;
        }
        boolean zHp = jl.zy().hp(id, downloadInfo.getUrl(), false, j2);
        if (zHp) {
            com.byazt.k.j.hp().hp(downloadInfo.getUrl(), new com.byazt.k.w() { // from class: com.byazt.t.j.6
            });
        }
        return zHp;
    }

    public static JSONObject hp(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("clean_space_install_params", str);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void hp(int i2) {
        if (com.byazt.y.w.a(i2) && jl.zy() != null && jl.zy().l()) {
            jl.zy();
        }
    }

    private static void hp(com.byazt.zv.l lVar) throws Throwable {
        long j2 = j();
        if (jl.zy() != null) {
            jl.zy();
        }
        com.byazt.k.jx.hp();
        com.byazt.k.jx.l();
        if (com.byazt.y.w.eb(lVar.ec())) {
            com.byazt.k.jx.hp(jl.getContext());
        }
        long j3 = j();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("quite_clean_size", Long.valueOf(j3 - j2));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("clean_quite_finish", jSONObject, lVar);
    }

    private void hp(com.byazt.zv.l lVar, JSONObject jSONObject, long j2, long j3) throws JSONException {
        try {
            jSONObject.putOpt("available_space", Long.valueOf(j3));
            jSONObject.putOpt("apk_download_need_size", Long.valueOf(j2));
        } catch (JSONException unused) {
        }
        com.byazt.r.hp.hp().hp("clean_space_no_enough_for_download", jSONObject, lVar);
    }
}
