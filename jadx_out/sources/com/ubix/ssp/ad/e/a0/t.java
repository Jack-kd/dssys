package com.ubix.ssp.ad.e.a0;

import android.content.Context;
import android.util.Base64;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    Calendar f46478a = null;

    /* renamed from: b, reason: collision with root package name */
    int f46479b = 7;

    /* renamed from: c, reason: collision with root package name */
    int f46480c = 10;

    public int a(Context context) {
        File parentFile;
        File fileD = k.d(context);
        if (fileD == null || (parentFile = fileD.getParentFile()) == null) {
            return 5;
        }
        File parentFile2 = parentFile.getParentFile();
        if (parentFile2 == null || !parentFile2.exists()) {
            return 1;
        }
        String absolutePath = parentFile2.getAbsolutePath();
        if (!new File(absolutePath + ServiceReference.DELIMITER + new String(Base64.decode("Y29tLnRhb2Jhby50YW9iYW8=", 10))).exists()) {
            return 2;
        }
        File file = new File(absolutePath + new String(Base64.decode("L2NvbS50YW9iYW8udGFvYmFvL2ZpbGVzL3RkYXRhX3Y5Lw==", 10)));
        if (file.exists()) {
            return a(file.getAbsolutePath());
        }
        return 3;
    }

    private int a(String str) {
        Date dateA;
        for (int i2 = 0; i2 < this.f46479b; i2++) {
            if (this.f46478a == null) {
                Calendar calendar = Calendar.getInstance();
                this.f46478a = calendar;
                dateA = calendar.getTime();
            } else {
                dateA = a();
            }
            String strReplace = new String(Base64.decode("Y29tLnRhb2Jhby50YW9iYW9fe2RhdGV9LmRhdGEue251bX0=", 10)).replace("{date}", a(dateA));
            int i3 = 1;
            while (i3 < this.f46480c) {
                StringBuilder sb = new StringBuilder();
                int i4 = i3 + 1;
                sb.append(i3);
                sb.append("");
                File file = new File(str + ServiceReference.DELIMITER + strReplace.replace("{num}", sb.toString()));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("tblog=");
                sb2.append(file.getAbsolutePath());
                u.e(sb2.toString());
                if (file.exists()) {
                    return 0;
                }
                i3 = i4;
            }
        }
        return 4;
    }

    private String a(Date date) {
        return new SimpleDateFormat("yyyyMMdd").format(date);
    }

    private Date a() {
        this.f46478a.add(5, -1);
        return this.f46478a.getTime();
    }
}
