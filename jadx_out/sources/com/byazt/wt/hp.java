package com.byazt.wt;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.text.TextUtils;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import com.anythink.core.common.res.image.c;
import com.byazt.fc.jx;
import com.byazt.fc.l;
import com.byazt.lca.j;
import com.byazt.xci.qh;
import com.byazt.ymw.e;
import com.byazt.zn.ec;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.kuaishou.weapon.p0.bg;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1288, 28})
/* loaded from: classes3.dex */
public class hp {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile hp hp;
    public static final List<String> zy = Arrays.asList(c.f7480b, "-10008", "103111", "105002", "-5", "-2", "-15", "-10", "-11");

    /* renamed from: j, reason: collision with root package name */
    public final qh f27130j;
    public final jx jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f27131l;

    /* renamed from: s, reason: collision with root package name */
    public String[] f27133s;

    /* renamed from: w, reason: collision with root package name */
    public final j f27134w;
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: q, reason: collision with root package name */
    public long f27132q = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f27129e = 0;
    public long gu = 0;
    public long jl = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f27128a = true;

    private hp(Context context) {
        this.f27131l = context;
        this.jx = jx.hp(context);
        j jVarHp = j.hp();
        this.f27134w = jVarHp;
        if (jVarHp == null) {
            this.f27130j = new qh("", "-1", "", "");
            return;
        }
        String strJx = jVarHp.jx("cr", 3300000L);
        if (TextUtils.isEmpty(strJx)) {
            this.f27130j = new qh("", "", "", "");
        } else {
            this.f27130j = new qh(jVarHp.jx("vd", hp(strJx)), jVarHp.jx(NotificationCompat.CATEGORY_ERROR, hp(strJx)), jVarHp.jx("tk", hp(strJx)), jVarHp.jx("cr", hp(strJx)));
        }
        jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.eb.set(false);
        this.jx.l();
    }

    private void jx() {
        j jVar = this.f27134w;
        if (jVar != null) {
            this.f27129e = jVar.l("uni_fir_ts", 0L);
            if (ky.hp(System.currentTimeMillis(), this.f27129e)) {
                this.gu = this.f27134w.l("uni_times", 0L);
                this.jl = this.f27134w.l("uni_ts", 0L);
            } else {
                this.gu = 0L;
                this.jl = 0L;
            }
        }
    }

    private boolean l() {
        j jVar = this.f27134w;
        if (jVar != null) {
            String strJx = jVar.jx("cr", 3300000L);
            if (!TextUtils.isEmpty(strJx) && !TextUtils.isEmpty(this.f27134w.jx("tk", hp(strJx)))) {
                return true;
            }
        }
        return false;
    }

    private long hp(String str) {
        String str2;
        switch (str.hashCode()) {
            case 49:
                str2 = "1";
                break;
            case 50:
                return str.equals("2") ? 50000L : 3300000L;
            case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                str2 = "3";
                break;
            default:
                return 3300000L;
        }
        str.equals(str2);
        return 3300000L;
    }

    public static hp hp(Context context) {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp(context);
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public qh hp() {
        if (!l() && this.f27128a) {
            if (!this.eb.compareAndSet(false, true)) {
                return this.f27130j;
            }
            e.hp().post(new Runnable() { // from class: com.byazt.wt.hp.1
                /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x00ea  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 302
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.wt.hp.AnonymousClass1.run():void");
                }
            });
            return this.f27130j;
        }
        return this.f27130j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0108 A[ADDED_TO_REGION, EDGE_INSN: B:78:0x0108->B:60:0x0108 BREAK  A[LOOP:0: B:3:0x0006->B:81:0x0006], REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(android.net.Network r15, java.util.List<java.lang.String> r16) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wt.hp.hp(android.net.Network, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(android.net.Network r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.wt.hp.hp(android.net.Network, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    private Pair<String, String> hp(Network network, String str, String str2, String str3) throws IOException {
        String string;
        JSONObject jSONObjectHp = l.hp(network, str, null);
        try {
            if (jSONObjectHp == null) {
                this.f27130j.hp(str3, "6", "", str2);
                return new Pair<>("6", "");
            }
            String string2 = jSONObjectHp.has("err_code") ? jSONObjectHp.getString("err_code") : "6";
            if (this.f27133s == null || System.currentTimeMillis() - this.f27132q > bg.f30873s) {
                this.f27133s = ec.l(com.byazt.el.hp.w());
                this.f27132q = System.currentTimeMillis();
            }
            String[] strArr = this.f27133s;
            if (strArr.length == 2 && !TextUtils.isEmpty(strArr[1])) {
                this.f27130j.hp(this.f27133s[1]);
            }
            if (jSONObjectHp.has("province")) {
                this.f27130j.l(jSONObjectHp.getString("province"));
            }
            if (!jSONObjectHp.has("code")) {
                string = "";
            } else {
                string2 = "0";
                string = jSONObjectHp.getString("code");
            }
            return new Pair<>(string2, string);
        } catch (Throwable unused) {
            return new Pair<>("6", "");
        }
    }
}
