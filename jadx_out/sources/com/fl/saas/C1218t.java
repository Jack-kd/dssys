package com.fl.saas;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.Toast;
import com.fl.saas.adx.base.download.DownloadService;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.fl.saas.t, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1218t {

    /* renamed from: a, reason: collision with root package name */
    private static C1218t f30650a;

    /* renamed from: com.fl.saas.t$a */
    public class a implements T {
        public a() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
        }
    }

    public void a(Context context, C1188j c1188j, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        a(context, str, c1188j);
    }

    public static C1218t a() {
        if (f30650a == null) {
            synchronized (C1218t.class) {
                f30650a = new C1218t();
            }
        }
        return f30650a;
    }

    private void a(Context context, String str, C1188j c1188j) {
        if (AbstractC1221u.f30660a) {
            Toast.makeText(context.getApplicationContext(), "等待当前任务下载完成", 0).show();
            return;
        }
        Toast.makeText(context.getApplicationContext(), "开始下载...", 0).show();
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) DownloadService.class);
        intent.putExtra("url", str);
        intent.putExtra("pojo", c1188j);
        context.startService(intent);
    }

    private String a(String str, int i2, String str2) {
        return str.replaceAll("__ACTION_ID__", String.valueOf(i2));
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        return str.replaceAll("__CLICK_ID__", str2).replaceAll("__TS__", String.valueOf(System.currentTimeMillis()));
    }

    public void a(C1188j c1188j, int i2) {
        try {
            LogcatUtil.d("FLSDK-Download", "what:" + i2);
            a(c1188j, i2, "");
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void a(C1188j c1188j, int i2, String str) {
        List list;
        if (c1188j == null) {
            return;
        }
        LogcatUtil.i("上报" + i2);
        if (i2 == 4) {
            List list2 = c1188j.f30468U0;
            if (list2 != null) {
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    list2.set(i3, a((String) list2.get(i3), 5, str));
                }
                c1188j.f30468U0 = (ArrayList) list2;
            }
            list = c1188j.f30468U0;
        } else if (i2 == 5) {
            List list3 = c1188j.f30471V0;
            if (list3 != null) {
                for (int i4 = 0; i4 < list3.size(); i4++) {
                    list3.set(i4, a((String) list3.get(i4), 7, str));
                }
                c1188j.f30471V0 = (ArrayList) list3;
            }
            list = c1188j.f30471V0;
        } else if (i2 == 6) {
            List list4 = c1188j.f30474W0;
            if (list4 != null) {
                for (int i5 = 0; i5 < list4.size(); i5++) {
                    list4.set(i5, a((String) list4.get(i5), 6, str));
                }
                c1188j.f30474W0 = (ArrayList) list4;
            }
            list = c1188j.f30474W0;
        } else if (i2 != 7) {
            list = null;
        } else {
            List list5 = c1188j.f30477X0;
            if (list5 != null) {
                for (int i6 = 0; i6 < list5.size(); i6++) {
                    list5.set(i6, a((String) list5.get(i6), 7, str));
                }
                c1188j.f30477X0 = (ArrayList) list5;
            }
            list = c1188j.f30477X0;
        }
        if (list == null) {
            return;
        }
        for (int i7 = 0; i7 < list.size(); i7++) {
            C1166c.c().a(a((String) list.get(i7), c1188j.f30564z1), new a());
        }
    }
}
