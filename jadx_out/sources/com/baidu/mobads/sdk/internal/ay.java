package com.baidu.mobads.sdk.internal;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public class ay extends ax {

    /* renamed from: b, reason: collision with root package name */
    public static final String f11075b = "logout";

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f11076c = {"#", "#", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "D", "I", ExifInterface.LONGITUDE_WEST, ExifInterface.LONGITUDE_EAST, "A"};

    @Override // com.baidu.mobads.sdk.internal.ax, com.baidu.mobads.sdk.internal.az.a
    @NonNull
    public String a() {
        return f11075b;
    }

    @Override // com.baidu.mobads.sdk.internal.ax, com.baidu.mobads.sdk.internal.az.a
    public void a(int i2, String str, String str2, Throwable th) {
        try {
            IXAdContainerFactory iXAdContainerFactoryC = aa.a().c();
            if (iXAdContainerFactoryC != null) {
                iXAdContainerFactoryC.getRemoteParam("debugLogout", (new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS", Locale.getDefault()).format(new Date()) + " " + f11076c[i2] + ServiceReference.DELIMITER + str + ": ") + "当前线程：" + Thread.currentThread().getName() + ";  调用位置：" + c() + ";  打印消息：" + str2 + "\n");
            }
        } catch (Throwable unused) {
        }
    }
}
