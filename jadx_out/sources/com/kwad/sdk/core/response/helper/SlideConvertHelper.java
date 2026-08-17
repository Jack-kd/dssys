package com.kwad.sdk.core.response.helper;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.service.ServiceProvider;

/* loaded from: classes4.dex */
public final class SlideConvertHelper {

    public enum SlideDirection {
        UP(0),
        DOWN(1),
        LEFT(2),
        RIGHT(3);

        public int value;

        SlideDirection(int i2) {
            this.value = i2;
        }
    }

    public static boolean a(@NonNull AdTemplate adTemplate, float f2, float f3, float f4, float f5) {
        AdInfo adInfoEO = e.eO(adTemplate);
        double d2 = f4 - f2;
        double d3 = f5 - f3;
        return d.eD(adTemplate) && ((float) com.kwad.sdk.c.a.a.px2dip(ServiceProvider.getContext(), (float) Math.sqrt(Math.pow(d2, 2.0d) + Math.pow(d3, 2.0d)))) > ((float) a.ar(adInfoEO)) && a.as(adInfoEO).charAt(((Math.abs(d2) > Math.abs(d3) ? 1 : (Math.abs(d2) == Math.abs(d3) ? 0 : -1)) >= 0 ? (d2 > 0.0d ? 1 : (d2 == 0.0d ? 0 : -1)) > 0 ? SlideDirection.RIGHT : SlideDirection.LEFT : (d3 > 0.0d ? 1 : (d3 == 0.0d ? 0 : -1)) > 0 ? SlideDirection.DOWN : SlideDirection.UP).value) == '1';
    }
}
