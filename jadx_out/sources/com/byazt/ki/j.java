package com.byazt.ki;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum j implements w {
    LEFT_PAREN("("),
    RIGHT_PAREN(")"),
    LEFT_BRACKET("["),
    RIGHT_BRACKET("]"),
    COMMA(",");


    /* renamed from: a, reason: collision with root package name */
    public static final Map<String, j> f22079a;
    public final String eb;

    static {
        HashMap map = new HashMap(128);
        f22079a = map;
        for (j jVar : map.values()) {
            f22079a.put(jVar.hp(), jVar);
        }
    }

    j(String str) {
        this.eb = str;
    }

    public static boolean hp(w wVar) {
        return wVar instanceof j;
    }

    public String hp() {
        return this.eb;
    }
}
