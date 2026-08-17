package com.byazt.nra;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.xci.mp;
import com.byazt.yrp.q;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface j {
    boolean a();

    boolean a_(mp mpVar);

    String eb();

    int hp(Context context, mp mpVar, Map<String, Object> map);

    int hp(Context context, q qVar, Map<String, Object> map);

    int hp(com.byazt.cp.l lVar, boolean z2);

    int hp(q qVar, jx jxVar, String str, Map<String, Object> map);

    int hp(String str);

    void hp();

    void hp(com.byazt.tn.j jVar);

    void hp(String str, mp mpVar, long j2);

    void hp(String str, boolean z2);

    void hp(Function<SparseArray<Object>, Object> function);

    boolean hp(String str, int i2);

    void j();

    long jx();

    void jx(q qVar);

    int l();

    int l(mp mpVar);

    JSONObject s();

    int w();
}
