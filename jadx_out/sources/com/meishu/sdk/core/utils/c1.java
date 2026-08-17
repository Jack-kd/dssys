package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.utils.d1;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class c1 implements y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f31850a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d1.a f31851b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f31852c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ File f31853d;

    public c1(String str, d1.a aVar, File file, File file2) {
        this.f31850a = str;
        this.f31851b = aVar;
        this.f31852c = file;
        this.f31853d = file2;
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onFailure(@NotNull IOException iOException) {
        try {
            d1.f31877b.remove(this.f31850a);
        } catch (Exception unused) {
        }
        d1.a aVar = this.f31851b;
        if (aVar != null) {
            aVar.a(false);
        }
    }

    @Override // com.meishu.sdk.core.utils.y
    public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
        d1.a aVar;
        FileOutputStream fileOutputStream = null;
        boolean z2 = false;
        try {
            if (httpResponse.isSuccessful()) {
                byte[] responseBody = httpResponse.getResponseBody();
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.f31852c);
                try {
                    fileOutputStream2.write(responseBody);
                    fileOutputStream2.close();
                    if (this.f31852c.renameTo(this.f31853d)) {
                        z2 = true;
                    } else {
                        LogUtil.e("RewardTempUtil", "rename error");
                    }
                    fileOutputStream = fileOutputStream2;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        th.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        aVar = this.f31851b;
                        if (aVar == null) {
                            return;
                        }
                        aVar.a(z2);
                    } finally {
                    }
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused2) {
                }
            }
            aVar = this.f31851b;
            if (aVar == null) {
                return;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        aVar.a(z2);
    }
}
