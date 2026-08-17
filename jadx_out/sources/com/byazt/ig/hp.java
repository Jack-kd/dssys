package com.byazt.ig;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.fjm.RecyclerView;
import com.byazt.vi.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 7, 28})
/* loaded from: classes.dex */
public class hp extends RecyclerView.hp<w> {
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public final float f21060j;
    public final float jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<l> f21061l = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final List<w> f21062w = new ArrayList();

    public hp(Context context, float f2, float f3) {
        this.hp = context;
        this.jx = f2;
        this.f21060j = f3;
    }

    public void j() {
        Iterator<w> it = this.f21062w.iterator();
        while (it.hasNext()) {
            it.next().r();
        }
        this.f21062w.clear();
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public w hp(ViewGroup viewGroup, int i2) {
        w wVar = new w(a.jl(this.hp));
        this.f21062w.add(wVar);
        return wVar;
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public long l(int i2) {
        return i2;
    }

    public void hp(List<l> list) {
        this.f21061l.clear();
        this.f21061l.addAll(list);
        jx();
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public void hp(w wVar) {
        super.hp((hp) wVar);
        wVar.r();
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public void hp(w wVar, int i2) throws JSONException {
        List<l> list = this.f21061l;
        wVar.hp(list.get(i2 % list.size()), (int) this.jx, (int) this.f21060j);
    }

    @Override // com.byazt.fjm.RecyclerView.hp
    public int hp() {
        return this.f21061l.size();
    }
}
