package com.byazt.fy;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.pu.TTDownloadField;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.zn.dy;
import com.byazt.zn.ky;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 60, 54})
/* loaded from: classes2.dex */
public class a extends hp {
    public boolean hq;
    public volatile Map<String, Object> wv;

    public a(Context context, mp mpVar, String str, String str2) {
        super(context, mpVar, str, str2);
        this.hq = false;
    }

    private void n() {
        com.byazt.xci.w wVarV = this.jx.v();
        if (wVarV != null) {
            a().put("download_url", wVarV.l());
        }
        a().put("download_status_listener", this.cx);
        a().put("event_tag", this.f20222j);
        a().put("dialog_to_landing_page_convert", new com.byazt.qu.hp() { // from class: com.byazt.fy.a.1
            @Override // com.byazt.qu.hp
            public boolean hp(Map<String, Object> map) {
                a aVar = a.this;
                Context context = aVar.getContext();
                a aVar2 = a.this;
                return aVar.hp(context, aVar2.jx, aVar2.f20222j);
            }
        });
        a().put("download_popup_manager", s());
        a().put(TTDownloadField.TT_ACTIVITY, getContext());
        a().put("open_market_in_app", Boolean.valueOf(sz.ec(this.jx)));
        a().put("download_manager_hash_code", Integer.valueOf(hashCode()));
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public Map<String, Object> a() {
        if (this.wv == null) {
            this.wv = new HashMap();
        }
        return this.wv;
    }

    @Override // com.byazt.gog.jx
    public boolean eb() {
        return this.f20225n;
    }

    @Override // com.byazt.fy.hp
    public void ec() {
        if (TextUtils.isEmpty(this.ns)) {
            com.byazt.hy.jx.hp(this.f20222j, this.jx, (JSONObject) null, sz());
        } else {
            a().put("enable_update_download_model", Boolean.TRUE);
            a().put("download_url", this.ns);
            com.byazt.hy.jx.hp(this.ns, this.f20222j, this.jx, (JSONObject) null, sz());
        }
        com.byazt.hy.jx.hp(this.jx, sz(), false);
    }

    @Override // com.byazt.fy.hp
    public boolean gu() {
        return false;
    }

    @Override // com.byazt.fy.hp, com.byazt.pg.r.hp
    public void handleMsg(Message message) {
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public void hp(mp mpVar, boolean z2) throws JSONException {
        if (getContext() == null) {
            return;
        }
        hp(ky.cx(mpVar), z2);
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public boolean j() {
        Function<SparseArray<Object>, Object> function = this.vv;
        return function != null && com.byazt.hy.jx.hp(function, sz()) == 2;
    }

    @Override // com.byazt.fy.hp
    public boolean jx(JSONObject jSONObject, boolean z2) {
        return false;
    }

    @Override // com.byazt.gog.jx
    public void l(boolean z2) {
        a().put("is_open_market_intercept_for_dsp", Boolean.valueOf(z2));
    }

    public void s(boolean z2) {
        this.hq = z2;
    }

    @Override // com.byazt.fy.hp
    public synchronized void vv() {
        n();
        this.eb.set(true);
        if (this.vv != null) {
            this.vv.apply(com.byazt.wi.j.hp().hp(5).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz())).hp("downloadStatusChangeListener", this.cx).hp("marketStatusChangeListener", this.di)).l());
        }
    }

    @Override // com.byazt.gog.jx
    public void w() {
        mp mpVar = this.jx;
        if (mpVar != null) {
            com.byazt.rk.hp.j(mpVar.di());
        }
        if (this.f20224l == null) {
            return;
        }
        this.eb.set(false);
        Function<SparseArray<Object>, Object> function = this.vv;
        if (function != null) {
            function.apply(com.byazt.wi.j.hp().hp(8).hp(Void.class).hp(0, new dy().hp("force", Boolean.TRUE).hp("hashCode", Integer.valueOf(sz()))).l());
        }
        vv();
    }

    @Override // com.byazt.fy.hp
    public boolean xs() {
        return false;
    }

    @Override // com.byazt.fy.hp
    public synchronized void zy() {
        try {
            if (this.f20224l == null) {
                return;
            }
            if (this.vv != null && d.f21856j >= 6400 && !d.s()) {
                com.byazt.hy.jx.hp((com.byazt.ve.jx) null, sz());
            }
            AtomicBoolean atomicBoolean = this.eb;
            if (atomicBoolean != null && atomicBoolean.get()) {
                this.eb.set(false);
                if (this.vv != null) {
                    this.vv.apply(com.byazt.wi.j.hp().hp(4).hp(Void.class).hp(0, new dy().hp("hashCode", Integer.valueOf(sz()))).l());
                }
            }
            e();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public void jx(boolean z2) {
        this.sz = z2;
        a().put("is_click_button", Boolean.valueOf(z2));
    }

    @Override // com.byazt.fy.hp, com.byazt.gog.jx
    public void hp(int i2) {
        a().put("need_check_compliance", Integer.valueOf(i2));
    }

    @Override // com.byazt.gog.jx
    public void j(boolean z2) {
        this.f20225n = z2;
        a().put("has_show_dl_factors", Boolean.valueOf(z2));
    }

    @Override // com.byazt.fy.hp
    public void a(boolean z2) {
        a().put("convert_from_landing_page", Boolean.valueOf(z2));
    }

    @Override // com.byazt.gog.jx
    public void hp(JSONObject jSONObject, boolean z2) throws JSONException {
        ky.wv();
        HashMap map = new HashMap();
        map.put("material_meta", this.jx);
        map.put(g.f49337X, com.byazt.jz.sz.getContext());
        map.put("is_market_covert", Boolean.valueOf(j()));
        com.byazt.xci.w wVarV = this.jx.v();
        if (wVarV != null) {
            map.put("download_url", wVarV.l());
        }
        if (a() != null) {
            map.putAll(a());
        }
        map.put("download_status_listener", this.cx);
        map.put("event_tag", this.f20222j);
        map.put("landing_page_source", Integer.valueOf(ky.j(this.f20222j)));
        map.put("dialog_to_landing_page_convert", new com.byazt.qu.hp() { // from class: com.byazt.fy.a.2
            @Override // com.byazt.qu.hp
            public boolean hp(Map<String, Object> map2) {
                a aVar = a.this;
                Context context = aVar.getContext();
                a aVar2 = a.this;
                return aVar.hp(context, aVar2.jx, aVar2.f20222j);
            }
        });
        map.put("download_popup_manager", s());
        map.put(TTDownloadField.TT_ACTIVITY, getContext());
        map.put("open_market_in_app", Boolean.valueOf(sz.ec(this.jx)));
        map.putAll(com.byazt.mi.hp.hp().hp(this.jx.hashCode() + this.jx.ns()));
        map.put("convert_from_downloader", Boolean.TRUE);
        map.put("download_manager_hash_code", Integer.valueOf(sz()));
        map.put("is_feed_register_direct_download", Boolean.valueOf(z2));
        HashMap map2 = new HashMap();
        map.put("download_manager_hash_code", Integer.valueOf(sz()));
        HashMap map3 = new HashMap();
        if (this.hq) {
            com.byazt.rj.jx.hp("download", this.jx.ij(), map, (com.byazt.ot.w) null);
        } else {
            com.byazt.rj.jx.hp(this.jx, map2, "clickEvent", map, this.f20222j, map3, -1L);
        }
    }
}
