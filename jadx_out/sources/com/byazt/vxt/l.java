package com.byazt.vxt;

@com.byazt.kj.hp(hp = {0, 1, 2419, 34})
/* loaded from: classes3.dex */
public class l extends RuntimeException {
    public l(String str, Throwable th) {
        super("Unable to parse expression:".concat(String.valueOf(str)), th);
    }
}
