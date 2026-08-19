package com.byazt.ey;

import android.content.Context;
import com.byazt.jdb.j;
import com.byazt.jz.EmptyView;
import com.byazt.jz.sz;
import com.byazt.xci.mp;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 39, 30})
/* loaded from: classes2.dex */
public class jx extends l {

    /* renamed from: a, reason: collision with root package name */
    public String f19558a;
    public Map<String, Object> eb;

    /* renamed from: q, reason: collision with root package name */
    public EmptyView f19559q;

    /* renamed from: s, reason: collision with root package name */
    public Double f19560s;

    /* renamed from: w, reason: collision with root package name */
    public hp f19561w;

    public interface hp {
        boolean hp();
    }

    public jx() {
    }

    public void hp(hp hpVar) {
        this.f19561w = hpVar;
    }

    public jx(mp mpVar, Context context) {
        this.hp = mpVar;
        this.f24373l = context;
        this.eb = new HashMap();
    }

    public void hp(String str) {
        this.f19558a = str;
    }

    public void hp(EmptyView emptyView) {
        this.f19559q = emptyView;
    }

    public void hp(Map<String, Object> map) {
        Map<String, Object> map2 = this.eb;
        if (map2 == null) {
            this.eb = map;
        } else {
            map2.putAll(map);
        }
    }

    public void hp(Double d2) {
        this.f19560s = d2;
    }

    @Override // com.byazt.ey.l, com.byazt.pf.hp
    public int hp(Map<String, Object> map, com.byazt.pf.jx jxVar) {
        hp hpVar;
        if (!sz.l().gi() || (hpVar = this.f19561w) == null || hpVar.hp()) {
            return 0;
        }
        EmptyView emptyView = this.f19559q;
        if (emptyView == null) {
            this.eb.put("show_send_type", 1);
            j.hp(this.hp, this.f19558a, this.eb, this.f19560s);
        } else {
            emptyView.hp("checkWhenClicked");
        }
        return 0;
    }
}
