package com.byazt.pf;

import android.content.Context;
import android.view.View;
import com.byazt.xci.e;
import com.byazt.xci.mp;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1474, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public mp hp;

    /* renamed from: j, reason: collision with root package name */
    public View f24372j;
    public e jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f24373l;

    public abstract int hp(Map<String, Object> map, jx jxVar);

    public void hp(e eVar) {
        this.jx = eVar;
    }

    public void hp(View view) {
        this.f24372j = view;
    }
}
