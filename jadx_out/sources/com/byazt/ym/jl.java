package com.byazt.ym;

import android.util.Pair;
import android.util.SparseArray;
import com.byazt.pg.dy;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 19})
@ATSKeep
/* loaded from: classes3.dex */
public class jl implements dy, Function {
    public HashMap<String, AtomicReference<Object>> hp = new HashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public dy f28062l = new com.byazt.gz.jx();

    private Pair<AtomicReference<Object>, Boolean> hp(String str) {
        AtomicReference<Object> atomicReference = this.hp.get(str);
        if (atomicReference != null) {
            return new Pair<>(atomicReference, Boolean.FALSE);
        }
        AtomicReference<Object> atomicReference2 = new AtomicReference<>();
        this.hp.put(str, atomicReference2);
        return new Pair<>(atomicReference2, Boolean.TRUE);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -3) {
            ats_setAtsField((SparseArray) sparseArray.get(1));
            return null;
        }
        if (iIntValue == -2) {
            return ats_getAtsField();
        }
        if (iIntValue == 1) {
            return get((String) sparseArray.get(1));
        }
        if (iIntValue == 2) {
            return Integer.valueOf(getInt((String) sparseArray.get(1)));
        }
        if (iIntValue == 3) {
            return Long.valueOf(getLong((String) sparseArray.get(1)));
        }
        if (iIntValue == 4) {
            return Boolean.valueOf(getBoolean((String) sparseArray.get(1)));
        }
        if (iIntValue != 5) {
            return null;
        }
        set((String) sparseArray.get(1), (String) sparseArray.get(2));
        return null;
    }

    public SparseArray ats_getAtsField() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(1, this.hp);
        return sparseArray;
    }

    public void ats_setAtsField(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (obj != null) {
            this.hp = (HashMap) obj;
        }
    }

    @Override // com.byazt.pg.dy
    public String get(String str) {
        Pair<AtomicReference<Object>, Boolean> pairHp = hp(str);
        if (((Boolean) pairHp.second).booleanValue()) {
            ((AtomicReference) pairHp.first).set(this.f28062l.get(str));
        }
        Object obj = ((AtomicReference) pairHp.first).get();
        return obj != null ? obj.toString() : "";
    }

    @Override // com.byazt.pg.dy
    public boolean getBoolean(String str) {
        Pair<AtomicReference<Object>, Boolean> pairHp = hp(str);
        if (((Boolean) pairHp.second).booleanValue()) {
            ((AtomicReference) pairHp.first).set(Boolean.valueOf(this.f28062l.getBoolean(str)));
        }
        Object obj = ((AtomicReference) pairHp.first).get();
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    @Override // com.byazt.pg.dy
    public int getInt(String str) {
        Pair<AtomicReference<Object>, Boolean> pairHp = hp(str);
        if (((Boolean) pairHp.second).booleanValue()) {
            ((AtomicReference) pairHp.first).set(Integer.valueOf(this.f28062l.getInt(str)));
        }
        Object obj = ((AtomicReference) pairHp.first).get();
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    @Override // com.byazt.pg.dy
    public long getLong(String str) {
        Pair<AtomicReference<Object>, Boolean> pairHp = hp(str);
        if (((Boolean) pairHp.second).booleanValue()) {
            ((AtomicReference) pairHp.first).set(Long.valueOf(this.f28062l.getLong(str)));
        }
        Object obj = ((AtomicReference) pairHp.first).get();
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        return 0L;
    }

    public void release() {
    }

    @Override // com.byazt.pg.dy
    public void set(String str, String str2) {
        this.f28062l.set(str, str2);
    }
}
