package com.byazt.sw;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.baidu.mobads.sdk.internal.cm;
import com.byazt.dnb.s;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.oh.eb;
import com.byazt.pu.TTDownloadField;
import com.byazt.sw.hp;
import com.byazt.xci.mp;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, cm.f11334c, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: a, reason: collision with root package name */
    public int f25605a;
    public eb eb;

    /* renamed from: s, reason: collision with root package name */
    public boolean f25606s;

    private boolean e() {
        return this.f25606s;
    }

    private boolean gu() {
        mp mpVar = this.hp;
        return mpVar != null && mpVar.xv() == 1 && mp.jx(this.hp);
    }

    private boolean l(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof NativeVideoTsView) || view.getId() == 2114387961 || view.getId() == 2114387664 || view.getId() == 2114387957 || view.getId() == 2114387764 || view.getId() == 2114387686 || view.getId() == 2114387626) {
            return true;
        }
        if (view instanceof ViewGroup) {
            int i2 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i2 >= viewGroup.getChildCount()) {
                    break;
                }
                if (l(viewGroup.getChildAt(i2))) {
                    return true;
                }
                i2++;
            }
        }
        return false;
    }

    private boolean q() {
        if (this.hp == null || e() || !mp.jx(this.hp)) {
            return false;
        }
        if (this.f25605a == 0) {
            this.f25605a = ky.jl(this.hp);
        }
        w();
        eb();
        a();
        if (this.f25605a == 5 && gu() && eb() && !w() && !a()) {
            return false;
        }
        int i2 = this.f25605a;
        return i2 == 1 || i2 == 2 || i2 == 5;
    }

    private boolean s() {
        return q() && l(this.f24372j) && !this.f25604w.l();
    }

    public boolean a() {
        eb ebVar = this.eb;
        if (ebVar == null) {
            return false;
        }
        return ebVar.l();
    }

    public boolean eb() {
        mp mpVar = this.hp;
        if (mpVar == null) {
            return true;
        }
        int iA = sz.l().a(ky.zy(mpVar));
        if (iA == 1) {
            return vv.j(this.f24373l);
        }
        if (iA == 2) {
            return vv.w(this.f24373l) || vv.j(this.f24373l) || vv.a(this.f24373l);
        }
        if (iA != 3) {
            return iA != 5 || vv.j(this.f24373l) || vv.a(this.f24373l);
        }
        return false;
    }

    public boolean w() {
        eb ebVar = this.eb;
        if (ebVar == null) {
            return false;
        }
        return ebVar.hp();
    }

    @Override // com.byazt.sw.hp, com.byazt.pf.hp
    public int hp(Map<String, Object> map, com.byazt.pf.jx jxVar) throws JSONException {
        boolean z2;
        l(this.hp.q());
        jx();
        final hp.InterfaceC0368hp interfaceC0368hpHp = this.f25604w.hp();
        s.hp(new Runnable() { // from class: com.byazt.sw.jx.1
            @Override // java.lang.Runnable
            public void run() {
                hp.InterfaceC0368hp interfaceC0368hp = interfaceC0368hpHp;
                if (interfaceC0368hp != null) {
                    interfaceC0368hp.hp(jx.this.f24372j, jx.this.f25604w.jx());
                }
            }
        });
        Map<String, Object> mapS = this.f25604w.s();
        String strB = this.jx.b();
        if (TextUtils.isEmpty(strB)) {
            strB = "clickEvent";
        }
        String str = strB;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        mapS.put("click_from_uchain", 1);
        mapS.put("event_type", str);
        ky.wv();
        HashMap map2 = new HashMap();
        map2.put("material_meta", this.hp);
        map2.put("click_chain", jxVar);
        map2.put("dpa_tag", this.jx.cx());
        map2.put(g.f49337X, this.f24373l);
        map2.put("event_tag", this.f25604w.q());
        map2.put("landing_page_source", Integer.valueOf(this.f25604w.eb()));
        map2.put("view", this.f24372j);
        View view = this.f24372j;
        if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            z2 = this.f24372j instanceof Button ? true : text != null && (text.toString().contains("下载") || text.toString().contains("安装"));
        } else {
            z2 = false;
        }
        map2.put("handle_chain_data", map);
        com.byazt.gog.jx jxVarA = this.f25604w.a();
        if (jxVarA != null) {
            map2.put("download_adapter", jxVarA);
            map2.put("is_market_covert", Boolean.valueOf(jxVarA.j()));
            map2.put("has_show_dl_factors", Boolean.valueOf(jxVarA.eb()));
            Map<String, Object> mapA = jxVarA.a();
            if (mapA != null && !(mapA.get(TTDownloadField.TT_ACTIVITY) instanceof Activity) && com.byazt.xci.sz.ec(this.hp)) {
                try {
                    Activity activityHp = com.byazt.fy.l.hp(this.f24372j);
                    if (activityHp != null) {
                        jxVarA.hp(activityHp, true);
                        mapA.put(TTDownloadField.TT_ACTIVITY, activityHp);
                    }
                } catch (Exception e2) {
                    k.hp().hp("openMarketInApp", e2);
                }
            }
            if (mapA != null) {
                map2.putAll(mapA);
            }
        } else {
            map2.put("has_show_dl_factors", Boolean.FALSE);
        }
        map2.put("is_click_button", Boolean.valueOf(z2 || this.jx.j()));
        Map<String, Object> mapHp = com.byazt.mi.hp.hp().hp(this.hp.hashCode() + this.hp.ns());
        this.eb = (eb) n.jx(this.hp.jm(), eb.class);
        Object objRemove = mapHp.remove("is_express_ad");
        if (objRemove instanceof Boolean) {
            this.f25606s = ((Boolean) objRemove).booleanValue();
        }
        map2.put("is_video_lp", Boolean.valueOf(s()));
        map2.putAll(mapHp);
        Boolean bool = Boolean.FALSE;
        map2.put("convert_from_downloader", bool);
        map2.put("convert_from_landing_page", Boolean.valueOf(this.f25604w.l()));
        map2.put("pip_controller", this.f25604w.jl());
        map2.put("open_video_detail_page_direct", Boolean.valueOf(!s() && this.f25604w.j()));
        map2.put("is_from_video_layout", Boolean.valueOf(this.f25604w.e()));
        map2.put("is_open_web_page", bool);
        map2.put("is_feed_register_direct_download", Boolean.valueOf(this.jx.j()));
        com.byazt.rj.jx.hp(this.hp, mapS, str, map2, this.f25604w.q(), new HashMap(), jxVar.hp());
        j();
        return 0;
    }
}
