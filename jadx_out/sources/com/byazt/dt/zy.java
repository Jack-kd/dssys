package com.byazt.dt;

import android.graphics.Path;
import com.byazt.fj.ec;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1622, 302})
/* loaded from: classes2.dex */
public class zy extends hp<com.byazt.mo.k, Path> {

    /* renamed from: a, reason: collision with root package name */
    public List<ec> f19295a;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.mo.k f19296j;

    /* renamed from: w, reason: collision with root package name */
    public final Path f19297w;

    public zy(List<com.byazt.ch.hp<com.byazt.mo.k>> list) {
        super(list);
        this.f19296j = new com.byazt.mo.k();
        this.f19297w = new Path();
    }

    @Override // com.byazt.dt.hp
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Path hp(com.byazt.ch.hp<com.byazt.mo.k> hpVar, float f2) {
        this.f19296j.hp(hpVar.hp, hpVar.f18850l, f2);
        com.byazt.mo.k kVarHp = this.f19296j;
        List<ec> list = this.f19295a;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                kVarHp = this.f19295a.get(size).hp(kVarHp);
            }
        }
        com.byazt.ze.q.hp(kVarHp, this.f19297w);
        return this.f19297w;
    }

    public void hp(List<ec> list) {
        this.f19295a = list;
    }
}
