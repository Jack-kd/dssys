package com.kwad.components.ad.nativead.monitor;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.c.a;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.service.ServiceProvider;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class NativeAdMonitor {

    @KsJson
    public static class NativeReportMsg extends a implements Serializable {
        public static final long serialVersionUID = 478072683065430299L;
        public String containerName;
        public String containerType;
        public int height;
        public int state;
        public int width;

        public static NativeReportMsg obtain() {
            return new NativeReportMsg();
        }

        public NativeReportMsg setContainerName(String str) {
            this.containerName = str;
            return this;
        }

        public NativeReportMsg setContainerType(String str) {
            this.containerType = str;
            return this;
        }

        public NativeReportMsg setHeight(int i2) {
            this.height = i2;
            return this;
        }

        public NativeReportMsg setState(int i2) {
            this.state = i2;
            return this;
        }

        public NativeReportMsg setWidth(int i2) {
            this.width = i2;
            return this;
        }
    }

    public static void a(ViewGroup viewGroup, int i2) {
        int height;
        int width;
        String name = "";
        if (viewGroup != null) {
            try {
                name = viewGroup.getClass().getName();
                height = viewGroup.getHeight();
                width = viewGroup.getWidth();
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
                return;
            }
        } else {
            height = 0;
            width = 0;
        }
        if (viewGroup instanceof FrameLayout) {
            a("frameLayout", name, i2, height, width);
            return;
        }
        if (viewGroup instanceof LinearLayout) {
            a("linearLayout", name, i2, height, width);
        } else if (viewGroup instanceof RelativeLayout) {
            a("relativeLayout", name, i2, height, width);
        } else {
            a("unknown", name, i2, height, width);
        }
    }

    private static void c(a aVar) {
        try {
            c.d(d.In().m57do(ILoggerReporter.Category.APM_LOG).g(0.01d).Q("ad_sdk_native_container_monitor", "state").b(BusinessType.AD_NATIVE).A(aVar).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("reportNativeContainerLog", e2.toString());
        }
    }

    public static void fE() {
        c(NativeReportMsg.obtain().setState(6));
    }

    public static void fF() {
        c(NativeReportMsg.obtain().setState(7));
    }

    private static void a(String str, String str2, int i2, int i3, int i4) {
        c(NativeReportMsg.obtain().setContainerType(str).setContainerName(str2).setState(i2).setHeight(i3).setWidth(i4));
    }
}
