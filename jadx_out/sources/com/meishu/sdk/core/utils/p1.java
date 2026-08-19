package com.meishu.sdk.core.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.sigmob.sdk.base.mta.PointType;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes4.dex */
public class p1 {

    public class a extends com.meishu.sdk.core.safe.o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f31951a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f31952b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ long f31953c;

        public a(ViewGroup viewGroup, String str, long j2) {
            this.f31951a = viewGroup;
            this.f31952b = str;
            this.f31953c = j2;
        }

        @Override // com.meishu.sdk.core.safe.o
        public void safeOnClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            try {
                Class.forName("com.ms.test_tools.activity.MsTestToolActivity").getMethod("startSelf", Context.class, String.class, Long.TYPE).invoke(null, this.f31951a.getContext(), this.f31952b, Long.valueOf(this.f31953c));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(ViewGroup viewGroup, String str, long j2) {
        if (viewGroup == null || !AdSdk.isTestMode) {
            return;
        }
        float f2 = viewGroup.getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (60.0f * f2);
        int i3 = (int) (f2 * 30.0f);
        View button = new Button(viewGroup.getContext());
        button.setBackgroundResource(R.drawable.ms_pid_config);
        button.setOnClickListener(new a(viewGroup, str, j2));
        if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i3);
            layoutParams.addRule(12);
            layoutParams.leftMargin = 10;
            layoutParams.bottomMargin = i2;
            viewGroup.addView(button, layoutParams);
            return;
        }
        if (viewGroup instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i2, i3);
            layoutParams2.gravity = 80;
            layoutParams2.leftMargin = 10;
            layoutParams2.bottomMargin = i2;
            viewGroup.addView(button, layoutParams2);
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i3);
            layoutParams3.gravity = 80;
            layoutParams3.leftMargin = 10;
            layoutParams3.bottomMargin = i2;
            viewGroup.addView(button, layoutParams3);
        }
    }

    public static void b(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str : strArr) {
                        if (str != null && str.length() > 0) {
                            a0.a(AdSdk.getContext(), str.replace("__MS_EVENT__", "11").replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", "").replace("__ERROR_MESSAGE__", ""), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void c(String[] strArr, int i2, String str) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str2 : strArr) {
                        if (str2 != null && str2.length() > 0) {
                            a0.a(AdSdk.getContext(), str2.replace("__MS_EVENT__", PointType.SIGMOB_REPORT_TRACKING).replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", i0.b(String.valueOf(i2))).replace("__ERROR_MESSAGE__", i0.b(str)), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void b(String[] strArr, int i2, String str) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str2 : strArr) {
                        if (str2 != null && str2.length() > 0) {
                            a0.a(AdSdk.getContext(), str2.replace("__MS_EVENT__", "12").replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", i0.b(String.valueOf(i2))).replace("__ERROR_MESSAGE__", i0.b(str)), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String[] strArr, int i2, String str) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str2 : strArr) {
                        if (!TextUtils.isEmpty(str2)) {
                            a0.a(AdSdk.getContext(), str2.replace("__MS_EVENT__", PointType.SIGMOB_REPORT_TRACKING).replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", i0.b(String.valueOf(i2))).replace("__ERROR_MESSAGE__", i0.b(str)), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String[] strArr, int i2, int i3, String str) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str2 : strArr) {
                        if (str2 != null && str2.length() > 0) {
                            a0.a(AdSdk.getContext(), str2.replace("__MS_EVENT__", String.valueOf(i2)).replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", i0.b(String.valueOf(i3))).replace("__ERROR_MESSAGE__", i0.b(str)), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    for (String str : strArr) {
                        if (str != null && str.length() > 0) {
                            a0.a(AdSdk.getContext(), str.replace("__MS_EVENT__", "14").replace("__MS_EVENT_MSEC__", String.valueOf(System.currentTimeMillis())).replace("__ERROR_CODE__", "").replace("__ERROR_MESSAGE__", ""), new i());
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String[] strArr, String str, Throwable th) {
        try {
            a(strArr, 1000, 0, "{\"dp_link\":\"" + str + "\",\"error_msg\":\"" + th.getClass().getSimpleName() + "\"}");
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void a(String[] strArr, String str) {
        if (r0.f31978i > 0) {
            b(strArr, ErrorCodeUtil.RENDER_AD_STEP, str);
        }
    }

    public static boolean a(String str, int i2, int i3) {
        long jA = r.a().a("adg_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jA < i3 * 1000) {
            return false;
        }
        r rVarA = r.a();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_adp");
        return jCurrentTimeMillis - rVarA.a(sb.toString(), 0L) >= ((long) i2) * 1000;
    }
}
