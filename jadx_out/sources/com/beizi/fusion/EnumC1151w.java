package com.beizi.fusion;

import androidx.core.view.PointerIconCompat;
import com.qq.e.comm.constants.ErrorCode;

/* renamed from: com.beizi.fusion.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC1151w {
    INIT_DONE(1, "init success"),
    ALREADY_INIT(2, "already_init"),
    ERROR_CONFIG_PARSE_FAIL(1003, "config parse fail"),
    ERROR_CONFIG_RESPONSE_ERROR(1004, "config response error"),
    ERROR_CONFIG_APP_ID(1005, "config app id error"),
    ERROR_INIT_WITH_DIFFERENT_APP_ID(1006, "init with different app id"),
    ERROR_CONFIG_REQUEST_TIMEOUT(1007, "request timeout"),
    ERROR_UNEXPECTED(PointerIconCompat.TYPE_VERTICAL_TEXT, "error unexpected"),
    ERROR_SDK_SUPPORT_CLASS_MISSED(ErrorCode.PrivateError.LOAD_FAIL, "sdk support class missed, please check all necessary aar has implemented...");


    /* renamed from: a, reason: collision with root package name */
    private final int f16776a;

    /* renamed from: b, reason: collision with root package name */
    private final String f16777b;

    EnumC1151w(int i2, String str) {
        this.f16777b = str;
        this.f16776a = i2;
    }

    public int b() {
        return this.f16776a;
    }

    public String c() {
        return this.f16777b;
    }
}
