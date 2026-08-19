package com.meishu.sdk.core.utils;

import java.io.IOException;

/* loaded from: classes4.dex */
public class k1 {

    /* renamed from: a, reason: collision with root package name */
    public x f31921a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f31922b = new Object();

    public static void a(k1 k1Var, IOException iOException) {
        k1Var.getClass();
        try {
            synchronized (k1Var.f31922b) {
                try {
                    x xVar = k1Var.f31921a;
                    if (xVar != null) {
                        xVar.onFailure(iOException);
                        k1Var.f31921a = null;
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
