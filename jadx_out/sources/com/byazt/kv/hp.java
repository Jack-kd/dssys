package com.byazt.kv;

@com.byazt.kj.hp(hp = {0, 1, 858, 28})
/* loaded from: classes.dex */
public class hp {
    public static boolean hp(char c2) {
        return c2 == ' ';
    }

    public static boolean j(char c2) {
        return '+' == c2 || '-' == c2 || '*' == c2 || '/' == c2 || '%' == c2 || '=' == c2 || '>' == c2 || '<' == c2 || '!' == c2 || '&' == c2 || '|' == c2 || '?' == c2 || ':' == c2;
    }

    public static boolean jx(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean l(char c2) {
        if (c2 < 'A' || c2 > 'Z') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }
}
