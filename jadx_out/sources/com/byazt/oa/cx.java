package com.byazt.oa;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public enum cx {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    public static cx hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return PUBLIC;
        }
        String lowerCase = str.toLowerCase();
        return TextUtils.equals("protected", lowerCase) ? PROTECTED : TextUtils.equals("private", lowerCase) ? PRIVATE : PUBLIC;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this == PRIVATE ? "private" : this == PROTECTED ? "protected" : "public";
    }
}
