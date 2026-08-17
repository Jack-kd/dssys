package com.meishu.sdk.core.utils;

import android.graphics.Bitmap;
import com.meishu.sdk.core.domain.HttpResponse;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class j1 implements x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k1 f31918a;

    public j1(k1 k1Var) {
        this.f31918a = k1Var;
    }

    @Override // com.meishu.sdk.core.utils.x
    public void a(HttpResponse<byte[]> httpResponse, Bitmap bitmap, Bitmap bitmap2) throws IOException {
        k1 k1Var = this.f31918a;
        k1Var.getClass();
        try {
            synchronized (k1Var.f31922b) {
                try {
                    x xVar = k1Var.f31921a;
                    if (xVar != null) {
                        xVar.a(httpResponse, bitmap, bitmap2);
                        k1Var.f31921a = null;
                    }
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.utils.x
    public void onFailure(@NotNull IOException iOException) {
        k1.a(this.f31918a, iOException);
    }
}
