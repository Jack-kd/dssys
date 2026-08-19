package com.beizi.fusion;

import com.beizi.fusion.g2;

/* renamed from: com.beizi.fusion.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC1132e implements g2.a {
    ASNP_AES("@/.D>XVX5zhOdwj8", "\u007f}{y<usqomkigeca");


    /* renamed from: a, reason: collision with root package name */
    private final String f13586a;

    /* renamed from: b, reason: collision with root package name */
    private final String f13587b;

    EnumC1132e(String str, String str2) {
        this.f13586a = str;
        this.f13587b = str2;
    }

    @Override // com.beizi.fusion.g2.a
    public String a() {
        return a(this.f13587b);
    }

    @Override // com.beizi.fusion.g2.a
    public String b() {
        return a(this.f13586a);
    }

    private String a(String str) {
        try {
            StringBuilder sb = new StringBuilder(str);
            sb.reverse();
            for (int i2 = 0; i2 < sb.length(); i2++) {
                sb.setCharAt(i2, (char) (sb.charAt(i2) - i2));
            }
            return sb.toString();
        } catch (Exception e2) {
            rm.a(e2);
            return "";
        }
    }
}
