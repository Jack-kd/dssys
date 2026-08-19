package com.byazt.lca;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.uid.eb;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.o;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 957, 30})
/* loaded from: classes3.dex */
public final class jx {

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f22433l;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences f22435e;

    /* renamed from: s, reason: collision with root package name */
    public volatile boolean f22438s;
    public AtomicBoolean hp = new AtomicBoolean(false);
    public AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public AtomicInteger f22436j = new AtomicInteger(Integer.MAX_VALUE);

    /* renamed from: w, reason: collision with root package name */
    public AtomicInteger f22439w = new AtomicInteger(Integer.MAX_VALUE);

    /* renamed from: a, reason: collision with root package name */
    public volatile String f22434a = null;
    public AtomicInteger eb = new AtomicInteger(Integer.MAX_VALUE);

    /* renamed from: q, reason: collision with root package name */
    public AtomicInteger f22437q = new AtomicInteger(Integer.MAX_VALUE);
    public AtomicInteger gu = new AtomicInteger(Integer.MAX_VALUE);
    public AtomicInteger jl = new AtomicInteger(Integer.MAX_VALUE);
    public AtomicInteger zy = new AtomicInteger(Integer.MAX_VALUE);

    private jx() {
    }

    private boolean hp(int i2, int i3) {
        if (i3 == 0) {
            return false;
        }
        if (i3 == 1) {
            return true;
        }
        return i3 == 3 && i2 != 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        boolean zJx = jx();
        if (zJx) {
            com.byazt.ocx.j.j();
            j.hp();
            l.hp();
        }
        try {
            if (!com.byazt.wu.hp.jx()) {
                String strHp = hp("/api/ad/union/ping");
                if (!TextUtils.isEmpty(strHp)) {
                    com.byazt.ap.jx jxVarJx = com.byazt.cm.w.hp().l().jx();
                    jxVarJx.hp(strHp);
                    jxVarJx.hp(new com.byazt.mnb.hp() { // from class: com.byazt.lca.jx.2
                        @Override // com.byazt.mnb.hp
                        public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                        }

                        @Override // com.byazt.mnb.hp
                        public void hp(com.byazt.ap.j jVar, IOException iOException) {
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        if (zJx) {
            DeviceUtils.hp(3, false);
            hp.hp(sz.getContext(), 3);
            int i2 = com.byazt.jdb.j.hp;
            com.byazt.oz.l lVar = com.byazt.oz.l.hp;
            v();
            o.hp(259200000L);
        }
    }

    private void v() {
        com.byazt.sii.hp hpVar = new com.byazt.sii.hp();
        jl jlVar = (jl) com.byazt.ym.j.getService("device_info_new");
        DeviceUtils.hp(Boolean.valueOf(hpVar.hp(0)));
        DeviceUtils.l();
        jlVar.getSSID(Boolean.valueOf(hpVar.hp()));
        jlVar.getWifiMac(Boolean.valueOf(hpVar.hp()));
        jlVar.getImsi(Boolean.valueOf(hpVar.hp(1)));
        jlVar.getMacAddress(Boolean.valueOf(hpVar.hp(2)));
        jlVar.getMcc();
    }

    private SharedPreferences zy() {
        return com.byazt.rz.l.l(sz.getContext(), "sp_bidding_opt_libra", 0);
    }

    public int a() {
        try {
            if (this.eb.get() == Integer.MAX_VALUE) {
                if (this.hp.get()) {
                    this.eb.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_network_module", 1));
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.eb.set(this.f22435e.getInt("key_network_module", 1));
                }
            }
            return this.eb.get();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public boolean e() {
        try {
            if (this.gu.get() == Integer.MAX_VALUE) {
                if (this.hp.get()) {
                    this.gu.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "boost_save_config", 0));
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.gu.set(this.f22435e.getInt("boost_save_config", 0));
                }
            }
        } catch (Throwable unused) {
        }
        return this.gu.get() == 1;
    }

    public int eb() {
        try {
            if (this.f22437q.get() == Integer.MAX_VALUE) {
                if (this.hp.get()) {
                    this.f22437q.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_req_build_opt", 1));
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.f22437q.set(this.f22435e.getInt("key_req_build_opt", 1));
                }
            }
            return this.f22437q.get();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void gu() {
        try {
            com.byazt.fgx.l.hp("sp_bidding_opt_libra");
            SharedPreferences.Editor editorEdit = zy().edit();
            editorEdit.clear();
            editorEdit.apply();
            this.f22436j.set(0);
            this.f22439w.set(7);
            this.f22437q.set(0);
        } catch (Throwable unused) {
        }
    }

    public String j() {
        try {
            if (TextUtils.isEmpty(this.f22434a)) {
                if (this.hp.get()) {
                    this.f22434a = com.byazt.fgx.l.l("sp_bidding_opt_libra", "key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.f22434a = this.f22435e.getString("key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                }
            }
        } catch (Throwable unused) {
        }
        this.f22434a = TextUtils.isEmpty(this.f22434a) ? "api-access.pangolin-sdk-toutiao.com" : this.f22434a;
        return this.f22434a;
    }

    public void jl() {
        com.byazt.uid.w.hp(new eb("advance_init_rb") { // from class: com.byazt.lca.jx.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (jx.this.jx.get()) {
                        return;
                    }
                    jx.this.jx.set(true);
                    jx.this.k();
                } catch (Throwable unused) {
                }
            }
        }, 10);
    }

    public boolean jx() {
        try {
            if (this.f22436j.get() == Integer.MAX_VALUE) {
                if (this.hp.get()) {
                    this.f22436j.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_req_body_opt", 1));
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.f22436j.set(this.f22435e.getInt("key_req_body_opt", 1));
                }
            }
        } catch (Throwable unused) {
        }
        return this.f22436j.get() == 1;
    }

    public int q() {
        try {
            if (this.jl.get() == Integer.MAX_VALUE) {
                if (this.f22435e == null) {
                    this.f22435e = zy();
                }
                this.jl.set(this.f22435e.getInt("bst_pl_exec_conf", -1));
                if (this.jl.get() >= 0) {
                    return this.jl.get();
                }
                this.jl.set(this.f22435e.getInt("_use_pl_", 0));
            }
            return this.jl.get();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public int s() {
        if (this.zy.get() == Integer.MAX_VALUE) {
            this.zy.set(q());
        }
        return this.zy.get();
    }

    public int w() {
        try {
            if (this.f22439w.get() == Integer.MAX_VALUE) {
                if (this.hp.get()) {
                    this.f22439w.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_net_queue_limit", 7));
                } else {
                    if (this.f22435e == null) {
                        this.f22435e = zy();
                    }
                    this.f22439w.set(this.f22435e.getInt("key_net_queue_limit", 7));
                }
            }
            return this.f22439w.get();
        } catch (Throwable unused) {
            return 7;
        }
    }

    public boolean l() {
        if (!this.f22438s) {
            this.hp.set(com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_support_multiprocess", 2) == 1);
            this.f22438s = true;
        }
        return this.hp.get();
    }

    public static jx hp() {
        if (f22433l == null) {
            synchronized (jx.class) {
                try {
                    if (f22433l == null) {
                        f22433l = new jx();
                    }
                } finally {
                }
            }
        }
        return f22433l;
    }

    public void l(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("ads_url", "api-access.pangolin-sdk-toutiao.com");
            this.f22434a = strOptString;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
            if (jSONObjectOptJSONObject == null) {
                if (com.byazt.wu.hp.eb()) {
                    return;
                }
                hp("key_url_ads", strOptString);
                return;
            }
            int iOptInt = jSONObjectOptJSONObject.optInt("network_module", 1);
            int iOptInt2 = jSONObjectOptJSONObject.optInt("if_req_body_opt", 1);
            this.f22436j.set(iOptInt2);
            int iOptInt3 = jSONObjectOptJSONObject.optInt("net_queue_limit", 7);
            this.f22439w.set(iOptInt3);
            int iOptInt4 = jSONObjectOptJSONObject.optInt("req_build_opt", 0);
            this.f22437q.set(iOptInt4);
            boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("_use_pl_", false);
            String strOptString2 = jSONObjectOptJSONObject.optString("zeus_sp", "");
            int iOptInt5 = jSONObjectOptJSONObject.optInt("bst_pl_exec_conf", -1);
            int iOptInt6 = jSONObjectOptJSONObject.optInt("boost_save_config", 0);
            this.gu.set(iOptInt6);
            long jOptLong = jSONObjectOptJSONObject.optLong("bstlayer_init_delay_time", 0L);
            if (com.byazt.wu.hp.eb()) {
                return;
            }
            if (this.hp.get()) {
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_network_module", Integer.valueOf(iOptInt));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_req_body_opt", Integer.valueOf(iOptInt2));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_net_queue_limit", Integer.valueOf(iOptInt3));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_req_build_opt", Integer.valueOf(iOptInt4));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "_use_pl_", Integer.valueOf(zOptBoolean ? 1 : 0));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "bst_pl_exec_conf", Integer.valueOf(iOptInt5));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "key_url_ads", strOptString);
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "boost_save_config", Integer.valueOf(iOptInt6));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "bstlayer_init_delay_time", Long.valueOf(jOptLong));
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", "zeus_sp", strOptString2);
                return;
            }
            if (this.f22435e == null) {
                this.f22435e = zy();
            }
            SharedPreferences.Editor editorEdit = this.f22435e.edit();
            editorEdit.putInt("key_network_module", iOptInt);
            editorEdit.putInt("key_req_body_opt", iOptInt2);
            editorEdit.putInt("key_net_queue_limit", iOptInt3);
            editorEdit.putInt("key_req_build_opt", iOptInt4);
            editorEdit.putInt("_use_pl_", zOptBoolean ? 1 : 0);
            editorEdit.putInt("bst_pl_exec_conf", iOptInt5);
            editorEdit.putString("key_url_ads", strOptString);
            editorEdit.putInt("boost_save_config", iOptInt6);
            editorEdit.putLong("bstlayer_init_delay_time", jOptLong);
            editorEdit.putString("zeus_sp", strOptString2);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    public void hp(boolean z2) {
        this.hp.set(z2);
        if (z2) {
            hp("key_support_multiprocess", 1);
        }
    }

    public void hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.zy.set(jSONObject.optInt("bst_pl_exec_conf", -1));
        }
    }

    private void hp(String str, int i2) {
        try {
            if (this.hp.get()) {
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", str, Integer.valueOf(i2));
                return;
            }
            if (this.f22435e == null) {
                this.f22435e = zy();
            }
            SharedPreferences.Editor editorEdit = this.f22435e.edit();
            editorEdit.putInt(str, i2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    private void hp(String str, String str2) {
        try {
            if (this.hp.get()) {
                com.byazt.fgx.l.hp("sp_bidding_opt_libra", str, str2);
                return;
            }
            if (this.f22435e == null) {
                this.f22435e = zy();
            }
            SharedPreferences.Editor editorEdit = this.f22435e.edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public static String hp(String str) {
        String strJ = hp().j();
        if (TextUtils.isEmpty(strJ)) {
            return null;
        }
        return String.format("https://%s%s", strJ, str);
    }

    public boolean hp(int i2) {
        if (i2 <= 0) {
            return false;
        }
        return hp(i2, eb());
    }
}
