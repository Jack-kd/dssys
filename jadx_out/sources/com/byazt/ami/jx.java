package com.byazt.ami;

import android.util.SparseArray;
import com.anythink.core.common.r.g;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1332, 30})
/* loaded from: classes2.dex */
public class jx implements com.byazt.vbz.jx {
    public String hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f18043l;

    public jx(String str) {
        this.hp = str;
    }

    private String hp() {
        String str = this.hp;
        str.getClass();
        switch (str) {
            case "sigmob":
                return "s";
            case "xiaomi":
                return "x";
            case "ks":
                return "k";
            case "gdt":
                return g.f7297a;
            case "baidu":
                return "b";
            case "unity":
                return "u";
            default:
                return null;
        }
    }

    @Override // com.byazt.vbz.jx
    public String getAdnName() {
        return this.hp;
    }

    @Override // com.byazt.vbz.jx
    public String getAdnVersion() {
        String str = this.hp;
        str.getClass();
        switch (str) {
            case "xiaomi":
                return com.byazt.vbz.w.s();
            case "ks":
                return com.byazt.vbz.w.a();
            case "gdt":
                return com.byazt.vbz.w.eb();
            default:
                return null;
        }
    }

    @Override // com.byazt.vbz.jx
    public String getAdnVersionListKey() {
        return hp() + "_adn_version";
    }

    @Override // com.byazt.vbz.jx
    public String getClassName() {
        return hp() + "_class_name";
    }

    @Override // com.byazt.vbz.jx
    public Function<SparseArray<Object>, Object> getInitBridge() {
        return w.l(this.hp);
    }

    @Override // com.byazt.vbz.jx
    public Function<SparseArray<Object>, Object> getManager() {
        return this.f18043l;
    }

    @Override // com.byazt.vbz.jx
    public String getUnSupportVersion() {
        return this.jx;
    }

    @Override // com.byazt.vbz.jx
    public void saveManager(Function<SparseArray<Object>, Object> function) {
        this.f18043l = function;
    }

    @Override // com.byazt.vbz.jx
    public void saveUnSupportVersion(String str) {
        this.jx = str;
    }
}
