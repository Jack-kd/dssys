package com.byazt.fib;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.byazt.xci.mp;
import com.byazt.yrp.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 54})
/* loaded from: classes2.dex */
public class a implements com.byazt.qu.hp {

    /* renamed from: a, reason: collision with root package name */
    public View f19737a;
    public Map<String, Object> eb;
    public com.byazt.qu.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19738j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f19739l;

    /* renamed from: q, reason: collision with root package name */
    public Map<String, Object> f19740q;

    /* renamed from: s, reason: collision with root package name */
    public q f19741s;

    /* renamed from: w, reason: collision with root package name */
    public int f19742w;

    public a(q qVar, Context context, String str, String str2, Map<String, Object> map) {
        this.f19741s = qVar;
        this.f19739l = context;
        this.jx = str;
        this.f19738j = str2;
        this.f19740q = map;
        l();
    }

    public static boolean hp(int i2) {
        switch (i2) {
            case 101:
            case 102:
            case 103:
            case 104:
                return true;
            default:
                return false;
        }
    }

    private mp jx() {
        return com.byazt.rj.jx.hp(this.f19741s, this.f19740q);
    }

    public void l(Map<String, Object> map) {
        this.eb = map;
    }

    private void jx(int i2) {
        com.byazt.rj.jx.hp(this.f19740q, i2 != 0 ? i2 != 1 ? i2 != 3 ? i2 != 4 ? com.byazt.ex.j.f19543j : com.byazt.ex.j.f19542a : com.byazt.ex.j.eb : com.byazt.ex.j.f19544w : com.byazt.ex.j.jx);
    }

    private void l() {
        q qVar = this.f19741s;
        if (qVar != null) {
            this.f19742w = qVar.w();
        } else {
            this.f19742w = -1;
        }
    }

    @Override // com.byazt.qu.hp
    public boolean hp(Map<String, Object> map) {
        boolean zHp = hp();
        l();
        if (zHp) {
            return true;
        }
        HashMap map2 = new HashMap(2);
        map2.put("event_tag", this.jx);
        if (!TextUtils.isEmpty(this.f19738j)) {
            map2.put("dpa_tag", this.f19738j);
        }
        map2.put("material_meta", jx());
        int iHp = com.byazt.yx.l.hp().hp(this.f19739l, this.f19741s, map2) & 255;
        jx(iHp);
        if (iHp == 0) {
            return true;
        }
        com.byazt.qu.hp hpVar = this.hp;
        return hpVar != null && hpVar.hp(map);
    }

    public void l(int i2) {
        this.f19742w = i2;
    }

    private boolean hp() {
        if (this.f19742w < 2) {
            return false;
        }
        HashMap map = new HashMap(2);
        if (hp(this.f19742w)) {
            map.put("live_saas_param_interaction_type", Integer.valueOf(this.f19742w));
        }
        if (this.f19740q.containsKey("saas_status_while_click")) {
            map.put("saas_status_while_click", this.f19740q.get("saas_status_while_click"));
        }
        map.put("event_tag", this.jx);
        String str = this.f19738j;
        if (str != null) {
            map.put("dpa_tag", str);
        }
        map.put("material_meta", jx());
        if (this.eb == null) {
            this.eb = new HashMap();
        }
        com.byazt.yx.l.hp().hp(this.f19737a, this.f19741s.gu(), map, this.eb);
        int iHp = com.byazt.yx.l.hp().hp(this.f19739l, this.f19741s, map);
        int i2 = iHp & 255;
        int i3 = (iHp & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (i3 > 0) {
            this.eb.put("click_saas_action", Integer.valueOf(i3));
        }
        return i2 == 0;
    }

    public void hp(View view) {
        this.f19737a = view;
    }
}
