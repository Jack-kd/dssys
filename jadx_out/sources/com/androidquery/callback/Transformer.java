package com.androidquery.callback;

/* loaded from: classes.dex */
public interface Transformer {
    <T> T transform(String str, Class<T> cls, String str2, byte[] bArr, AjaxStatus ajaxStatus);
}
