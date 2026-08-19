package h;

import android.content.Context;
import com.anythink.core.api.ATSDK;

/* renamed from: h.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1423a {

    /* renamed from: a, reason: collision with root package name */
    public static String f50718a;

    /* renamed from: b, reason: collision with root package name */
    public static String f50719b;

    public static void a(Context context, String str, String str2) {
        f50718a = str;
        ATSDK.init(context, str, str2);
    }
}
