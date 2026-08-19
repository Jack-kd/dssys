package com.byazt.jz;

import android.util.SparseArray;
import com.byazt.jz.b;
import com.byazt.xci.f;
import com.byazt.xci.mp;
import com.byazt.xci.ux;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface cx<T> {

    public interface hp {
        void hp(boolean z2, long j2, long j3);
    }

    public interface j {
        void hp(int i2, String str);

        void hp(b.jx jxVar);
    }

    public interface jx<T> {
        void hp(int i2, String str);

        void hp(T t2);
    }

    public interface l {
        void hp(int i2, String str, com.byazt.xci.l lVar);

        void hp(com.byazt.xci.hp hpVar, com.byazt.xci.l lVar);
    }

    public interface w {
        void hp(int i2, String str);

        void hp(b.j jVar);
    }

    com.byazt.gr.hp hp(int i2);

    com.byazt.xci.j hp(mp mpVar, String str);

    String hp(com.byazt.jt.l lVar);

    String hp(com.byazt.jt.l lVar, boolean z2, int i2);

    void hp(com.byazt.bl.l lVar, List<com.byazt.qt.a> list);

    void hp(com.byazt.jt.l lVar, f fVar, int i2, l lVar2);

    void hp(ux uxVar, String str, String str2, jx jxVar, int i2, long j2);

    void hp(String str);

    void hp(String str, String str2, hp hpVar);

    void hp(Map<String, Object> map, Function<SparseArray<Object>, Object> function);

    void hp(Function<SparseArray<Object>, Object> function);

    void hp(JSONObject jSONObject, j jVar);

    void hp(JSONObject jSONObject, jx<com.byazt.oyr.l> jxVar);

    void hp(JSONObject jSONObject, w wVar);

    void hp(JSONObject jSONObject, com.byazt.yek.l lVar);

    void jx(com.byazt.jt.l lVar, f fVar, int i2, l lVar2);

    void l(com.byazt.jt.l lVar, f fVar, int i2, l lVar2);
}
