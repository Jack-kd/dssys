package com.byazt.lk;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.sii.eb;
import com.byazt.tn.j;
import com.byazt.zn.cx;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import com.volcengine.mobsecBiz.metasec.ml.PglMSConfig;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManager;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManagerUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 877, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f22623a = "";
    public static volatile hp hp;

    /* renamed from: q, reason: collision with root package name */
    public static volatile j f22624q;
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public final String f22625j;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public PglMSManager f22626l;

    /* renamed from: s, reason: collision with root package name */
    public volatile int f22627s;

    /* renamed from: w, reason: collision with root package name */
    public volatile String f22628w;

    private hp(String str) {
        this.f22627s = 99999;
        String strNs = s.u().ns();
        eb ebVarXs = s.u().xs();
        if (ebVarXs != null) {
            if (!ebVarXs.isCanUsePhoneState() || !ebVarXs.isCanUseWifiState() || !ebVarXs.isCanUseWriteExternal()) {
                this.f22627s = 290;
            }
            if (!ebVarXs.isCanUseAndroidId()) {
                this.f22627s = 290;
            }
        }
        this.f22628w = null;
        this.f22625j = strNs;
        this.jx = w(str);
    }

    public static hp hp() {
        return hp;
    }

    private static hp j(String str) {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp(str);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private boolean w(String str) {
        try {
            Context context = sz.getContext();
            PglMSConfig.Builder builder = new PglMSConfig.Builder("1371", this.f22625j, "THYFfhd167Y/Etj/JFI+OYhGnAsIhCvIXKQbbKuslfRMO6XQmCuZImqOyljyF6dQ900Hy8ecQzUcHu72ks7Xvvncqt7BZjf4VSth/OzZbJlDJqtayy2lcb5mqCQUzE5fIvFXAZkyxl+SRzGnzUojBcyqITZ3bGRvteMi+qu/15oKM3BWY0IDJ9Ry5FUGfzt+FyCqvZI8PFQNAzvZXcWHlJoRXydZUjUbtEy/AFUvusIO1HDx", this.f22627s);
            builder.addDataObserver(new PglITokenObserver() { // from class: com.byazt.lk.hp.1
                @Override // com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver
                public void onTokenLoaded(String str2) {
                    String unused = hp.f22623a = str2;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    com.byazt.lca.j.hp().gu(str2);
                }
            });
            if (!s.u().eb()) {
                builder.addAdvanceInfo("kOA1", "1");
            } else if (!s.u().e()) {
                builder.setOaid(str);
            }
            if (!s.u().j()) {
                builder.addAdvanceInfo("kS1", "1");
            }
            if (!s.u().gu()) {
                builder.addAdvanceInfo("kDisableBlueToothCollection", "1");
            }
            if (!s.u().zy()) {
                builder.addAdvanceInfo("kDisableIpCollection", "1");
            }
            eb ebVarXs = s.u().xs();
            if (ebVarXs != null && !ebVarXs.alist()) {
                builder.addAdvanceInfo("kDisableAppListCollection", "1");
                builder.addAdvanceInfo("kDisableImeListCollection", "1");
            }
            PglMSManagerUtils.init(context, builder.setDeviceID(this.f22628w).setClientType(1).build());
            PglMSManagerUtils.initToken("1371");
            jx();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void l(String str) {
        if (this.jx) {
            jx();
            PglMSManager pglMSManager = this.f22626l;
            if (pglMSManager != null) {
                pglMSManager.report(str);
            }
        }
    }

    private void jx() {
        if (this.f22626l == null) {
            this.f22626l = PglMSManagerUtils.get("1371");
        }
    }

    public void hp(String str) {
        if (this.jx) {
            jx();
            if (TextUtils.isEmpty(str) || str.equals(this.f22628w) || this.f22626l == null) {
                return;
            }
            this.f22628w = str;
            this.f22626l.setDeviceID(str);
        }
    }

    public static String l() {
        if (TextUtils.isEmpty(f22623a)) {
            f22623a = com.byazt.lca.j.hp().xs();
        }
        return f22623a;
    }

    public Map<String, String> hp(String str, byte[] bArr) {
        if (!this.jx) {
            return new HashMap();
        }
        jx();
        PglMSManager pglMSManager = this.f22626l;
        if (pglMSManager != null) {
            return pglMSManager.getFeatureHash(str, bArr);
        }
        return new HashMap();
    }

    public static void hp(j jVar) {
        f22624q = jVar;
        hp(true);
    }

    public static hp hp(boolean z2) {
        if (s.u().q()) {
            if (f22624q != null) {
                if (hp == null) {
                    return j(cx.jx(f22624q));
                }
                return hp;
            }
            if (z2) {
                return j("error");
            }
            return null;
        }
        return j(null);
    }
}
