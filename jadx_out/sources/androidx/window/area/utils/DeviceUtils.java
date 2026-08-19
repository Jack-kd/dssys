package androidx.window.area.utils;

import android.util.DisplayMetrics;
import androidx.annotation.RequiresApi;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.j;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(17)
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000eR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/window/area/utils/DeviceUtils;", "", "()V", "deviceList", "", "Landroidx/window/area/utils/DeviceMetrics;", "getRearDisplayMetrics", "Landroid/util/DisplayMetrics;", "manufacturer", "", "model", "getRearDisplayMetrics$window_release", "hasDeviceMetrics", "", "hasDeviceMetrics$window_release", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDeviceUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceUtils.kt\nandroidx/window/area/utils/DeviceUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1747#2,3:54\n288#2,2:57\n*S KotlinDebug\n*F\n+ 1 DeviceUtils.kt\nandroidx/window/area/utils/DeviceUtils\n*L\n40#1:54,3\n47#1:57,2\n*E\n"})
/* loaded from: classes.dex */
public final class DeviceUtils {

    @NotNull
    public static final DeviceUtils INSTANCE = new DeviceUtils();

    @NotNull
    private static final List<DeviceMetrics> deviceList;

    static {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.widthPixels = 1080;
        displayMetrics.heightPixels = 2092;
        displayMetrics.density = 2.625f;
        displayMetrics.densityDpi = 420;
        j jVar = j.f51397a;
        deviceList = p.e(new DeviceMetrics("google", "pixel fold", displayMetrics));
    }

    private DeviceUtils() {
    }

    @Nullable
    public final DisplayMetrics getRearDisplayMetrics$window_release(@NotNull String manufacturer, @NotNull String model) {
        Object next;
        kotlin.jvm.internal.j.e(manufacturer, "manufacturer");
        kotlin.jvm.internal.j.e(model, "model");
        Iterator<T> it = deviceList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            DeviceMetrics deviceMetrics = (DeviceMetrics) next;
            String manufacturer2 = deviceMetrics.getManufacturer();
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = manufacturer.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (kotlin.jvm.internal.j.a(manufacturer2, lowerCase)) {
                String model2 = deviceMetrics.getModel();
                kotlin.jvm.internal.j.d(US, "US");
                String lowerCase2 = model.toLowerCase(US);
                kotlin.jvm.internal.j.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                if (kotlin.jvm.internal.j.a(model2, lowerCase2)) {
                    break;
                }
            }
        }
        DeviceMetrics deviceMetrics2 = (DeviceMetrics) next;
        if (deviceMetrics2 != null) {
            return deviceMetrics2.getRearDisplayMetrics();
        }
        return null;
    }

    public final boolean hasDeviceMetrics$window_release(@NotNull String manufacturer, @NotNull String model) {
        kotlin.jvm.internal.j.e(manufacturer, "manufacturer");
        kotlin.jvm.internal.j.e(model, "model");
        List<DeviceMetrics> list = deviceList;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (DeviceMetrics deviceMetrics : list) {
            String manufacturer2 = deviceMetrics.getManufacturer();
            Locale US = Locale.US;
            kotlin.jvm.internal.j.d(US, "US");
            String lowerCase = manufacturer.toLowerCase(US);
            kotlin.jvm.internal.j.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (kotlin.jvm.internal.j.a(manufacturer2, lowerCase)) {
                String model2 = deviceMetrics.getModel();
                kotlin.jvm.internal.j.d(US, "US");
                String lowerCase2 = model.toLowerCase(US);
                kotlin.jvm.internal.j.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                if (kotlin.jvm.internal.j.a(model2, lowerCase2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
