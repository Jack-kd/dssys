package com.octopus.ad.d;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.widget.RegionClickView;

/* loaded from: classes4.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private Context f34037a;

    public j(Context context) {
        this.f34037a = context;
    }

    public View a(int i2, int i3, String str, boolean z2) {
        if (this.f34037a == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = "点击跳转至第三方应用或详情页";
        }
        com.octopus.ad.d.b.f.d("OctopusAd", "adWidthDp = " + i2 + ",adHeightDp = " + i3);
        float f2 = ((float) i2) / 360.0f;
        RegionClickView regionClickView = new RegionClickView(this.f34037a);
        regionClickView.a(str, f2);
        regionClickView.setLayoutParams(a(i2, i3, f2));
        return regionClickView;
    }

    @NonNull
    private ViewGroup.MarginLayoutParams a(int i2, int i3, float f2) throws NumberFormatException {
        int i4;
        int i5;
        int i6;
        int i7;
        float screenHeightDp = ViewUtil.getScreenHeightDp(this.f34037a);
        TextUtils.isEmpty("50%");
        String str = "80%";
        if (TextUtils.isEmpty("80%")) {
            com.octopus.ad.d.b.f.a("OctopusAd", "screenHeightDp = " + screenHeightDp + ",adHeightDp = " + i3);
            if (screenHeightDp > i3) {
                str = "63";
            } else {
                str = "188";
            }
        }
        String str2 = "250";
        if (TextUtils.isEmpty("250")) {
            str2 = "325";
        }
        String str3 = "40";
        if (TextUtils.isEmpty("40")) {
            str3 = "65";
        }
        float screenWidthDp = ViewUtil.getScreenWidthDp(this.f34037a);
        if ("50%".endsWith("%")) {
            i4 = (Integer.parseInt("50%".substring(0, "50%".indexOf("%"))) * i2) / 100;
        } else {
            i4 = Integer.parseInt("50%");
        }
        if (str.endsWith("%")) {
            i5 = (Integer.parseInt(str.substring(0, str.indexOf("%"))) * i3) / 100;
        } else {
            i5 = i3 - Integer.parseInt(str);
            com.octopus.ad.d.b.f.a("OctopusAd", "adHeightDp = " + i3 + ", centerYInt = " + i5);
        }
        boolean zEndsWith = str2.endsWith("%");
        int i8 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        if (zEndsWith) {
            int i9 = Integer.parseInt(str2.substring(0, str2.indexOf("%")));
            if (screenWidthDp >= 400.0f) {
                i6 = (i9 * MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL) / 100;
                i8 = i6;
            } else {
                i8 = (((int) screenWidthDp) * i9) / 100;
            }
        } else {
            i6 = Integer.parseInt(str2);
            if (i6 < 400) {
                i8 = i6;
            }
        }
        if (str3.endsWith("%")) {
            i7 = (Integer.parseInt(str3.substring(0, str3.indexOf("%"))) * i8) / 100;
        } else {
            i7 = Integer.parseInt(str3);
        }
        int iDip2px = ViewUtil.dip2px(this.f34037a, i8 * f2);
        int iDip2px2 = ViewUtil.dip2px(this.f34037a, i7 * f2);
        int iDip2px3 = ViewUtil.dip2px(this.f34037a, i4);
        int iDip2px4 = ViewUtil.dip2px(this.f34037a, i5);
        com.octopus.ad.d.b.f.a("OctopusAd", "widthInt = " + iDip2px + ",heightInt = " + iDip2px2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDip2px, iDip2px2);
        com.octopus.ad.d.b.f.a("OctopusAd", "centerYInt = " + iDip2px4 + ",centerXInt = " + iDip2px3 + ",adWidthDp = " + i2 + ",adHeightDp = " + i3);
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = iDip2px4 - (iDip2px2 / 2);
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = iDip2px3 - (iDip2px / 2);
        return layoutParams;
    }

    public void a() {
        this.f34037a = null;
    }
}
