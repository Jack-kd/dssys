package com.byazt.aq;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 403, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public Context eb;
    public int ec;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18085j;
    public hp jx;

    /* renamed from: s, reason: collision with root package name */
    public j f18089s;

    /* renamed from: w, reason: collision with root package name */
    public l f18092w;

    /* renamed from: l, reason: collision with root package name */
    public long f18087l = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f18083a = false;

    /* renamed from: q, reason: collision with root package name */
    public int f18088q = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f18084e = 19700101000L;
    public int gu = 0;
    public HashMap<String, Integer> jl = new HashMap<>();
    public HashMap<String, Integer> zy = new HashMap<>();

    /* renamed from: k, reason: collision with root package name */
    public int f18086k = 0;

    /* renamed from: v, reason: collision with root package name */
    public HashMap<String, Integer> f18091v = new HashMap<>();

    /* renamed from: u, reason: collision with root package name */
    public HashMap<String, Integer> f18090u = new HashMap<>();
    public boolean xs = true;
    public Map<String, Integer> vv = new HashMap();
    public Handler hp = new Handler(Looper.getMainLooper()) { // from class: com.byazt.aq.w.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10000) {
                return;
            }
            w.this.l(message.arg1 != 0);
        }
    };

    private w() {
    }

    private void e() {
        com.byazt.xh.jx.l("TNCManager", "resetTNCControlState");
        this.gu = 0;
        this.jl.clear();
        this.zy.clear();
        this.f18086k = 0;
        this.f18091v.clear();
        this.f18090u.clear();
    }

    private boolean hp(int i2) {
        return i2 >= 200 && i2 < 400;
    }

    private void q() {
        SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(this.eb, hp(), 0);
        this.f18088q = sharedPreferencesL.getInt("tnc_probe_cmd", 0);
        this.f18084e = sharedPreferencesL.getLong("tnc_probe_version", 19700101000L);
    }

    public jx a() {
        j jVar = this.f18089s;
        if (jVar != null) {
            return jVar.jx();
        }
        return null;
    }

    public Map<String, String> eb() {
        jx jxVarA = a();
        if (jxVarA != null) {
            return jxVarA.f18076j;
        }
        return null;
    }

    public l j() {
        return this.f18092w;
    }

    public boolean jx() {
        return this.f18085j;
    }

    public hp l() {
        return this.jx;
    }

    public j s() {
        return this.f18089s;
    }

    public void w() {
        this.vv.clear();
    }

    private boolean j(String str) {
        Map<String, String> mapEb = eb();
        if (mapEb == null) {
            return false;
        }
        String str2 = mapEb.get(str);
        if (TextUtils.isEmpty(str2) || this.vv.get(str2) == null || this.vv.get(str2).intValue() < 3) {
            return false;
        }
        com.byazt.xh.jx.l("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(str)));
        return true;
    }

    private void jx(String str) {
        if (!TextUtils.isEmpty(str) && this.vv.containsKey(str)) {
            this.vv.put(str, 0);
        }
    }

    private void l(String str) {
        Map<String, String> mapEb;
        if (TextUtils.isEmpty(str) || (mapEb = eb()) == null || !mapEb.containsValue(str)) {
            return;
        }
        if (this.vv.get(str) == null) {
            this.vv.put(str, 1);
        } else {
            this.vv.put(str, Integer.valueOf(this.vv.get(str).intValue() + 1));
        }
    }

    public String hp() {
        return "ttnet_tnc_config" + this.ec;
    }

    public void hp(boolean z2) {
        this.f18085j = z2;
    }

    public void hp(l lVar) {
        this.f18092w = lVar;
    }

    public synchronized void hp(Context context, boolean z2) {
        try {
            if (!this.f18083a) {
                if (context != null) {
                    this.eb = context.getApplicationContext();
                }
                this.xs = z2;
                this.f18089s = new j(context, z2, this.ec);
                if (z2) {
                    q();
                }
                com.byazt.xh.jx.l("TNCManager", "initTnc, isMainProc: " + z2 + " probeCmd: " + this.f18088q + " probeVersion: " + this.f18084e);
                this.jx = eb.hp().hp(this.ec, this.eb);
                this.f18083a = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2) {
        if (a() == null) {
            return;
        }
        com.byazt.xh.jx.l("TNCManager", "doUpdateRemote, ".concat(String.valueOf(z2)));
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (!z2 && this.f18087l + (r0.gu * 1000) > jElapsedRealtime) {
            com.byazt.xh.jx.l("TNCManager", "doUpdateRemote, time limit");
        } else {
            this.f18087l = jElapsedRealtime;
            eb.hp().hp(this.ec, this.eb).jx();
        }
    }

    public w(int i2) {
        this.ec = i2;
    }

    public String hp(String str) {
        String protocol;
        if (!TextUtils.isEmpty(str) && !str.contains("/network/get_network") && !str.contains("/get_domains/v4") && !str.contains("/ies/speed")) {
            String host = null;
            try {
                URL url = new URL(str);
                protocol = url.getProtocol();
                try {
                    host = url.getHost();
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                protocol = null;
            }
            if (!TextUtils.isEmpty(protocol) && (("http".equals(protocol) || "https".equals(protocol)) && !TextUtils.isEmpty(host))) {
                if (j(host)) {
                    com.byazt.xh.jx.l("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(host)));
                    return str;
                }
                Map<String, String> mapEb = eb();
                if (mapEb != null && mapEb.containsKey(host)) {
                    String str2 = mapEb.get(host);
                    if (!TextUtils.isEmpty(str2)) {
                        com.byazt.xh.jx.l("TNCManager", "handleHostMapping, match, origin: ".concat(str));
                        String str3 = protocol + "://" + host;
                        String str4 = protocol + "://" + str2;
                        if (str.startsWith(str3)) {
                            str = str.replaceFirst(str3, str4);
                        }
                        com.byazt.xh.jx.l("TNCManager", "handleHostMapping, target: ".concat(String.valueOf(str)));
                        return str;
                    }
                } else {
                    com.byazt.xh.jx.l("TNCManager", "handleHostMapping, nomatch: ".concat(String.valueOf(host)));
                }
            }
        }
        return str;
    }

    private boolean l(int i2) {
        if (i2 < 100 || i2 >= 1000) {
            return true;
        }
        jx jxVarA = a();
        return (jxVarA == null || TextUtils.isEmpty(jxVarA.zy) || !jxVarA.zy.contains(String.valueOf(i2))) ? false : true;
    }

    public synchronized void hp(k kVar, u uVar) {
        URL urlHp;
        if (kVar == null || uVar == null) {
            return;
        }
        if (this.xs) {
            if (com.byazt.xh.w.hp(this.eb)) {
                try {
                    urlHp = kVar.l().hp();
                } catch (Exception unused) {
                    urlHp = null;
                }
                if (urlHp == null) {
                    return;
                }
                String protocol = urlHp.getProtocol();
                String host = urlHp.getHost();
                String path = urlHp.getPath();
                String strHp = hp(kVar);
                int iJx = uVar.jx();
                if ("http".equals(protocol) || "https".equals(protocol)) {
                    if (TextUtils.isEmpty(strHp)) {
                        return;
                    }
                    com.byazt.xh.jx.l("TNCManager", "onResponse, url: " + protocol + "://" + host + "#" + strHp + "#" + iJx);
                    jx jxVarA = a();
                    if (jxVarA != null && jxVarA.f18078l) {
                        hp(uVar, host);
                    }
                    if (jxVarA == null) {
                        return;
                    }
                    com.byazt.xh.jx.l("TNCManager", "onResponse, url matched: " + protocol + "://" + host + "#" + strHp + "#" + iJx + " " + this.gu + "#" + this.jl.size() + "#" + this.zy.size() + " " + this.f18086k + "#" + this.f18091v.size() + "#" + this.f18090u.size());
                    if (iJx > 0) {
                        if (hp(iJx)) {
                            if (this.gu > 0 || this.f18086k > 0) {
                                e();
                            }
                            jx(host);
                            return;
                        }
                        if (!l(iJx)) {
                            this.f18086k++;
                            this.f18091v.put(path, 0);
                            this.f18090u.put(strHp, 0);
                            if (this.f18086k >= jxVarA.f18080s && this.f18091v.size() >= jxVarA.f18079q && this.f18090u.size() >= jxVarA.f18075e) {
                                com.byazt.xh.jx.l("TNCManager", "onResponse, url doUpdate: " + protocol + "://" + host + "#" + strHp + "#" + iJx);
                                hp(false, 0L);
                                e();
                            }
                            l(host);
                        }
                    }
                }
            }
        }
    }

    private String hp(k kVar) {
        if (kVar != null && kVar.l() != null && kVar.l().hp() != null) {
            try {
                return InetAddress.getByName(kVar.l().hp().getHost()).getHostAddress();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public synchronized void hp(k kVar, Exception exc) {
        URL urlHp;
        if (kVar != null) {
            if (kVar.l() != null && exc != null) {
                if (this.xs) {
                    if (com.byazt.xh.w.hp(this.eb)) {
                        try {
                            urlHp = kVar.l().hp();
                        } catch (Exception unused) {
                            urlHp = null;
                        }
                        if (urlHp == null) {
                            return;
                        }
                        String protocol = urlHp.getProtocol();
                        String host = urlHp.getHost();
                        String path = urlHp.getPath();
                        String strHp = hp(kVar);
                        if ("http".equals(protocol) || "https".equals(protocol)) {
                            jx jxVarA = a();
                            if (jxVarA == null) {
                                return;
                            }
                            com.byazt.xh.jx.l("TNCManager", "onError, url matched: " + protocol + "://" + host + "#" + strHp + "# " + this.gu + "#" + this.jl.size() + "#" + this.zy.size() + " " + this.f18086k + "#" + this.f18091v.size() + "#" + this.f18090u.size());
                            this.gu = this.gu + 1;
                            this.jl.put(path, 0);
                            this.zy.put(strHp, 0);
                            if (this.gu >= jxVarA.f18082w && this.jl.size() >= jxVarA.f18074a && this.zy.size() >= jxVarA.eb) {
                                com.byazt.xh.jx.l("TNCManager", "onError, url doUpate: " + protocol + "://" + host + "#" + strHp);
                                hp(false, 0L);
                                e();
                            }
                            l(host);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(com.byazt.uhg.u r12, java.lang.String r13) {
        /*
            r11 = this;
            if (r12 != 0) goto L4
            goto Lea
        L4:
            boolean r0 = r11.xs
            if (r0 != 0) goto La
            goto Lea
        La:
            java.lang.String r0 = "tnc-cmd"
            r1 = 0
            java.lang.String r12 = r12.hp(r0, r1)
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            java.lang.String r1 = "TNCManager"
            if (r0 == 0) goto L27
            java.lang.String r12 = "handleTncProbe, no probeProto, "
            java.lang.String r13 = java.lang.String.valueOf(r13)
            java.lang.String r12 = r12.concat(r13)
            com.byazt.xh.jx.l(r1, r12)
            return
        L27:
            java.lang.String r0 = "@"
            java.lang.String[] r12 = r12.split(r0)
            if (r12 == 0) goto Leb
            int r2 = r12.length
            r3 = 2
            if (r2 == r3) goto L35
            goto Leb
        L35:
            r2 = 1
            r3 = 0
            r5 = 0
            r6 = r12[r5]     // Catch: java.lang.Throwable -> L46
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L46
            r12 = r12[r2]     // Catch: java.lang.Throwable -> L47
            long r7 = java.lang.Long.parseLong(r12)     // Catch: java.lang.Throwable -> L47
            goto L55
        L46:
            r6 = r5
        L47:
            java.lang.String r12 = "handleTncProbe, probeProto except, "
            java.lang.String r7 = java.lang.String.valueOf(r13)
            java.lang.String r12 = r12.concat(r7)
            com.byazt.xh.jx.l(r1, r12)
            r7 = r3
        L55:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r9 = "handleTncProbe, local: "
            r12.<init>(r9)
            int r9 = r11.f18088q
            r12.append(r9)
            r12.append(r0)
            long r9 = r11.f18084e
            r12.append(r9)
            java.lang.String r9 = " svr: "
            r12.append(r9)
            r12.append(r6)
            r12.append(r0)
            r12.append(r7)
            java.lang.String r0 = " "
            r12.append(r0)
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            com.byazt.xh.jx.l(r1, r12)
            long r9 = r11.f18084e
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 > 0) goto L8d
            goto Lea
        L8d:
            r11.f18088q = r6
            r11.f18084e = r7
            android.content.Context r12 = r11.eb
            java.lang.String r9 = r11.hp()
            android.content.SharedPreferences r12 = com.byazt.rz.l.l(r12, r9, r5)
            android.content.SharedPreferences$Editor r12 = r12.edit()
            java.lang.String r5 = "tnc_probe_cmd"
            android.content.SharedPreferences$Editor r12 = r12.putInt(r5, r6)
            java.lang.String r5 = "tnc_probe_version"
            android.content.SharedPreferences$Editor r12 = r12.putLong(r5, r7)
            r12.apply()
            int r12 = r11.f18088q
            r5 = 10000(0x2710, float:1.4013E-41)
            if (r12 != r5) goto Lea
            com.byazt.aq.jx r12 = r11.a()
            if (r12 != 0) goto Lbb
            goto Lea
        Lbb:
            java.util.Random r5 = new java.util.Random
            long r6 = java.lang.System.currentTimeMillis()
            r5.<init>(r6)
            int r12 = r12.jl
            if (r12 <= 0) goto Ld0
            int r12 = r5.nextInt(r12)
            long r3 = (long) r12
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 * r5
        Ld0:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r5 = "handleTncProbe, updateConfig delay: "
            r12.<init>(r5)
            r12.append(r3)
            r12.append(r0)
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            com.byazt.xh.jx.l(r1, r12)
            r11.hp(r2, r3)
        Lea:
            return
        Leb:
            java.lang.String r12 = "handleTncProbe, probeProto err, "
            java.lang.String r13 = java.lang.String.valueOf(r13)
            java.lang.String r12 = r12.concat(r13)
            com.byazt.xh.jx.l(r1, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.aq.w.hp(com.byazt.uhg.u, java.lang.String):void");
    }

    private void hp(boolean z2, long j2) {
        if (this.hp.hasMessages(10000)) {
            return;
        }
        Message messageObtainMessage = this.hp.obtainMessage();
        messageObtainMessage.what = 10000;
        messageObtainMessage.arg1 = z2 ? 1 : 0;
        if (j2 > 0) {
            this.hp.sendMessageDelayed(messageObtainMessage, j2);
        } else {
            this.hp.sendMessage(messageObtainMessage);
        }
    }
}
