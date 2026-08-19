package com.byazt.ki;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes.dex */
public enum jx implements w {
    QUESTION("?", 0),
    COLON(":", 0),
    DOUBLE_AMP("&&", 1),
    DOUBLE_BAR("||", 1),
    EQ("==", 2),
    GT(">", 2),
    LT("<", 2),
    LT_EQ("<=", 2),
    GT_EQ(">=", 2),
    NOT_EQ("!=", 2),
    PLUS("+", 3),
    MINUS("-", 3),
    MULTI("*", 4),
    DIVISION(ServiceReference.DELIMITER, 4),
    MOD("%", 4);

    public final int ec;
    public final String vv;

    /* renamed from: u, reason: collision with root package name */
    public static final Map<String, jx> f22091u = new HashMap(128);
    public static final Set<jx> xs = new HashSet();

    static {
        for (jx jxVar : values()) {
            f22091u.put(jxVar.hp(), jxVar);
            xs.add(jxVar);
        }
    }

    jx(String str, int i2) {
        this.vv = str;
        this.ec = i2;
    }

    public static jx hp(String str) {
        return f22091u.get(str);
    }

    public int l() {
        return this.ec;
    }

    public static boolean hp(w wVar) {
        return wVar instanceof jx;
    }

    public String hp() {
        return this.vv;
    }
}
