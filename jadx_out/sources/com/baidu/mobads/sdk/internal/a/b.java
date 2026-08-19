package com.baidu.mobads.sdk.internal.a;

/* loaded from: classes2.dex */
public class b {
    public int a(Object[] objArr, int i2, int i3) {
        if (objArr != null && objArr.length > i2) {
            Object obj = objArr[i2];
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
        }
        return i3;
    }

    public Object a(Object[] objArr, int i2, Object obj) {
        Object obj2;
        return (objArr == null || objArr.length <= i2 || (obj2 = objArr[i2]) == null) ? obj : obj2;
    }
}
