package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 94})
/* loaded from: classes3.dex */
public class eb implements com.byazt.ii.hp {
    public final Object hp;

    public eb(String str) {
        if (str.equalsIgnoreCase("true")) {
            this.hp = Boolean.TRUE;
        } else if (str.equalsIgnoreCase("false")) {
            this.hp = Boolean.FALSE;
        } else {
            if (!str.equalsIgnoreCase("null")) {
                throw new IllegalArgumentException();
            }
            this.hp = null;
        }
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        return this.hp;
    }

    @Override // com.byazt.ii.hp
    public String l() {
        Object obj = this.hp;
        return obj != null ? obj.toString() : "NULL";
    }

    public String toString() {
        return "KeywordNode [keywordValue=" + this.hp + "]";
    }

    @Override // com.byazt.ii.hp
    public com.byazt.ki.w hp() {
        return com.byazt.ki.a.CONSTANT;
    }
}
