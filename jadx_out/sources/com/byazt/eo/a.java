package com.byazt.eo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.eo.w;
import com.byazt.fjm.RecyclerView;
import com.byazt.ql.q;
import com.byazt.xa.s;
import com.byazt.xs.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1298, 54})
/* loaded from: classes2.dex */
public class a extends com.byazt.xs.hp<RecyclerView> {
    public w ad;
    public w.jx db;
    public RecyclerView.q gb;

    /* renamed from: h, reason: collision with root package name */
    public l f19428h;
    public List<jx> pg;
    public Map<Integer, q.hp> xv;

    /* renamed from: z, reason: collision with root package name */
    public j f19429z;

    @com.byazt.kj.hp(hp = {0, 1, 1298, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp extends RecyclerView.s implements w.hp {
        public int hp;

        public hp(int i2) {
            this.hp = i2;
        }

        @Override // com.byazt.eo.w.hp
        public void P_() {
        }

        @Override // com.byazt.eo.w.hp
        public void Q_() {
        }

        @Override // com.byazt.fjm.RecyclerView.s
        public void hp(Rect rect, View view, RecyclerView recyclerView, RecyclerView.sz szVar) {
            super.hp(rect, view, recyclerView, szVar);
            int i2 = this.hp;
            rect.left = i2;
            rect.right = i2;
            rect.bottom = i2;
            if (recyclerView.a(view) == 0) {
                rect.top = this.hp;
            }
        }

        @Override // com.byazt.eo.w.hp
        public View jx() {
            return null;
        }
    }

    public interface l {
        void hp();

        void hp(int i2, int i3);

        void hp(int i2, View view, jx jxVar);

        void hp(RecyclerView recyclerView, int i2);
    }

    public a(Context context) {
        super(context);
        this.xv = new HashMap();
    }

    @Override // com.byazt.xs.jx
    public void hp(ViewGroup.LayoutParams layoutParams) {
    }

    @Override // com.byazt.xs.hp
    public hp.C0411hp s() {
        return null;
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        w wVar = new w(this.f27777l);
        this.ad = wVar;
        wVar.hp(this.df);
        this.ad.hp(this.ux);
        this.ad.hp(this.pi);
        this.ad.hp(this.f19429z);
        this.ad.hp(this.db);
        this.ad.hp(this.xv);
        this.ad.hp(this.pg);
        ((RecyclerView) this.f27788w).setLayoutManager(this.gb);
        ((RecyclerView) this.f27788w).setAdapter(this.ad);
        ((RecyclerView) this.f27788w).hp((RecyclerView.s) new hp((int) s.hp(this.f27777l, 10.0f)));
        ((RecyclerView) this.f27788w).hp((RecyclerView.k) new com.byazt.eo.l(new com.byazt.eo.hp()) { // from class: com.byazt.eo.a.1
            @Override // com.byazt.eo.l
            public void hp(int i2, int i3) {
                if (a.this.f19428h != null) {
                    a.this.f19428h.hp(i2, i3);
                }
            }

            @Override // com.byazt.eo.l
            public void l(RecyclerView recyclerView, int i2) {
                if (a.this.f19428h != null) {
                    a.this.f19428h.hp(recyclerView, i2);
                }
            }

            @Override // com.byazt.eo.l
            public void hp(int i2, View view) {
                if (a.this.f19428h == null || i2 < 0 || a.this.pg == null || i2 >= a.this.pg.size()) {
                    return;
                }
                a.this.f19428h.hp(i2, view, (jx) a.this.pg.get(i2));
            }

            @Override // com.byazt.eo.l
            public void hp() {
                if (a.this.f19428h != null) {
                    a.this.f19428h.hp();
                }
            }
        });
    }

    public void hp(j jVar) {
        this.f19429z = jVar;
    }

    @Override // com.byazt.xs.jx
    public View hp() {
        return new RecyclerView(this.f27777l);
    }

    public void hp(l lVar) {
        this.f19428h = lVar;
    }

    @Override // com.byazt.xs.jx
    public void hp(JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
    }

    public void hp(List<jx> list) {
        this.pg = list;
    }

    public void hp(int i2, Object obj) {
        w wVar = this.ad;
        if (wVar != null) {
            wVar.hp(obj);
            this.ad.hp(i2, obj);
        }
    }

    public void hp(w.j jVar) {
        this.ad.hp(jVar);
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        ((com.byazt.xs.hp) this).hp.add(jxVar);
        if (jxVar.nu() != null) {
            this.xv.put(Integer.valueOf(jxVar.nu().hashCode()), jxVar.wv());
        }
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        if (str.equals("layoutType") && !TextUtils.equals("grid", str2)) {
            this.gb = new com.byazt.fjm.w(this.f27777l);
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void l(List<jx> list) {
        if (this.ad == null || list == null || list.isEmpty()) {
            return;
        }
        if (this.pg == null) {
            this.pg = new ArrayList();
        }
        int size = this.pg.size();
        this.pg.addAll(list);
        this.ad.hp(list);
        this.ad.hp(size, this.pg.size());
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar, ViewGroup.LayoutParams layoutParams) {
        ((com.byazt.xs.hp) this).hp.add(jxVar);
        this.xv.put(Integer.valueOf(jxVar.nu().hashCode()), jxVar.wv());
    }
}
