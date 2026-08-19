package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public enum l {
    NEWS("news", 0),
    IMAGE("image", 1),
    VIDEO("video", 2),
    TOPIC("topic", 3),
    AD("ad", 4),
    HOTDOC("hotkey", 5),
    SMALLVIDEO("smallvideo", 6),
    RECALLNEWS("recallNews", 8),
    POLICETASK("policetask", 9);


    /* renamed from: j, reason: collision with root package name */
    String f11568j;

    /* renamed from: k, reason: collision with root package name */
    int f11569k;

    l(String str, int i2) {
        this.f11568j = str;
        this.f11569k = i2;
    }

    public String b() {
        return this.f11568j;
    }

    public int c() {
        return this.f11569k;
    }

    public static l b(String str) {
        for (l lVar : values()) {
            if (lVar != null && TextUtils.isEmpty(lVar.f11568j) && lVar.f11568j.equals(str)) {
                return lVar;
            }
        }
        return null;
    }
}
